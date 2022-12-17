import { AssemblyFunction } from "./types";
import * as graphlibDot from "graphlib-dot"
import * as dagreD3 from "dagre-d3"
import {select as d3Select} from "d3-selection";

export function renderDot(func: AssemblyFunction) {
    let dot = 'digraph {\n';
    for (let i = 0; i < func.nodes.length; i++) {
        let node = func.nodes[i];
        let lines;
        let label = node.label;
        if (label) {
            label = label + "\\n";
            lines = node.lines.map((l) => l.trim()).map((l) => "   " + l).join("\\n");
        } else {
            label = "";
            lines = node.lines.map((l) => l.trim()).join("\\n");
        }
        lines = lines.split('"').join('\\"');
        dot += node.id + ' [label="' + label + lines + '\\n"]\n';
    }

    for (let i = 0; i < func.edges.length; i++) {
        let edge = func.edges[i];
        let from = func.nodes[edge.from];
        let to = func.nodes[edge.to];
        let attributes = "";
        if (to.label) {
            if (from.lines.length > 0 && from.lines[from.lines.length - 1].indexOf(to.label) >= 0)
                attributes = '[color="darkgreen"]';
            else
                attributes = '[color="#aa0000"]';
        } else {
            attributes = '[color="#aa0000"]';
        }
        attributes = "";
        dot += edge.from + " -> " + edge.to + attributes + '\n';
    }
    dot += "\n}"
    return dot;
}

export async function renderSvg(func: AssemblyFunction, svgElement: SVGElement) {
    const dot = renderDot(func);
    let graph = await graphlibDot.read(dot);
    var render = new dagreD3.render;
    d3Select(svgElement.querySelector("g")).call(render, graph);
}