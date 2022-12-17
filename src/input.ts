import * as panzoom from "panzoom"
import { Node, AssemblyFunction } from "./types";

export function makeInteractive(element: HTMLElement, func: AssemblyFunction | null = null, clickCallback: (lineStart: number, lineEnd: number, node: Node, func: AssemblyFunction) => void = () => { }) {
    if ((element as any)["_asmcfg_zoom"]) {
        let oldZoom = (element as any)["_asmcfg_zoom"];
        oldZoom.dispose();
    }
    let zoom = panzoom.default(element, {
        autocenter: true,
    });
    (element as any)["_asmcfg_zoom"] = zoom;

    if (func && clickCallback) {
        let svgNodes = element.querySelectorAll(".node");
        for (let i = 0; i < svgNodes.length; i++) {
            let svgNode = svgNodes[i];
            let listener = () => {
                let nodeId = Number.parseInt((svgNode as any)["__data__"]);
                let node = func.nodes[nodeId];
                let start = node.lineStart + 1;
                let end = start + node.lines.length;
                clickCallback(start, end, node, func);
            }
            svgNode.addEventListener("click", listener);
            svgNode.addEventListener("touchdown", listener);
        }
    }
}