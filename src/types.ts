export class Node {
    constructor(
        public id: number,
        public lineStart: number,
        public label: string | null,
        public lines: string[] = []
    ) { }
}

export class Edge {
    constructor(
        public from: number,
        public to: number
    ) {}
}

export class Label {
    constructor(
        public label: string,
        public node: Node
    ) {}
}

export class AssemblyFunction {
    public nextId: number = 0;
    public rootNode: Node;
    public labels: Label[] = [];
    public nodes: Node[] = [];
    public labeledNodes: Map<string, Node> = new Map<string, Node>();
    public edges: Edge[] = [];

    constructor(
        public name: string,
        public lineStart: number = 0,
        public lineEnd: number = 0,
    ) {
        this.rootNode = this.addNode(lineStart, name);
    }

    addNode(lineStart: number, label: string | null) {
        const node = new Node(this.nextId++, lineStart, label);
        this.nodes.push(node);
        if (label) {
            this.labels.push(new Label(label, node));
            this.labeledNodes.set(label, node);
        }
        return node;
    }
}