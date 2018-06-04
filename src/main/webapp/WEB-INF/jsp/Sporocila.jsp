<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="Style.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
	<body>
	
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a href="Index"  class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		<!-- Float links to the right. Hide them on small screens -->
		

		<div class="w3-right w3-hide-small" style="width:1200px">
			<form>
				<select id="select-kategorije" class="w3-select w3-bar-item" name="selekcija">
					<option value="dgm">-Filter-</option>
					<option value="dgm">Digimon</option>
					<option value="fif">FIFA</option>
					<option value="grf">Garfield</option>
					<option value="hrp">Harry Potter</option>
					<option value="nba">NBA</option>
					<option value="pkm">Pokémon</option>
					<option value="pep">Pujsa Pepa</option>
					<option value="your value">Star Wars</option>
				</select> 
				<input class="w3-input w3-border w3-bar-item" type="text" placeholder="#search.." id="searchbar" style="margin-right:5px">
				<button id="search-btn" class="w3-bar-item w3-button"><i class="fas fa-search" style="margin-left:-3px"></i></button>
			</form>
			<a href="Kategorije" class="w3-bar-item w3-button">Kategorije</a>
			<a href="mojeZbirke" class="w3-bar-item w3-button">Moje zbirke</a>
			<a id="underline" href="Sporocila" class="w3-bar-item w3-button">Sporočila</a>
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
	<div class="w3-content w3-padding" style="max-width:600px">
		<!-- Prijava -->
		<div class="w3-container w3-padding-32" id="prijava">
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Moja sporočila</h3>

		<button class="w3-button w3-black w3-section" type="submit">
		<i class="fa fa-paper-plane"></i> ?
		</button>
		
		</div>
		<!-- Page content -->
	</div>
	<div class="w3-content w3-padding" style="max-width:600px">
		<!-- Registracija -->
		<div class="w3-container w3-padding-32" id="registracija">
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Pošiljanje</h3>
		
		<input class="w3-input w3-border" type="text" placeholder="@E-mail" required name="Email">
		<textarea class="w3-input w3-section w3-border" rows="4" cols="50" placeholder="Sporočilo.."></textarea>
		<button class="w3-button w3-black w3-section" type="submit">
		<i class="fa fa-paper-plane"></i> Pošlji
		</button>
		</div>

	</div>
	<script src="js/javascript.js"></script>
	</body>
	</html>