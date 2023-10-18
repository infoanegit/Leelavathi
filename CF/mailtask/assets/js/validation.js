$(document).ready(function() {
    $('#loginform').on('submit', function(e) {
        var imagename=$("#username").val();
        var imagedesc=$("#usermail").val();
        var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        var fileInput = $('#fileInput')[0];
        var file = fileInput.files[0];
        var allowedTypes = ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'];
        var maxFileSize = 1 * 1024 * 1024; // 1MB
        var errorText = $('#error-message');
        var wishes=$('#bwishes').val();

        var isvalidate = true;
        if(imagename==""){
            isvalidate = false;
            $("#error").text("please fill the field");
            return false;
        }
        else{
            $("#error").text("");
        }
        if(imagedesc==""){
            isvalidate = false;
            $("#error-mail").text("please fill the field");
            return false;
        }
        else{
            $("#error-mail").text("");
        }
        if(!regex.test(imagedesc)){
            isvalidate = false;
            $("#error-mail").text("please enter valid mail address");
            return false;
        }
        else{
            $("#error-mail").text("");
        }
        if (fileInput.files.length === 0) {
            isvalidate = false;
            errorText.text('Please select a file.');

        }
        else if (allowedTypes.indexOf(file.type) === -1) {
            isvalidate = false;
            errorText.text('Invalid file type. Allowed types: JPG, JPEG, PNG, GIF');

        }
        else if (file.size > maxFileSize) {
            isvalidate = false;
            errorText.text('File size exceeds the maximum allowed size (1MB).');
            return false;

        }
        else{
            errorText.text('');
        }
        if(wishes==""){
            isvalidate = false;
            $('#error-text').text("please fill the field");
            return  false;

        }
        else{
            $('#error-text').text("");
        }

        
        if(isvalidate){
            return true;
        }
        

       
    });
});


