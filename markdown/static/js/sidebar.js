function dahliaOS__matchSidebar() {
    const sidebar = document.querySelector(".dahliaOS-docs-sidebar.mdl-cell--hide-tablet");
    const checkbox = document.querySelector("#sidebar-hider");
    const checked = checkbox.checked ?? false;
    sidebar.setAttribute("data-docs-visible", checked ? "true" : "false");
}

document.addEventListener("load", () => {dahliaOS__matchSidebar()});