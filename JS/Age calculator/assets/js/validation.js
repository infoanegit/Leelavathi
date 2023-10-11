$(document).ready(function () {
    var weekday = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
    const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    $('#calculator').click(function () {
        var date = $('#datepicker').val();
        if (date == "") {
            alert("please enter your dateofbirth");
        } else {
            var d = new Date(date);
            var today = new Date();
            var age = today.getFullYear() - d.getFullYear();
            // var age = Math.floor((today - d) / (365.25 * 24 * 60 * 60 * 1000));

            if (today.getMonth() >= d.getMonth()) {
                var month = today.getMonth() - d.getMonth();
            }
            else {
                age--;
                var month = 12 + today.getMonth() - d.getMonth();
            }
            if (today.getDate() >= d.getDate()) {
                var days = today.getDate() - d.getDate();
            }
            else {
                month--
                var days = 31 + today.getDate() - d.getDate();
            }
            if (month < 0) {
                month = 11;
                age--;
            }
            $('#day').text("you were born on " + weekday[d.getDay()] + " " + months[d.getMonth()] + " " + [d.getDate() + 1] + " " + d.getFullYear());
            $('#age').text("you are" + age + "years " + month + "months " + days + "days old");
        }
    });
});