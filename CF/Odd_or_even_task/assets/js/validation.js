function myFunction(){
    var s=document.getElementById("number").value;
    if(s==""){
        alert("please enter the input");
    }
    else if(isNaN(s)){
        alert("please enter the valid input");
    }
}