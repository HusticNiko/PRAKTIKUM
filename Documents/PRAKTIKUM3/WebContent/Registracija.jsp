<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources\static\css\Style.css">
	<link rel="stylesheet" href="resources\static\css\NewFile.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<body>
	
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a href="Index.jsp"  class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		<!-- Float links to the right. Hide them on small screens -->
		

		<div class="w3-right w3-hide-small" id="">
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
			<a href="Kategorije.jsp" class="w3-bar-item w3-button">Kategorije</a>
			<a href="mojeZbirke.jsp" class="w3-bar-item w3-button">Moje zbirke</a>
			<a href="Sporocila.jsp" class="w3-bar-item w3-button">Sporočila</a>
			<a href="mojProfil.jsp" class="w3-bar-item w3-button">Moj profil</a>
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

<h2>${message}</h2>
<h3>${successmessage}</h3>


	<!-- Page content -->
	<div class="w3-content w3-padding" style="max-width: 300px">
		<!-- Prijava -->
		<div id="div-login" class="w3-container w3-padding-32">
			<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Prijava</h3>
			<form action="LoginRegister" method="post">
				<input class="w3-input w3-border" type="text" placeholder="Uporabniško ime"
					name="username"> <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Geslo" name="password">
				<button class="w3-button w3-section btn-carousel" type="submit" name="potrdi" value="Prijava" style="margin-left:50px">Prijavi se</button>
			</form>
			<p id="nreg" class="clickLink">Niste registrirani?</p>
		</div>
		<!-- Page content -->
	</div>
	<div class="w3-content w3-padding" style="max-width: 300px">
		<!-- Prijava -->
		<div id="div-reg" class="w3-container w3-padding-32" style="display:none">
			<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Registracija</h3>
			<form action="LoginRegister" method="post">
			<input class="w3-input w3-section w3-border" type="text"
					placeholder="Uporabniško ime" required name="username">
				<input class="w3-input w3-border" type="text" placeholder="Ime"
					required name="name" name="name"> <input
					class="w3-input w3-section w3-border" type="text"
					placeholder="Priimek" required name="surname"> <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Geslo" required name="password" > <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Ponovi geslo" required name="Password1"> <input
					class="w3-input w3-border" type="email" placeholder="E-mail"
					required name="Email"> <input
					class="w3-input w3-section w3-border" type="text"
					placeholder="Ulica" required name="ulica"> <input
					class="w3-input w3-section w3-border" type="text"
					placeholder="Mesto" required name="mesto"> <input
					class="w3-input w3-section w3-border" type="text"
					placeholder="Poštna številka" required name="City">

				<button class="w3-button w3-section btn-carousel" type="submit" name="potrdi" value="Registracija" style="margin-left:50px !important">Registriraj se</button>
			</form>
			<p id="nlog" class="clickLink">Imate že račun?</p>
		</div>
	</div>
	<script src="resources\static\js\javascript.js"></script>
</body>
</html>