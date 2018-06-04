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
				<select id="select-kategorije" class="w3-select w3-bar-item" name="selekcija" style="margin-right:5px">
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
				<button class="w3-bar-item w3-button" style="border: 1px"><i class="fas fa-search"></i></button>
			</form>
			<a href="Kategorije" class="w3-bar-item w3-button">Kategorije</a>
			<a href="mojeZbirke" class="w3-bar-item w3-button">Moje zbirke</a>
			<a href="Sporocila" class="w3-bar-item w3-button">Sporočila</a>
			<a href="mojProfil" class="w3-bar-item w3-button">Moj profil</a>
			<a id="underline" href="Registracija" class="w3-bar-item w3-button">Prijava/Registracija</a>
		</div>
		</div>
	</div>
	
	<!-- Header -->
	<header class="w3-display-container w3-content w3-wide"
		style="max-width: 1500px;" id="home">
		<img class="w3-image" src="/w3images/architect.jpg" alt="Architecture"
			width="1500" height="800">
		<div class="w3-display-middle w3-margin-top w3-center"></div>
	</header>

	<!-- Page content -->
	<div class="w3-content w3-padding" style="max-width: 600px">
		<!-- Prijava -->
		<div class="w3-container w3-padding-32" id="contact">
			<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Prijava</h3>
			<form action="/action_page.php" target="_blank">
				<input class="w3-input w3-border" type="text" placeholder="Uporabniško ime"> <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Geslo" required name="Password">
				<button class="w3-button w3-black w3-section" type="submit">
					<i class="fa fa-paper-plane"></i> Prijavi se
				</button>
			</form>
		</div>
		<!-- Page content -->
	</div>
	<div class="w3-content w3-padding" style="max-width: 600px">
		<!-- Prijava -->
		<div class="w3-container w3-padding-32" id="contact">
			<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Registracija</h3>
			<form action="/action_page.php" target="_blank">
				<input class="w3-input w3-border" type="text"
					placeholder="Uporabnisko ime" required name="Uporabnik"><input
					class="w3-input w3-border" type="text" placeholder="Ime" required
					name="Name"> <input class="w3-input w3-section w3-border"
					type="text" placeholder="Priimek" required name="Surname">
				<input class="w3-input w3-section w3-border" type="password"
					placeholder="Geslo" required name="Password"> <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Ponovi geslo" required name="Password1"> <input
					class="w3-input w3-border" type="email" placeholder="E-mail"
					required name="Email"> <input
					class="w3-input w3-section w3-border" type="text"
					placeholder="Država" required name="Country"> <input
					class="w3-input w3-section w3-border" type="text"
					placeholder="Mesto" required name="City"> <input
					class="w3-input w3-section w3-border" type="text"
					placeholder="Poštna številka" required name="City">
				<div>
					<label>Spol:</label><br /> <label class="w3-radio"> <input
						type="radio" name="spol" value="moški">Moški
					</label><label class="w3-radio"><input type="radio" name="spol"
						value="Ženski" style="margin-left: 30px">Ženski </label>
				</div>
				<br />

				<button class="w3-button w3-black w3-section" type="submit">
					<i class="fa fa-paper-plane"></i> Registriraj se
				</button>
			</form>
		</div>
	</div>
<script src="js/javascript.js"></script>
</body>
</html>