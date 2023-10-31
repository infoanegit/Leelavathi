$(document).ready(function(){
    $("#loginform").on('submit',function(e){
        var empname=$("#empname").val();
        var empage=$("#empage").val();
        if(empname==""){
            alert("please enter the name of employee")
        }
        if(empage==""){
            alert("plaese enter the age");
        }
    });
});