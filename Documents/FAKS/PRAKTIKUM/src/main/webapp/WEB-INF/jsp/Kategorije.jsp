<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="javascript.js"></script>
	<link rel="stylesheet" href="Style.css">
	<link rel="stylesheet" href="NewFile.css">
	<body>
	
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a href="Index" class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		
		<!-- Float links to the right. Hide them on small screens -->
		<input class="w3-input w3-border" type="text" placeholder="Search.." id="searchbar">
		<form>
		<div class="multiselect">
			<div class="selectBox" onclick="showCheckboxes()">
				<select>
					<option>Select filter</option>
				</select>
				<div class="overSelect"></div>
			</div>
			<div id="checkboxes">
				<label for="one"><input type="checkbox" id="one"/></label>
				<label for="two"><input type="checkbox" id="two"/></label>
				<label for="three"><input type="checkbox" id="three"/></label>
			</div>
	
		</div>
		</form>
		<div class="w3-right w3-hide-small" style="margin-top:-40px">
		<a href="Kategorije" id="underline" class="w3-bar-item w3-button">Kategorije</a>
		<a href="mojeZbirke" class="w3-bar-item w3-button">Moje zbirke</a>
		<a href="Sporocila" class="w3-bar-item w3-button">Sporočila</a>
		<a href="mojProfil" class="w3-bar-item w3-button">Moj profil</a>
		<a href="Registracija" class="w3-bar-item w3-button">Prijava/Registracija</a>
		</div>
		</div>
	</div>
	
	<!-- Header -->
	<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
		<img class="w3-image" src="/w3images/architect.jpg" alt="Architecture" width="1500" height="800">
		<div class="w3-display-middle w3-margin-top w3-center">
		<h1 class="w3-xxlarge w3-text-white"> <span class="w3-hide-small w3-text-light-grey">Architects</span></h1>
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
	
	
	<footer class="w3-center w3-black w3-padding-16">

	</footer>
	
	</body>
	</html>