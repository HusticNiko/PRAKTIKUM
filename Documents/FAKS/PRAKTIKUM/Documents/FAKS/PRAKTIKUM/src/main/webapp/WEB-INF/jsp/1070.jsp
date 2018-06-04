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
			<div class="col-6">
				<br />
				<h3>Gigabyte grafična kartica GeForce GTX 1070</h3>
				<div class="well" style="width: 500px;">
					<p>Kartica izdelana do popolnosti, za najvišjo stopnjo
						zmogljivosti, ki navduši vsakega igralca iger.Deluje na
						revolucionarni NVIDIA Pascal GPU arhitekturi. Kartica je
						opremljena z najnovejšimi NVIDIA tehnologijami in je tko popolnoma
						pripravljena na Virtualni svet in G-Sync podporo za gladko
						prikazovanje slik na zaslonu.</p>

					<br>


					<p>
						<b><s>400€</s><br> 300€</b>
					</p>
					<p>
						<b>GARANCIJA:</b> 2 leti
					</p>
					<br /> <br />
					<h4>Tehnične podrobnosti</h4>

					<table id="t2" class="table table-hover">
						<tbody>
							<tr>
								<td>
									<p>Grafično čipovje:</p>
								</td>
								<td class="td-group">
									<p>NVIDIA GeForce GTX 1070</p>
								</td>

							</tr>
							<tr>
								<td>
									<p>Grafični pomnilnik:</p>
								</td>
								<td class="td-group">
									<p>8 GB GDDR5X, 256-bit</p>
								</td>

							</tr>
							<tr>
								<td>
									<p>Vodilo:</p>
								</td>
								<td class="td-group">
									<p>PCIe 3.0</p>
								</td>

							</tr>

							<tr>
								<td>
									<p>Takt procesorja:</p>
								</td>
								<td class="td-group">
									<p>1506 MHz</p>
								</td>

							</tr>
							<tr>
								<td>
									<p>Podpira:</p>
								</td>
								<td class="td-group">
									<p>DirectX 12, OpenGL 4.5</p>
								</td>

							</tr>
							<tr>
								<td>
									<p>Minimalno napajanje:</p>
								</td>
								<td class="td-group">
									<p>500 W</p>
								</td>
							<tr>
								<td>
									<p>Napajalni priključki:</p>
								</td>
								<td class="td-group">
									<p>1x 8pin PCIe</p>
								</td>

							</tr>
							<tr>
								<td>
									<p>Izhodi:</p>
								</td>
								<td class="td-group">
									<p>DP 1.43, HDMI 2.0b</p>
								</td>

							</tr>
							<tr>
								<td>
									<p>Dimenzije:</p>
								</td>
								<td class="td-group">
									<p>37x280x114 mm</p>
								</td>

							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-6">
				<div class="well well-sm" style="width: 500px;">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<a href="Slike/1070.png"> <img src="Slike/1070.png"
									style="width: 100%;"></a>
							</div>

							<div class="item">
								<a href="Slike/1070_1.png"> <img src="Slike/1070_1.png"
									style="width: 100%;"></a>
							</div>

							<div class="item">
								<a href="Slike/1070_2.png"> <img src="Slike/1070_2.png"
									style="width: 100%;"></a>
							</div>
							<div class="item">
								<a href="Slike/1070_3.png"> <img src="Slike/1070_3.png"
									style="width: 100%;"></a>
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
				</div>
			</div>

		</div>
		<br /> <br />
	</div>

</body>
</html>