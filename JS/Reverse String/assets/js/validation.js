$(document).ready(function () {
    $("#stringsubmit").click(function () {
        var insert = $("#inputstring").val();
        var letters = /^[A-Z,a-z]/;
        var numbers = /\d/;
        if (!insert.match(letters)) {
            alert("Name can't be blank and string must be in a letters");
            return false;
        } else if (insert.match(numbers)) {
            alert("the string must be in numbers")
        }
        else {
            var rev_str = insert.split('').reverse().join('');
            $("#originalstring").text("Given String:" + insert);
            $("#reversestring").text("Reverse String:" + rev_str);
        }
    });
});
