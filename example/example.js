async function downloadExample(url) {
    let response = await fetch(url);
    if (!response.ok) throw new Error("Couldn't download example " + url);
    return await response.text();
};

async function init() {
    let code = await downloadExample("files/example-clang.s")
    let functions = asmcfg.parse(code);
    console.log(functions);
    console.log(asmcfg.renderDot(functions[0]));
    await asmcfg.renderSvg(functions[0], document.querySelector("svg"));
    asmcfg.enablePanZoom(document.querySelector("svg g"));
}

init();