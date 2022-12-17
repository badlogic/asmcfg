import * as panzoom from "panzoom"

export function enablePanZoom(element: HTMLElement) {
    if ((element as any)["_asmcfg_zoom"]) {
        let oldZoom = (element as any)["_asmcfg_zoom"];
        oldZoom.dispose();
    }
    let zoom = panzoom.default(element, {
        autocenter: true,
    });
    (element as any)["_asmcfg_zoom"] = zoom;
}