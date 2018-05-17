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
					<button id="currentpage" type="button" data-toggle="dropdown"
						class="btn-group" class="btn btn-primary dropdown-toggle">
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
				<h3>Nvidia</h3>




				<div class="well" style="width: 900px;">
					<table class="table">
						<tr>
							<td id="td-fix">
								<p>
									<a href=""> <img src="Slike/1050.png" height="200p"
										width="200p"></a>
								</p>
								<hr>
								<p>GTX 1050</p>
								<p>110€</p>
							</td>
							<td id="td-fix">
								<p>
									<a href=""> <img src="Slike/1050_ti.png" height="200p"
										width="200p"></a>
								</p>
								<hr>
								<p>GTX 1050 TI</p>
								<p>140€</p>
							</td>
							<td id="td-fix">
								<p>
									<a href=""> <img src="Slike/1060_3gb.png" height="200p"
										width="200p"></a>
								</p>
								<hr>
								<p>GTX 1060 3GB</p>
								<p>230€</p>
							</td>
							<td id="td-fix">
								<p>
									<a href=""> <img src="Slike/1060_6gb.png" height="200p"
										width="200p"></a>
								</p>
								<hr>
								<p>GTX 1060 6GB</p>
								<p>260€</p>
							</td>
						</tr>
						<tr>
							<td>
								<p>
									<a href="1070"> <img src="Slike/1070.png"
										height="200p" width="200p"></a>
								</p>
								<hr>
								<p>GTX 1070</p>
								<p>400€</p>
							</td>
							<td>
								<p>
									<a href=""> <img src="Slike/1070_ti.png" height="200p"
										width="200p"></a>
								</p>
								<hr>
								<p>GTX 1070 TI</p>
								<p>450€</p>
							</td>
							<td>
								<p>
									<a href=""> <img src="Slike/1080.png" height="200p"
										width="200p"></a>
								</p>
								<hr>
								<p>GTX 1080</p>
								<p>500€</p>
							</td>
							<td>
								<p>
									<a href="1080_ti"> <img src="Slike/1080_ti.png"
										height="200p" width="200p"></a>
								</p>
								<hr>
								<p>GTX 1080 TI</p>
								<p>600€</p>
							</td>

						</tr>
					</table>


				</div>
			</div>
		</div>
		<br />
		<br />
	</div>

</body>
</html>