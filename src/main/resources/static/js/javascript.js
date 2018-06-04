/**
 * 
 */
function mojDatum() {
	var d = new Date();
	document.getElementById("time").innerHTML = d.toUTCString();
}

function akcijaCountdown(){
	var x = setInterval(function(){
		var rezultat = 0;
		var countdownDate = new Date("Apr 30, 2018 15:37:25").getTime();

		var now = new Date().getTime();

		var distance = countdownDate - now;

		var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((distance % (1000 * 60)) / 1000);

		if (distance < 0) {
			clearInterval(x);
			document.getElementById("odstevanje").innerHTML= "EXPIRED";
		}
		else{
			document.getElementById("odstevanje").innerHTML=days + "d " + hours + "h "+ minutes + "m " + seconds + "s ";
		}	
	}, 1000);
}

function Prazno() {
	var name = document.getElementById("ime").value;
	var surname = document.forms["myForm"]["priimek"].value;
	var password = document.forms["myForm"]["geslo"].value;
	var password1 = document.forms["myForm"]["geslo1"].value;
	var email = document.forms["myForm"]["email"].value;


	if (name.length==0 || surname.length==0 || password.length==0 || password1.length==0 || email.length==0) {
		document.getElementById("alert-prazno").innerHTML="<div class='alert alert-danger alert-dismissible'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Izpolnite vsa polja!</div>";
		return false;
	}
}

function Prekratko() {
	var password = document.forms["myForm"]["geslo"].value;
	if (password.length < 6 && password.length !=0) {
		document.getElementById("alert-geslo").innerHTML="<div class='alert alert-danger alert-dismissible'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Geslo mora biti daljše kot 5 znakov!</div>";
		return false;
	}
}



function validacijaGesla() {
	var password = document.forms["myForm"]["geslo"].value;
	var password1 = document.forms["myForm"]["geslo1"].value;

	if (password !== password1) {
		document.getElementById("alert-geslo1").innerHTML="<div class='alert alert-danger alert-dismissible'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Geslo se mora ujemati!</div>";
		return false;
	}
}

function samoCrke(input){
	var regex = /[^a-z]/gi;
	input.value = input.value.replace(regex, "");	
}

function clanerina(){
	if(document.getElementById("f-clanerina").value == 1){
		document.getElementById("t-popust").innerHTML="10%";
		document.getElementById("t-dostava").innerHTML="Ne";
		document.getElementById("t-cena").innerHTML="10€";
	}
	else if(document.getElementById("f-clanerina").value == 6){
		document.getElementById("t-popust").innerHTML="20%";
		document.getElementById("t-dostava").innerHTML="Da";
		document.getElementById("t-cena").innerHTML="25€";
	}
	else if(document.getElementById("f-clanerina").value == 12){
		document.getElementById("t-popust").innerHTML="30%";
		document.getElementById("t-dostava").innerHTML="Da";
		document.getElementById("t-cena").innerHTML="50€";
	}
}

function igra(){
	var x = Math.floor((Math.random() * 20) + 1);
	alert(x)
	var msg = prompt("Ugibajte število med 1 in 20.", "");
	var stPoskusov = 2;

	for(var st=0;st<3;st++){

		if (msg == x) {
			alert("Bravo! Ugotovili ste število in pridobili 3% popusta.")
			break;
		}
		else if(msg<x && (stPoskusov-st)==2){
			msg = prompt("Število je večje kot ste ugibali. Imate še "+(stPoskusov-st)+" poskusa.", "");
		}
		else if(msg<x&& (stPoskusov-st)==1){
			msg = prompt("Število je večje kot ste ugibali. Imate še "+(stPoskusov-st)+" poskuse.", "");
		}
		else if(msg>x&& (stPoskusov-st)==2){
			msg = prompt("Število je manjše kot ste ugibali. Imate še "+(stPoskusov-st)+" poskusa.", "");
		}
		else if(msg>x&& (stPoskusov-st)==1){
			msg = prompt("Število je manjše kot ste ugibali. Imate še "+(stPoskusov-st)+" poskus.", "");
		}
	}	
}

function shranjevanjeArtiklov(){
	var naziv = document.forms["f-artikel"]["naziv"].value;
	var cena = document.forms["f-artikel"]["cena"].value;
	var kategorije = document.forms["f-artikel"]["kategorije"].value;
	var opis = document.forms["f-artikel"]["opis"].value;
	var zaloga = document.forms["f-artikel"]["zaloga"].value;

	var objekt={Naziv:naziv,Cena:cena,Kategorije:kategorije,Opis:opis,Zaloga:zaloga};

	alert("Naziv: "+objekt.Naziv+"\n Cena: "+objekt.Cena+"\n Kategorije: "+objekt.Kategorije+"\n Opis: "+objekt.Opis+"\n Zaloga: "+objekt.Zaloga);
}




