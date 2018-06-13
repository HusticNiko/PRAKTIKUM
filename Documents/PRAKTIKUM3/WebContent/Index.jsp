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
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a  href="Index.jsp"  class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		<!-- Float links to the right. Hide them on small screens -->
		

		<div class="w3-right w3-hide-small" >
			<form class="w3-bar-item" name="forma-tab" style="padding:0px; font-size:14px;">
				<input  type="radio" value="izmenjava" name="iskanje" checked><label id="ponujamIscem"> Izmenjava</label>
				<input type="radio" value="prodaja" name="iskanje"><label id="ponujamIscem"> Prodaja</label>
				<select id="select-kategorije" class="w3-select" name="selekcija">
					<option value="">-Filter-</option>
					<option value="dgm">Digimon</option>
					<option value="fif">FIFA</option>
					<option value="grf">Garfield</option>
					<option value="hrp">Harry Potter</option>
					<option value="nba">NBA</option>
					<option value="pkm">Pokémon</option>
					<option value="pep">Pujsa Pepa</option>
					<option value="stw">Star Wars</option>
				</select> 
				<input class="w3-input w3-border" type="text" placeholder="#sličice.." id="searchbar" >
				<button class="w3-button" id="search-btn"  ><i class="fas fa-search" style="margin-left:-4px"></i></button>
			</form>
			<a href="Kategorije.jsp" class="w3-bar-item w3-button">Kategorije</a>
			<% if (session.getAttribute("prijavljenuporabnik") == null) { %>
				<a href="Registracija.jsp" class="w3-bar-item w3-button">Prijava</a>

			<% } else { %>

	            <div class="w3-bar-item dropdown">
					 <button class="w3-button dropbtn" onclick="myFunction()">Zdravo, uporabnik!<i class="fas fa-caret-down"></i></button>
					 <div id="myDropdown" class="dropdown-content">
					    <a href="mojProfil.jsp">Profil</a>
					    <a href="mojeZbirke.jsp" class="w3-button">Zbirke</a>
	       			    <a href="Sporocila.jsp" class="w3-button">Sporočila</a>
					    <button class="w3-button" id="izpis" type="button">Izpis</button>
					 </div>
				 </div> 
		
			<% } %>
					
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
	<div class="w3-content w3-padding" style="max-width:1250px">
	
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
								<a href=""> <img src="Slike/Star_wars.jpg"
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
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">O nas</h3>
		<p>Spletna aplikacija Slicice.net je namenjena vsem navdušencem in zbirateljem
			sličic. Na tem portalu boste lahko prebrskali zbirke raznih sličic, ter seveda
			tudi izmenjevali sličice z ostalimi člani. Z brezplačno in enostavno registracijo
			lahko iščete med sličicami ki so na voljo, ter tudi ponudite vaše sličice ostalim zbirateljem.
		</p>
		</div>

		<div class="w3-container w3-padding-32" id="pogoji">
			<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Pogoji uporabe</h3>
			<p>Spletno aplikacijo lahko kot obiskovalec  ali član uporabljate samo v primeru,
				če se strinjate s splošnimi pogoji uporabe. Ob registraciji potrjujete, da ste navedli
				vaše resnične osebne podatke, in da ste starejši od 13 let. Prav tako soglašate, da vas
				lahko kontaktirajo uredniki ali administratorji spletne strani na vaše kontaktne podatke,
				ki jih vpišete ob registraciji.
			</p>
		</div>

		<div class="w3-container w3-padding-32" id="pogoji">
			<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Kdo smo?</h3>

		<div class="w3-row-padding w3-grayscale">

		<div class="w3-col l3 m6 w3-margin-bottom">
		<img src="slike/nika.jpg" alt="Nika" style="width:100%">
		<h3>Nika</h3>
		<p class="w3-opacity">CEO & Website design/functionality</p>
		</div>

		<div class="w3-col l3 m6 w3-margin-bottom">
		<img src="slike/rok.jpg" alt="Rok" style="width:100%">
		<h3>Rok</h3>
		<p class="w3-opacity">Database</p>
		</div>

		<div class="w3-col l3 m6 w3-margin-bottom">
		<img src="slike/niko.jpg" alt="Niko" style="width:100%">
		<h3>Niko</h3>
		<p class="w3-opacity">Database</p>
		</div>

		<div class="w3-col l3 m6 w3-margin-bottom">
		<img src="slike/bard.jpg" alt="Bard" style="width:100%">
		<h3>Bard</h3>
		<p class="w3-opacity">Website fuctionality</p>
		</div>
		</div></div>
		<!-- End page content -->
	</div>
	
	<footer>

	</footer>
	
		<script src="resources\static\js\javascript.js"></script>
	</body>
	</html>