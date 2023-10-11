$(document).ready(function () {
    let optradio = 0, flavour = 0, candles = 0, inscription = 0;
    $('.checkbox').change(function () {
        if (optradio = parseInt($('.checkbox:checked').val())) {
            let sum = optradio + flavour + candles + inscription;
            $("#total").text("$" + sum);
        }
        else {
            let sum = flavour + candles + inscription;
            $("#total").text("$" + sum);
        }
    });

    $("select.flavourselect").change(function () {
        if (flavour = parseInt($(("option:selected")).val())) {
            let sum = optradio + flavour + candles + inscription;
            $("#total").text("$" + sum);
        }
        else {
            let sum = optradio + candles + inscription;
            $("#total").text("$" + sum);
        }

    });

    $('.includecandles').change(function () {
        if (candles = parseInt($(('.includecandles:checked')).val())) {
            let sum = optradio + flavour + candles + inscription;
            $("#total").text("$" + sum);
        }
        else {
            candles = 0;
            let sum = optradio + flavour + inscription;
            $("#total").text("$" + sum);
        }
    });

    $('.includesubscription').change(function () {
        if ($(this).prop('checked') === true) {
            $("#inscription").removeAttr("disabled");
            var inscription = parseInt($('.includesubscription').val());
            let sum = optradio + flavour + candles + inscription;
            $('#total').text("$" + sum);
        }
        else {
            $("#inscription").attr("disabled", "disabled");
            let sum = optradio + flavour + candles;
            $('#total').text("$" + sum);
        }
    });

});