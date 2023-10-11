
$(document).ready(function () {
    $(document).on("click", ".mDiv", function (event) {
        event.stopImmediatePropagation();
        var color = $(this).css('background-color');
        var id = $(this).attr('id');
        if ($("#swap").attr('data-id') == "") {
            $("#swap").attr('data-id', id);
            $("#swap").attr("data-color", color);
        }
        else {
            $(this).css('background-color', $("#swap").attr("data-color"))
            var divId = $("#swap").attr("data-id")
            $(`#${divId}`).css("background-color", color);
            $("#swap").attr('data-id', "");
            $("#swap").attr("data-color", "");
        }
    });
});