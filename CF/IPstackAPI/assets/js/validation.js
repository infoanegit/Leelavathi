$(document).ready(function(){
    $("#loginform").on('submit',function(e){
        var ipadd=$("#ipadd").val();
        if(ipadd==""){
            alert("please enter the ipaddress")
        }
    });
});