<!DOCTYPE html>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="Style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="javascript.js"></script>

	<title>Menjava sličic</title>
</head>


<body>
	<div class="container-fluid">

		<div class="row" id="div1">
			<div class="col-lg-2"></div>
			<div class="col-lg-10" style="min-width: 1000px;">
				<p id="naslov">Spletna Trgovina GFX</p>
			</div>
		</div>

		<div class="row" id="div2">
			<div class="col-xs-0 col-sm-0 col-md-0 col-lg-2"></div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-10"
				style="min-width: 1000px;">
				<button class="btn-group"
					onclick="window.location.href='Index'">
					<i class="fa fa-home"></i>Domov
				</button>
				<div class="dropdown">
					<button type="button" data-toggle="dropdown" class="btn-group"
						class="btn btn-primary dropdown-toggle">
						<i class="fa fa-list-ul"></i> Kategorije <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" id="d1-pos">
						<li><a href="Nvidia">NVIDIA</a></li>
						<li><a href="#">AMD</a></li>
					</ul>
				</div>
				<button class="btn-group"
					onclick="window.location.href='Registracija'">
					<i class="fa fa-user"></i>Registracija
				</button>
				<div class="dropdown">
					<button id="currentpage" type="button" data-toggle="dropdown"
						class="btn btn-primary dropdown-toggle">
						<i class="fa fa-list-ul"></i> Administrator <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" id="d2-pos">
						<li><a href="Dodajanje_artikla">Dodajanje izdelkov</a></li>
						<li><a href="../WebContent/XML/seznamArtiklov.xml">Seznam
								izdelkov</a></li>
						<li><a href="../WebContent/XML/seznamUporabnikov.xml">Seznam
								uporabnikov</a></li>
					</ul>
				</div>
				<button class="btn-group"
					onclick="window.location.href='Racun'">
					<i class="fa fa-eur"></i>Račun
				</button>
				<button id="b-line" class="btn-group"
					onclick="window.location.href='O_nas'">
					<i class="fa fa-info-circle"></i>O nas
				</button>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div>
				<br />
				<h3>Dodajanje artikla v trgovino</h3>

				<div>
					<div class="well" style="width: 300px;">
						<form name="f-artikel" method="post"
							onsubmit="shranjevanjeArtiklov()">

							<div class="form-group">
								<label for="usr">Naziv izdelka:</label> <input required
									type="text" name="naziv" class="form-control" id="naz">
							</div>
							<div class="form-group">
								<label for="pwd">Cena izdelka:</label> <input required
									type="number" name="cena" class="form-control" id="cen">
							</div>
							<div class="form-group">
								<label for="sel3">Kategorija:</label> <select name="kategorije"
									class="form-control" id="sel3">
									<option>- Izberite -</option>
									<option value="nvidia">Nvidia</option>
									<option value="radeon">Radeon</option>
								</select>
							</div>
							<div>
								<label>Zaloga:</label><br /> <label class="radio-inline">
									<input type="radio" name="zaloga" value="je">Je zaloga
								</label> <label class="radio-inline"> <input type="radio"
									name="zaloga" value="ni">Ni zaloga
								</label>
							</div>
							<br />
							<div class="form-group">
								<label for="opis">Opis:</label>
								<textarea class="form-control" rows="5" id="opis"></textarea>
							</div>
							<input class="btn btn-default" type="submit" value="Potrdi">
						</form>
					</div>
				</div>
			</div>
		</div>
		<br />
		<br />
	</div>
</body>
</html>