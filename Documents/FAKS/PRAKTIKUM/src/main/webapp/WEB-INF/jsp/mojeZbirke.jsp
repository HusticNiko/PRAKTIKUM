<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="Style.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<body>
	
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a href="Index" id="underline" class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
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
		<br/><br/><br/><br/>
		<div class="multiselect">
			<select id="izberiZbirko" class="w3-select">
				<option value="tema">...</option>
				<option value="fifa">FIFA</option>
				<option value="nba">NBA</option>
				<option value="pujsaPepa">Pujsa Pepa</option>
				<option value="garfield">Garfield</option>
			</select>
		</div>

					<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:90%; height: 50%">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" >
							<div class="item active">
								<a href=""> <img src="Slike/naslovna_fifa.jpg" style="width:90%; height: 50%"></a>
							</div>

							<div class="item">
								<a href=""> <img src="Slike/naslovna_nba.jpg" style="width:90%; height: 50%"></a>
							</div>

							<div class="item">
								<a href=""> <img src="Slike/Pokemon.jpg" style="width:90%; height: 50%"></a>
							</div>
							<div class="item">
								<a href=""> <img src="Slike/Star_Wars.jpg" style="width:90%; height: 50%"></a>
							</div>
						</div>


						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>

	
		<!-- About Section -->
		<div class="w3-container w3-padding-32" id="about">
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">About</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint
		occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
		laboris nisi ut aliquip ex ea commodo consequat.
		</p>
		</div>
	

	
		<!-- End page content -->
	</div>
	
	<footer class="w3-center w3-black w3-padding-16">

	</footer>
	
	<script src="js/javascript.js"></script>
	</body>
	</html>