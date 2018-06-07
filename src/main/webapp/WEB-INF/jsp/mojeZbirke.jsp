<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="Style.css">
	<link rel="stylesheet" href="NewFile.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
	<body>
	
	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a href="Index"  class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		<!-- Float links to the right. Hide them on small screens -->
		

		<div class="w3-right w3-hide-small" style="width:1400px">
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
				<button id="search-btn" class="w3-bar-item w3-button" style="margin-right:5px"><i class="fas fa-search" style="margin-left:-4px"></i></button>
			</form>
			<a href="Kategorije" class="w3-bar-item w3-button">Kategorije</a>
			<a href="mojeZbirke" id="underline" class="w3-bar-item w3-button">Moje zbirke</a>
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
	<div class="w3-content w3-padding" style="max-width:600px">
		<!-- Sličice -->
		<div class="w3-container w3-padding-32" >
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Moje sličice:</h3>
		<div class="w3-row-padding">
			<div class="w3-col l4 m4 w3-margin-bottom">
				<select id="select-kategorije" class="w3-select w3-bar-item" name="selekcija">
						<option value="">-Kategorije-</option>
						<option value="fif">FIFA</option>
						<option value="nba">NBA</option>
				</select><br/><br/>
				<div class="w3-display-container displayBox">
					<h4 class="w3-border-bottom w3-border-white w3-padding-16">
						<b>Kategorija:</b> FIFA, Izmenjava
					</h4>
					<p style="text-align: right; margin-top: -40px">12.6.2018</p>
					<p>
						<b>Iščem:</b> 5, 60, 100, 122, 142, 160, 175, 180, 183, 198, 255,
						260, 300, 340, 343, 345, 420, 440, 457, 460, 480, 500, 510, 525,
						540, 548, 550, 585, 587, 593, 598, 600, 618, 640, 644, 648, 650,
						660, 666
					</p>
					<p>
						<b>Ponujam:</b> 5, 60, 100, 122, 142, 160, 175, 180, 183, 198,
						255, 260, 300, 340, 343, 345, 420, 440, 457, 460, 480, 500, 510,
						525, 540, 548, 550, 585, 587, 593, 598, 600, 618, 640, 644, 648,
						650, 660, 666
					</p>
				</div>
								<div class="w3-display-container displayBox">
					<h4 class="w3-border-bottom w3-border-white w3-padding-16">
						<b>Kategorija:</b> FIFA, Prodaja
					</h4>
					<p style="text-align: right; margin-top: -40px">12.6.2018</p>
					<p>
						<b>Iščem:</b> 5, 60, 100, 122, 142, 160, 175, 180, 183, 198, 255,
						260, 300, 340, 343, 345, 420, 440, 457, 460, 480, 500, 510, 525,
						540, 548, 550, 585, 587, 593, 598, 600, 618, 640, 644, 648, 650,
						660, 666
					</p>
					<p>
						<b>Ponujam:</b> 5, 60, 100, 122, 142, 160, 175, 180, 183, 198,
						255, 260, 300, 340, 343, 345, 420, 440, 457, 460, 480, 500, 510,
						525, 540, 548, 550, 585, 587, 593, 598, 600, 618, 640, 644, 648,
						650, 660, 666
					</p>
				</div>
			</div>
		</div>
		<button id="myBtn">Open Modal</button>
		<div id="myModal" class="modal">
		
			  <!-- Modal content -->
			  <div class="modal-content">
			    <span class="close">&times;</span>
			    <p>Some text in the Modal..</p>
			  </div>
		
		</div>
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Dodaj sličico:</h3>
			
			<form  name="dodajanjeSlicic">
				<input class="w3-input w3-section w3-border" type="text" placeholder="#sličice" style="width:200px">
				<select id="select-kategorije" class="w3-select w3-bar-item" name="selection">
					<option value="">-Zbirke-</option>
					<option value="fif">FIFA</option>
					<option value="nba">NBA</option>
				</select><br/><br/>
				<input type="checkbox" name="prodaja" value="prodaja" onchange="prikazCene();"> Prodajam<br/>
				<input type="checkbox" name="izmenjava" value="menjava"> Menjam<br/>
				<button id="btn-carousel" class="w3-button w3-section" type="submit"> Dodaj</button>
				
			</form>
		
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Dodaj iskano sličico:</h3>
			<form  name="iskaneSlicice">
				<input class="w3-input w3-section w3-border" type="text" placeholder="#sličice" style="width:200px">
				<select id="select-kategorije" class="w3-select w3-bar-item" name="selection">
					<option value="">-Zbirke-</option>
					<option value="fif">FIFA</option>
					<option value="nba">NBA</option>
				</select><br/><br/>
				<button id="btn-carousel" class="w3-button w3-section" type="submit"> Dodaj</button>
				
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