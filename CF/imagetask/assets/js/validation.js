$(document).ready(function() {
    $('#fileUploadForm').on('submit', function(e) {
        e.preventDefault();
        var imagename=$("#imagename").val();
        var imagedesc=$("#imagedesc").val();
        var fileInput = $('#fileInput')[0];
        var errorText = $('#error-message');

        if(imagename==""){
            $("#error").text("please fill the field");
        }
        if(imagedesc==""){
            $("#error-desc").text("please fill the field");
        }
        if (fileInput.files.length === 0) {
            errorText.text('Please select a file.');
            return;
        }

        var allowedTypes = ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'];
        var maxFileSize = 1 * 1024 * 1024; // 5MB

        var file = fileInput.files[0];

        if (allowedTypes.indexOf(file.type) === -1) {
            errorText.text('Invalid file type. Allowed types: JPG, JPEG, PNG, GIF');
            return;
        }

        if (file.size > maxFileSize) {
            errorText.text('File size exceeds the maximum allowed size (5MB).');
            return;
        }

    
        this.submit();
    });
});



  
