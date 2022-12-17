import { buildGraph } from "./graph";
import { AssemblyFunction, Label } from "./types";

export function isLabelLine(line: string) {
    if (line.indexOf(":") > 0) {
        for (let i = 0; i < line.indexOf(":"); i++) {
            if (line.charAt(i) == " ") return false;
        }
        return true;
    }
}

export function isUnconditionalJump(line: string) {
    line = line.trim();

    // List of ISA specific unconditional jumps.
    return line.indexOf("jmp ") == 0 || // x86_64
        line.indexOf("b ") == 0;     // ARM
}

export function parse(assemblyCode: string) {
    const lines = assemblyCode.split(/\r?\n/);
    let functions: AssemblyFunction[];

    // Heuristic to identify the assembly code format.
    if (assemblyCode.indexOf("PROC") >= 0 && assemblyCode.indexOf("ENDP") >= 0) {
        functions = parseMSVCAssembly(lines);
    } else {
        functions = parseClangGccAssembly(lines);
    }

    buildGraph(lines, functions)
    return functions;
}

export function parseMSVCAssembly(lines: string[]) {
    // In the MSVC assembly output, functions:
    //
    // * Start with <function-name> PROC
    // * End with <function-name> ENDP
    //
    const functions = [];
    let func: AssemblyFunction | null = null;
    for (let lineIndex = 0; lineIndex < lines.length; lineIndex++) {
        const line = lines[lineIndex];
        // Function start
        if (line.indexOf("PROC") > 0) {
            const functionName = line.substr(0, line.indexOf("PROC")).trim();
            func = new AssemblyFunction(functionName, lineIndex + 1);
            functions.push(func);

            // Function end
        } else if (line.indexOf(" ENDP") > 0) {
            if (!func) throw new Error("Found ENDP without corresponding PROC")
            func.lineEnd = lineIndex;
            func = null;

            // Label line
        } else if (isLabelLine(line)) {
            if (!func) throw new Error("Found a label outside of a function");
            const label = line.substr(0, line.indexOf(":")).trim();
            func.addNode(lineIndex, label);
        }
    }

    return functions;
}

export function parseClangGccAssembly(lines: string[]) {
    // FIXME deal with data labels

    // In the Clang and GCC assembly output, a label that does
    // not start with `.` is a function name.
    const functions = [];
    let func: AssemblyFunction | null = null;
    for (let lineIndex = 0; lineIndex < lines.length; lineIndex++) {
        const line = lines[lineIndex];
        if (isLabelLine(line)) {
            const label = line.substr(0, line.indexOf(":")).trim();

            // Label line
            if (label.charAt(0) == ".") {
                if (!func) throw new Error("Found label outside of a function");
                func.addNode(lineIndex, label);

            // Function start
            } else {
                // "Close" the function we parsed up until now
                if (func) func.lineEnd = lineIndex;

                // Create a new "current" function
                func = new AssemblyFunction(label, lineIndex)
                functions.push(func);
            }
        }
    }

    // Close the last function we parsed
    if (func && !func.lineEnd) func.lineEnd = lines.length;
    return functions;
}