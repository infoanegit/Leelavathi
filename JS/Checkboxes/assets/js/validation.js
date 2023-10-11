function selects() {
    var element = document.getElementsByName('option2');
    for (var i = 0; i < element.length; i++) {

        if (element[i].type == 'checkbox')
            element[i].checked = true;
    }
}
function deSelect() {
    var element = document.getElementsByName('option2');
    for (var i = 0; i < element.length; i++) {
        if (element[i].type == 'checkbox')
            element[i].checked = false;

    }
}
function myFunction() {
    var element = document.getElementsByName("option2");
    for (var i = 0; i < element.length; i++) {
        if (element[i].type == "checkbox") {
            if (element[i].checked == false) {
                element[i].checked = true;
            } else {
                if (element[i].checked == true) {
                    element[i].checked = false;
                }
            }
        }
    }
}