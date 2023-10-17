$(function() {
    $("form[name='loginform']").validate({
        rules:{
            username:"required",
            password:"required",
        },
        messages:{
            username:{
                required:"please enter the username",
            },
            password:{
                required:"please enter the username",
            },
        }
    });
});