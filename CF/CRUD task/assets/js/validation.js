$(function() {
    $("form[name='loginform']").validate({

        rules: {
        firstname: "required",
        lastname: "required",
        email: {
            required: true,
            email: true,
        },
        gender:{
             required:true,
          },
        age:{
            required:true,
            number:true,
            min:18,
            max:100
        },
        location:{
            required:true,
        }

        },
        messages: {
        firstname: "Please enter your firstname",
        lastname: "Please enter your lastname",
        email: "Please enter a valid email address",
        gender:
        {
          required:"Please select a gender"
        },
        age:{
            required:"please enter the age"
        },
        location:{
            required:"please enter the location"
        }
        },
        errorPlacement: function(error, element) 
        {
            if ( element.is(":radio") ) 
            {
                error.appendTo( element.parents('.gender') );
            }
            else 
            { // This is the default behavior 
                error.insertAfter( element );
            }
         },
        submitHandler: function(form) {
        form.submit();
        }
    });
});
$(document).ready(function(){
    $(".reset-btn").click(function(){
        $("#basic-form").trigger("reset");
    });
});

