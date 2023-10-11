var x = document.getElementById("myBtn");
window.addEventListener("click", (event) => {
    if (event.button == 0) {
        window.alert("Left click!");
    }
});
window.addEventListener('mousedown', (event) => {

    if (event.button == 1) {

        window.alert("center mouse click!")
    }
});
window.addEventListener("contextmenu", (event) => {
    if (event.button == 2) {
        window.alert("Right click!");
    }
});