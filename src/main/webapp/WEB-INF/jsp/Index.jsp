<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="Style.css">
	<link rel="stylesheet" href="NewFile.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
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
		<a id="underline" href="Index"  class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		<!-- Float links to the right. Hide them on small screens -->
		

		<div class="w3-right w3-hide-small" style="width:1400px">
			<form name="forma-tab">
				<div class="w3-bar-item" id="ponujamIscem">
					<div style="margin-top:-7px">
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
				<button id="search-btn" class="w3-bar-item w3-button" style="margin-right:5px"><i class="fas fa-search" style="margin-left:-4px"></i></button>
			</form>
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
		<h1 class="w3-xxlarge w3-text-white"> <span class="w3-hide-small w3-text-light-grey"></span></h1>
		</div>
	</header>
	
	<!-- Page content -->
	<div class="w3-content w3-padding" style="max-width:1564px">
	
		<!-- Project Section -->
		<br/><br/><br/><br/>
					<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:600px; height: 300px">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" style="width:1200px; border:1px solid lightgray">
							<div class="item active">
								<a href=""> <img src="Slike/naslovna_fifa.jpg"
									style="width: 600px; height:300px"></a>
								<div id="div-car">
									<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">FIFA</h3>
									<p style="font-size: 16px">Tvoje svetovno prvenstvo se začne zdaj! Bodi tudi ti del spektakla in zberi vse FIFA sličice! </p>
									<button class="w3-button btn-carousel">Več</button>
								</div>
							</div>

							<div class="item">
								<a href=""> <img src="Slike/naslovna_nba.jpg"
									style="width: 600px; height:300px"></a>
								<div id="div-car">
									<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">NBA</h3>
									<p style="font-size: 16px">Naj se košarkarska evforija nadaljuje z novo zbirko sličic NBA! </p>
									<button class="w3-button btn-carousel">Več</button>
								</div>
							</div>

							<div class="item">
								<a href=""> <img src="Slike/Pokemon.jpg"
									style="width: 600px; height:300px"></a>
								<div id="div-car">
									<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Pokémon</h3>
									<p style="font-size: 16px">Zberite vse Pokémon sličice! </p>
									<button class="w3-button btn-carousel">Več</button>
								</div>
							</div>
							<div class="item">
								<a href=""> <img src="Slike/Star_Wars.jpg"
									style="width: 600px; height:300px"></a>
								<div id="div-car">
									<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Star Wars</h3>
									<p style="font-size: 16px">Uporabi silo Luke in dobi vse sličice ! </p>
									<button class="w3-button btn-carousel">Več</button>
								</div>
							</div>
						</div>


						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev" > <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next" style="margin-right:-600px; opacity: 0.3"> <span
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
	
		<div class="w3-row-padding w3-grayscale">
		<div class="w3-col l3 m6 w3-margin-bottom">
		<img src="/w3images/team2.jpg" alt="John" style="width:100%">
		<h3>John Doe</h3>
		<p class="w3-opacity">CEO & Founder</p>
		<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
		<p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<img src="/w3images/team1.jpg" alt="Jane" style="width:100%">
		<h3>Jane Doe</h3>
		<p class="w3-opacity">Architect</p>
		<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
		<p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<img src="/w3images/team3.jpg" alt="Mike" style="width:100%">
		<h3>Mike Ross</h3>
		<p class="w3-opacity">Architect</p>
		<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
		<p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
		</div>
		<div class="w3-col l3 m6 w3-margin-bottom">
		<img src="/w3images/team4.jpg" alt="Dan" style="width:100%">
		<h3>Dan Star</h3>
		<p class="w3-opacity">Architect</p>
		<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
		<p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
		</div>
		</div>
		<!-- End page content -->
	</div>
	
	<footer>

	</footer>
	
	<script src="js/javascript.js"></script>
	</body>
	</html>