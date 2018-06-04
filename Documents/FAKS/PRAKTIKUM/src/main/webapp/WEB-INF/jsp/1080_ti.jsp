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
				<h4>GeForce GTX 1080 Ti</h4>
				<p id="p1">Grafična kartica Gigabyte GeForce GTX 1080 Ti Gaming
					je neverjetno močen in učinkovit kos strojne opreme, ki presega
					hitrosti GTX 1080 kartic za do kar 35%. Kartica je nabita z
					brutalno količino moči, pomnilniško tehnologijo nove generacije
					GDDR5X, ki deluje pri neprekosljivi hitrosti do 11 Gbps, ter
					videopomnilnikom z masivno kapaciteto 11 GB.</p>
			</div>
			<br>
			<div id="div-t3">

				<p>
					<b><s>600â¬</s><br> 420â¬</b>
				</p>
				<p>
					<b>GARANCIJA:</b> 3 leti
				</p>



				<table id="t3" border="1">

					<tr>
						<td><a href="Slike/1080_ti.png"> <img
								src="Slike/1080_ti.png" height="220p" width="220p"></a></td>
						<td><a href="Slike/1080_ti_1.png"> <img
								src="Slike/1080_ti_1.png" height="220p" width="220p"></a></td>
					</tr>
					<tr>
						<td><a href="Slike/1080_ti_2.png"> <img
								src="Slike/1080_ti_2.png" height="220p" width="220p"></a></td>
						<td><a href="Slike/1080_ti_3.png"> <img
								src="Slike/1080_ti_3.png" height="220p" width="220p"></a></td>
					</tr>
				</table>
			</div>
			<div id="div-t2">
				<h5>Tehnične podrobnosti:</h5>

				<table id="t2" class="table table-hover">
					<tbody>
						<tr>
							<td>
								<p>Grafično čipovje:</p>
							</td>
							<td class="td-group">
								<p>NVIDIA GeForce GTX 1080 Ti</p>
							</td>

						</tr>
						<tr>
							<td>
								<p>Grafični pomnilnik:</p>
							</td>
							<td class="td-group">
								<p>11 GB GDDR5X, 352-bit</p>
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
								<p>1582 MHz</p>
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
								<p>600 W</p>
							</td>
						<tr>
							<td>
								<p>Napajalni priključki:</p>
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
								<p>37x280x114 mm</p>
							</td>

						</tr>
					</tbody>
				</table>

			</div>

		</div>
	</div>

</body>
</html>