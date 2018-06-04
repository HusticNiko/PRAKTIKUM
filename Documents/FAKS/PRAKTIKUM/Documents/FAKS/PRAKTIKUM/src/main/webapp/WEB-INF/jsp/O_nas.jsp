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
				<button class="btn-group"
					onclick="window.location.href='Registracija'">
					<i class="fa fa-user"></i>Registracija
				</button>
				<div class="dropdown">
					<button type="button" data-toggle="dropdown"
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
					<i class="fa fa-eur"></i>Račun
				</button>
				<button id="currentpage-line" class="btn-group"
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
				<h3>O nas</h3>
				<div class="well" style="width: 300px;">
					<p>GFX d.o.o.</p>
					<p>Koroška cesta 31</p>
					<p>2000 Maribor</p>
					<br>
					<p>E-pošta: gfx.trgovina@gmail.com</p>
					<p>GSM: 040 719 622</p>
				</div>
				<table id="t-map">
					<tr>
						<td><iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2743.4563973578893!2d15.637405615813895!3d46.55843926778272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476f77aff1d02de9%3A0x942585fd3f526daf!2sKoro%C5%A1ka+cesta+31%2C+2000+Maribor!5e0!3m2!1sen!2ssi!4v1520532675114"
								width="600" height="450" frameborder="0" style="border: 0"
								allowfullscreen></iframe></td>
					</tr>
				</table>

			</div>
		</div>
		<br />
		<br />
	</div>


</body>
</html>