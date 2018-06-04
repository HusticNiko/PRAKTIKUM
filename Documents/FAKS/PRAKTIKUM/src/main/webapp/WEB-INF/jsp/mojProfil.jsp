<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="Style.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<body>
	
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a href="Index"  class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		<!-- Float links to the right. Hide them on small screens -->
		<input class="w3-input w3-border" type="text" placeholder="Search.." id="searchbar">
			<form>
		<div class="multiselect">
			<div class="selectBox" onclick="showCheckboxes()">
				<select class="w3-select">
					<option>Select filter</option>
				</select>
				<div class="overSelect"></div>
			</div>
			<div id="checkboxes">
				<label for="one"><input type="checkbox" id="one"/> Iščem</label>
				<label for="two"><input type="checkbox" id="two"/> Ponujam</label>
				<label for="three"><input type="checkbox" id="three"/> Menjava</label>
				<label for="four"><input type="checkbox" id="four"/> Prodaja</label>
				<label>-Kategorije-</label>
				<label for="five"><input type="checkbox" id="five"/> FIFA</label>
				<label for="six"><input type="checkbox" id="six"/> NBA</label>
				<label for="seven"><input type="checkbox" id="seven"/> Harry Potter</label>
				<label for="eight"><input type="checkbox" id="eight"/> Pujsa Pepa</label>
				<label for="nine"><input type="checkbox" id="nine"/> Pokémon</label>
				<label for="ten"><input type="checkbox" id="ten"/> Digimon</label>
				<label for="eleven"><input type="checkbox" id="eleven"/> Garfield</label>
				<label for="twelve"><input type="checkbox" id="twelve"/> Star Wars</label>
			</div>
	
		</div>
		</form>
		<div class="w3-right w3-hide-small" style="margin-top:-40px">
		<a href="Kategorije" class="w3-bar-item w3-button">Kategorije</a>
		<a href="mojeZbirke" class="w3-bar-item w3-button">Moje zbirke</a>
		<a href="Sporocila" class="w3-bar-item w3-button">Sporočila</a>
		<a href="mojProfil"id="underline" class="w3-bar-item w3-button">Moj profil</a>
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
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Profil</h3>

			<p>Ime:</p>
			<p></p>
			<p>Priimek:</p>
			<p></p>
			<p>E-mail:</p>
			<p></p>
			<p>Država:</p>
			<p></p>
			<p>Mesto:</p>
			<p></p>
			<p>Poštna številka:</p>
			<p></p>
			<p>Spol:</p>
			<p></p>
		<br/>
		<h4>Spremeni geslo:</h4>
			<form action="/action_page.php" target="_blank">
				<input class="w3-input w3-section w3-border" type="password"
					placeholder="Staro geslo" required name="Password"> <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Novo geslo" required name="Password1"> <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Ponovi geslo" required name="Password2">
					<button class="w3-button w3-black w3-section" type="submit">
					<i class="fa fa-paper-plane"></i> Spremeni
				</button>
			</form>
		</div>
		<!-- Page content -->
	</div>
	
	<!-- Google Map -->
	<div id="googleMap" class="w3-grayscale" style="width:100%;height:450px;"></div>
	
	<!-- Footer -->
	<footer>

	</footer>
<script src="js/javascript.js"></script>
	</body>
	</html>