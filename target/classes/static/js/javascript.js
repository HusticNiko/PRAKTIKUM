/**
 * 
 */
/*
function prikazCene(){
	var checkboxElem = document.dodajanjeSlicic.prodaja;
	var inputCena = document.getElementById("cenaInp");
	if (checkboxElem.checked) {
		inputCena.style.display = "block";
	} else {
		inputCena.style.display = "none";
	}
}*/
function iskanjeSlicic(){
	var checkIskanje = document.vrstica.iskanje.value;
	var heading = document.getElementById("headingIskanje");
	if(checkIskanje == "izmenjava"){
		heading.innerHTML = "Izmenjava";
	}else if(checkIskanje == "prodaja"){
		heading.innerHTML = "Prodaja";
	}
}
//Get the modal
var modal = document.getElementById('myModal');
var modal2 = document.getElementById('myModal2');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");
var btn2 = document.getElementById("myBtn2");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
    modal.style.display = "block";
}
btn2.onclick = function() {
    modal2.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
    modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }else if (event.target == modal2) {
        modal2.style.display = "none";
    }
} 