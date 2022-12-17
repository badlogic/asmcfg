import { isLabelLine, isUnconditionalJump } from "./parsers";
import { AssemblyFunction, Node, Edge } from "./types";

export function buildGraph(lines: string[], functions: AssemblyFunction[]) {
    for (const func of functions) {
        let node = func.rootNode;

        for (let lineIndex = func.lineStart; lineIndex < func.lineEnd; lineIndex++) {
            const line = lines[lineIndex];

            if (isLabelLine(line)) {
                const label = line.substr(0, line.indexOf(":")).trim();
                let nextNode = func.labeledNodes.get(label);
                if (!nextNode) throw new Error(`Can not find node with label ${label}`);

                const lastLine = node.lines[node.lines.length - 1];
                if (node.lines.length > 1 && isUnconditionalJump(lastLine)) {
                    if (lastLine.indexOf(label) > 0) {
                        func.edges.push(new Edge(node.id, nextNode.id));
                    }
                } else {
                    func.edges.push(new Edge(node.id, nextNode.id));
                }
                node = nextNode;
                continue;
            }

            node.lines.push(line);

            let foundLabel = null;
            for (const label of func.labels) {
                if (line.indexOf(label.label) > 0) {
                    if (foundLabel == null) {
                        foundLabel = label;
                    } else {
                        if (label.label.length > foundLabel.label.length) {
                            foundLabel = label;
                        }
                    }
                }
            }
            if (foundLabel) {
                func.edges.push({ from: node.id, to: foundLabel.node.id });
                if (lineIndex < func.lineEnd - 1 && !isLabelLine(lines[lineIndex + 1])) {
                    let nextNode = func.addNode(lineIndex, null)
                    func.edges.push(new Edge(node.id, nextNode.id));
                    node = nextNode;
                }
            }
        }
    }
}