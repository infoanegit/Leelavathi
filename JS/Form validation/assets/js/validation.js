function validateform() {
    var name = document.myform.name.value;
    var name2 = document.myform.name2.value;
    var x = document.myform.email.value;
    var atposition = x.indexOf("@");
    var dotposition = x.lastIndexOf(".");
    var password = document.myform.password.value;
    var password2 = document.myform.password2.value;
    var option = document.getElementsByName('optradio');
    var cbox = document.forms["myform"]["accept"];
    // var selectedFile = document.getElementById('fileInput').files[0];
    // var allowedTypes = ['image/jpeg', 'image/png', 'application/pdf'];
    var age = document.myform.age.value;
    var bio = document.myform.Message.value;
    if (name == null || name == "") {
        document.getElementById('demo').innerHTML = "fill the first name";
    }
    else {
        document.getElementById('demo').innerHTML = "";
    }
    if (name2 == null || name2 == "") {
        document.getElementById('lname').innerHTML = "fill the last  name";
    }
    else {
        document.getElementById('lname').innerHTML = "";
    }
    if (x == "") {
        document.getElementById('last').innerHTML = "Please enter a email address";
    }
    else if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
        document.getElementById('last').innerHTML = "Please enter a valid e-mail address \n atpostion:" + atposition + "\n dotposition:" + dotposition;
    }
    else {
        document.getElementById('last').innerHTML = "";
    }
    if (password == "" || password.length < 6) {
        document.getElementById('pass').innerHTML = "Password must be at least 6 characters long.";
    }
    else {
        document.getElementById('pass').innerHTML = "";
    }
    if (password2 == "" || password != password2) {
        document.getElementById('pass2').innerHTML = "Password must be same";
    }
    else {
        document.getElementById('pass2').innerHTML = "";
    }
    if (!(option[0].checked || option[1].checked)) {
        document.getElementById('error2').innerHTML = "Please Select Your Gender";
    }
    else {
        document.getElementById('error2').innerHTML = "";
    }
    if (
        cbox[0].checked == false &&
        cbox[1].checked == false &&
        cbox[2].checked == false &&
        cbox[3].checked == false
    ) {
        document.getElementById('error').innerHTML = "Please Select Gender";
    }
    else {
        document.getElementById('error').innerHTML = "";
    }
    // if (!allowedTypes.includes(selectedFile.type)) {
    //     document.getElementById('ftype').innerHTML = 'Invalid file type. Please upload a JPEG, PNG, or PDF file.';
    //     document.getElementById('fileInput').value = '';
    // }
    if (age < 18 || age > 100 || age == "") {
        document.getElementById('demo2').innerHTML = "age must be greater than 18";
    }
    else {
        document.getElementById('demo2').innerHTML = "";
    }
    if (bio.length < 20) {
        document.getElementById('bio1').innerHTML = "please enter the characters greater than 20";
        return false;
    }
    else {
        document.getElementById('bio1').innerHTML = "";
    }

}