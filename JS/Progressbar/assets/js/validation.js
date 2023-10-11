$(document).ready(function () {
    var progressBar = $(".progress-bar");
    var incrementBtn = $("#increment-btn");
    var decrementBtn = $("#decrement-btn");
    var currentWidth = 0;
    var incrementAmount = 10;
    var decrementAmount = 10;
    incrementBtn.click(function () {
        currentWidth += incrementAmount;
        $('#progress-value').text(currentWidth + "%");
        progressBar.css("width", currentWidth + "%");
        if (currentWidth == 100) {
            $("#increment-btn").prop("disabled", true);
        }
        else if (currentWidth > 0) {
            $("#decrement-btn").prop("disabled", false);
        }

    });
    decrementBtn.click(function () {
        currentWidth -= incrementAmount;
        $('#progress-value').text(currentWidth + "%");
        progressBar.css("width", currentWidth + "%");
        if (currentWidth == 0) {
            $("#decrement-btn").prop("disabled", true);
        }
        else if (currentWidth > 0) {
            $("#increment-btn").prop("disabled", false);
        }
    });
});