<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources\static\css\Style.css">
	<link rel="stylesheet" href="resources\static\css\NewFile.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
	<body>
	
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a href="Index.jsp"  class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		<!-- Float links to the right. Hide them on small screens -->
		

		<div class="w3-right w3-hide-small" id="navbar">
			<form name="forma-tab">
				<div class="w3-bar-item" id="ponujamIscem">
					<div>
						<input type="radio" value="izmenjava" name="iskanje" checked>&nbspIzmenjava
					</div>
					<div>
					<input type="radio" value="prodaja" name="iskanje">&nbspProdaja
					</div>
				</div>
				<select id="select-kategorije" class="w3-select w3-bar-item" name="selekcija">
					<option value="">-Kategorije-</option>
					<option value="dgm">Digimon</option>
					<option value="fif">FIFA</option>
					<option value="grf">Garfield</option>
					<option value="hrp">Harry Potter</option>
					<option value="nba">NBA</option>
					<option value="pkm">Pokémon</option>
					<option value="pep">Pujsa Pepa</option>
					<option value="stw">Star Wars</option>
				</select> 
				<input class="w3-input w3-border w3-bar-item" type="text" placeholder="#sličice.." id="searchbar" style="margin-right:5px">
				<button id="search-btn" class="w3-bar-item w3-button" style="margin-right:5px"><i  class="fas fa-search" style="margin-left:-4px"></i></button>
			</form>
			<a id="underline" href="Kategorije.jsp" class="w3-bar-item w3-button">Kategorije</a>
			<a href="mojeZbirke.jsp" class="w3-bar-item w3-button">Moje zbirke</a>
			<a href="Sporocila.jsp" class="w3-bar-item w3-button">Sporočila</a>
			<a href="mojProfil.jsp" class="w3-bar-item w3-button">Moj profil</a>
			<a href="Registracija.jsp" class="w3-bar-item w3-button">Prijava/Registracija</a>
		</div>
		</div>
	</div>
	
	<!-- Header -->
	<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
		<img class="w3-image" src="/w3images/architect.jpg" alt="Architecture" width="1500" height="800">
		<div class="w3-display-middle w3-margin-top w3-center">
		<h1 class="w3-xxlarge w3-text-white"> <span class="w3-hide-small w3-text-light-grey"></span></h1>
		</div>
	</header>
	
	<!-- Page content -->
	<div class="w3-content w3-padding" style="max-width:1564px">
	
		<!-- Project Section -->
		<div class="w3-container w3-padding-32" id="projects">
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Kategorije</h3>
		</div>
	
		<div class="w3-row-padding">
		<div class="w3-col l3 m6 w3-margin-bottom">
		<div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">FIFA</div>
		<img src="Slike/FIFA.jpg" alt="" style="width:100%; height:250px">
		</div>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">NBA</div>
		<img src="Slike/NBA.jpg" alt="" style="width:100%; height:250px">
		</div>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">Harry Potter</div>
		<img src="Slike/Harry_Potter.jpg" alt="" style="width:100%; height:250px">
		</div>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">Pujsa Pepa</div>
		<img src="Slike/Pujsa_Pepa.jpg" alt="" style="width:100%; height:250px">
		</div>
		</div>
		</div>
	
		<div class="w3-row-padding">
		<div class="w3-col l3 m6 w3-margin-bottom">
		<div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">Pokémon</div>
		<img src="Slike/Pokemon.jpg" alt="" style="width:100%; height:250px">
		</div>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">Digimon</div>
		<img src="Slike/Digimon.jpg" alt="" style="width:100%; height:250px">
		</div>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">Garfield</div>
		<img src="Slike/Garfield.jpg" alt="House" style="width:100%; height:250px">
		</div>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">Star Wars</div>
		<img src="Slike/Star_wars.jpg" style="width:100%; height:250px">
		</div>
		</div>
		</div>
	
	</div>
	
	
	<footer>

	</footer>
		<script src="resources\static\js\javascript.js"></script>
	</body>
	</html>