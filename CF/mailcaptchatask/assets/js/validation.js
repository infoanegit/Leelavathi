$(function() {
    $("form[name='loginform']").validate({

        rules: {
            username: "required",
            usermail: {
            required: true,
            email: true,
        },
        usercaptcha:{
            required:true,
        }
        },
        messages: {
        username: "Please enter your firstname",
        usermail:{
            required:"please enter a mail address",
            email:"please enter valid mail address"
        },
        usercaptcha:"please enter the captcha"
        },
        submitHandler: function(form) {
        form.submit();
        }
    });
});


