const myarr = [];
function addTo() {
    insert = document.getElementById("input-array").value;
    const myarr = insert.split(',');
    document.getElementById("givenarray").innerText = "Given array: " + myarr.toString();
    positionvalue = document.getElementById("position").value;
    replace = document.getElementById("value").value;
    let y = document.getElementById("position").value;
    let text = "";
    if (isNaN(y) || y < 1 || y > myarr.length) {
        text += "position of array should not be less than the length of array";
        alert(text);
    }
    else {
        myarr.splice(positionvalue - 1, 1, replace);
        document.getElementById("replace-value").innerText = "modified array: " + myarr.toString();
        return false;
    }
}
function myFunction() {
    document.getElementById("myForm").reset();
}