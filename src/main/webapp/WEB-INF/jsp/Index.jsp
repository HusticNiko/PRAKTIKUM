<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<link rel="stylesheet" href="Style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="javascript.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Menjava sličic</title>
</head>

<body>
	<div class="container-fluid">

		<div class="row" id="div1">
			<div class="col-lg-2"></div>
			<div class="col-lg-10" style="min-width: 1000px;">
				<p id="naslov">Menjava sličic</p>
			</div>
			<div id="div-login">
				<button class="btn-group2"
					onclick="window.location.href='Registracija'">
					<i class="fas fa-sign-in-alt"></i>Prijava
				</button>
				<button class="btn-group2"
					onclick="window.location.href='Registracija'">
					<i class="fas fa-user-plus"></i>Registracija
				</button>
			</div>
		</div>

		<div class="row" id="div2">
			<div class="col-lg-2"></div>
			<div class="col-lg-10" style="min-width: 1000px;">
				<button id="currentpage" class="btn-group"
					onclick="window.location.href='Index'">
					<i class="fas fa-home"></i>Domov
				</button>
				<button class="btn-group"
					onclick="window.location.href='Registracija'">
					<i class="fas fa-align-justify"></i>Kategorije
				</button>
				<div class="dropdown">
					<button type="button" data-toggle="dropdown"
						class="btn btn-primary dropdown-toggle">
						<i class="fas fa-images"></i>Moje sličice <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" id="d2-pos">
						<li><a href="Seznam_slicic">Seznam</a></li>
						<li><a href="Dodajanje_slicic">Dodajanje</a></li>
						<li><a href="Brisanje_slicic">Brisanje</a></li>
						<li><a href="Brisanje_slicic">Menjave</a></li>
						
					</ul>
				</div>
				<button class="btn-group"
					onclick="window.location.href='Registracija'">
					<i class="fas fa-envelope"></i>Sporočila
				</button>
				<button class="btn-group"
					onclick="window.location.href='Registracija'">
					<i class="fas fa-user"></i>Moj profil
				</button>
				<button id="b-line" class="btn-group"
					onclick="window.location.href='O_nas'">
					<i class="fas fa-info-circle"></i>O strani
				</button>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div>
				<br />
				<h3>Domača stran</h3>

				<p>Dobrodošli na spletni strani grafičnih kartic.</p>
				<br />
				<h4>Akcijske ponudbe :</h4>

				<p id="odstevanje"></p>
				<div class="well" style="width: 450px;">
					<table class="table">
						<tr>
							<td id="td-fix">
								<p>
									<a href="1070"> <img src="Slike/off_1070.png"
										height="200p" width="200p"></a>
								</p>
								<hr>
								<p>GTX 1070</p>
								<p>
									<strike>400€</strike> 300€
								</p>
							</td>
							<td id="td-fix">
								<p>
									<a href="1080_ti"> <img src="Slike/off_1080_ti.png"
										height="200p" width="200p"></a>
								</p>
								<hr>
								<p>GTX 1080 TI</p>
								<p>
									<strike>600€</strike> 420€
								</p>
							</td>
						</tr>
					</table>
				</div>
				<br />
				<h4>Najbolj prodani:</h4>
				<div class="well" style="width: 700px;">
					<table class="table">

						<tr>
							<td id="td-fix">

								<p style="opacity: 0.5;">
									<a href="Slike/1080.png"><img src="Slike/1050_ti.png"
										height="200p" width="200p"></a>
								</p>
								<hr>
								<p class="razprodano">GTX 1050 TI</p>
								<p style="font-weight: 600;">Ni na zalogi!</p>
							</td>
							<td id="td-fix">
								<p>
									<a href="Slike/1080.png"> <img src="Slike/1060_6gb.png"
										height="200p" width="200p"></a>
								</p>
								<hr>
								<p>GTX 1060 6GB</p>
								<p>260€</p>
							</td>
							<td id="td-fix">
								<p>
									<a href="Slike/1080.png"> <img src="Slike/off_1070.png"
										height="200p" width="200p"></a>
								</p>
								<hr>
								<p>GTX 1070</p>
								<p>
									<strike>400€</strike> 300€
								</p>
							</td>
						</tr>

					</table>
				</div>
				<br> <br>
				<p id="time"></p>



			</div>
		</div>
	</div>
	<script>
		mojDatum();
		akcijaCountdown();
	</script>
</body>
</html>