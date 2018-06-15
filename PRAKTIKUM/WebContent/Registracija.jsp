<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources\static\css\Style.css">
	<link rel="stylesheet" href="resources\static\css\NewFile.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<body>
	
	<!-- Navbar (sit on top) -->
	<%@ include file = "Navbar.jsp" %>
	<br/><br/>


	<!-- Page content -->
	<div class="w3-content w3-padding" style="max-width: 300px">
	<h2>${message}</h2>
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
		<h4>${successmessage}</h4>
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