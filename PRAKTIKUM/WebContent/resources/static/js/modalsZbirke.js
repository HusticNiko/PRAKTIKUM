
function iskanjeSlicic(){
	var checkIskanje = document.vrstica.iskanje.value;
	var heading = document.getElementById("headingIskanje");
	if(checkIskanje == "izmenjava"){
		heading.innerHTML = "Izmenjava";
	}else if(checkIskanje == "prodaja"){
		heading.innerHTML = "Prodaja";
	}
}

var modal = document.getElementById('myModal');
var modal2 = document.getElementById('myModal2');
var btn = document.getElementById("myBtn");
var btn2 = document.getElementById("myBtn2");
var span = document.getElementsByClassName("close")[0];
var span2 = document.getElementsByClassName("close")[1];

btn.onclick = function() {
    modal.style.display = "block";
}
btn2.onclick = function() {
    modal2.style.display = "block";
}

span.onclick = function() {
    modal.style.display = "none";
}
span2.onclick = function() {
    modal2.style.display = "none";
}

window.onclick = function(event) {
	console.log("test")

    if (event.target == modal) {
        modal.style.display = "none";
    }
    if (event.target == modal2) {
        modal2.style.display = "none";
    }
	
}
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}