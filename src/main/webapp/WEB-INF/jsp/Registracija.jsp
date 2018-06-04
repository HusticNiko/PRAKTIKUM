<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="Style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="javascript.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Spletna Trgovina GFX</title>
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
				<button id="currentpage" class="btn-group"
					onclick="window.location.href='Registracija'">
					<i class="fa fa-user"></i>Registracija
					</button>
							<div class="dropdown">
								<button type="button" data-toggle="dropdown"
									class="btn btn-primary dropdown-toggle">
									<i class="fa fa-list-ul"></i>
									Administrator
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" id="d2-pos">
									<li>
										<a href="Dodajanje_artikla">Dodajanje izdelkov</a>
									</li>
									<li>
										<a href="../WebContent/XML/seznamArtiklov.xml">Seznam izdelkov</a>
									</li>
									<li>
										<a href="../WebContent/XML/seznamUporabnikov.xml">Seznam uporabnikov</a>
									</li>
								</ul>
							</div>
				<button class="btn-group"
					onclick="window.location.href='Racun'">
					<i class="fa fa-eur"></i>Račun
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
			<div class="col-6">
				<br />
				<h3>Registracija</h3>
				<div class="well" style="width: 300px;">
					<form name="myForm" method="post" onsubmit="return Prazno()">
						<div class="form-group">
							<label for="ime">Ime:</label> <input type="text" name="ime"
								onkeyup="samoCrke(this)" class="form-control" id="ime">
						</div>
						<div class="form-group">
							<label for="pri">Priimek:</label> <input type="text" name="priimek"
								onkeyup="samoCrke(this)" class="form-control" id="pri">
						</div>
						<div class="form-group">
							<label for="pwd">Geslo:</label> <input type="password"
								name="geslo" onfocusout="Prekratko()" class="form-control"
								id="pwd">
						</div>
						<div id="alert-geslo"></div>
						<div class="form-group">
							<label for="pwd1">Ponovno geslo:</label> <input type="password"
								name="geslo1" onfocusout="validacijaGesla()"
								class="form-control" id="pwd2">
						</div>
						<div id="alert-geslo1"></div>
						<div class="form-group">
							<label for="eml">E-mail:</label> <input type="email" name="email"
								class="form-control" id="eml">
						</div>
						<div class="form-group">
							<label for="sel1">Država:</label> <select name="drzava"
								class="form-control" id="sel1">
								<option>- Izberite -</option>
								<option value="slo">Slovenija</option>
								<option value="au">Avstrija</option>
								<option value="hr">Hrvaška</option>
								<option value="de">Nemčija</option>
							</select>
						</div>
						<div>
							<label>Spol:</label><br /> <label class="radio-inline">
								<input type="radio" name="spol" value="moški">Moški
							</label> <label class="radio-inline"> <input type="radio"
								name="spol" value="Ženski">Ženski
							</label>
						</div>
						<br />
						<div id="alert-prazno"></div>
						<div>
							<input class="btn btn-default" type="submit" value="Potrdi">
						</div>
					</form>
				</div>
				</div>
				<div class="col-6">
				<div class="well" style="width: 300px;">
					<form>
						<div class="form-group">
							<label for="f-clanerina">Postanite član in prejmite
								ugodnosti:</label> <select name="clanerina" class="form-control"
								id="f-clanerina" onchange="clanerina()">
								<option>- Izberite -</option>
								<option value="1">1 Mesec</option>
								<option value="6">6 Mesecev</option>
								<option value="12">12 Mesecev</option>
							</select><br /> <input class="btn btn-default" type="submit"
								value="Potrdi">
						</div>
					</form>
					<table class="table">
						<tr>
							<td>
								<p>Popust pri izdelkih:</p>
							</td>
							<td class="td-group">
								<p id="t-popust">10%</p>
							</td>

						</tr>
						<tr>
							<td>
								<p>Brezplačna dostava:</p>
							</td>
							<td class="td-group">
								<p id="t-dostava">Ne</p>
							</td>

						</tr>
						<tr>
							<td>
								<p>Cena:</p>
							</td>
							<td class="td-group">
								<p id="t-cena">10€</p>
							</td>

						</tr>
					</table>
				</div>
				<div class="well" style="width: 300px;">
					<label>Igrajte ugibanja števila za 3% popusta pri
						enem izdelku!</label><br />
					<button class="btn btn-default" onclick="igra()">Igraj</button>
				</div>

			

		</div>
		</div>
		<br /> <br />
	</div>
</body>
</html>