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

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}
window.onclick = function(event) {
	if (!event.target.matches('.dropbtn')) {

		var dropdowns = document.getElementsByClassName("dropdown-content");
		var i;
		for (i = 0; i < dropdowns.length; i++) {
			var openDropdown = dropdowns[i];
			if (openDropdown.classList.contains('show')) {
				openDropdown.classList.remove('show');
			}
		}
	}
}

$("#nreg").click(function(){
	$("#div-reg").css("display","initial");
	$("#div-login").css("display","none");
});
$("#nlog").click(function(){
	$("#div-reg").css("display","none");
	$("#div-login").css("display","initial");
});
function refreshPage(){
    window.location.reload();
} 

	
