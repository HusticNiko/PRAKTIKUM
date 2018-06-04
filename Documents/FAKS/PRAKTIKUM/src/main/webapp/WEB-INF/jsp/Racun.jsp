<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="Calculator.css">
<link rel="stylesheet" href="Style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="javascript.js"></script>
<script src="Calculator.js"></script>
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
				<button id="currentpage" class="btn-group"
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
				<h3>Račun</h3>
				<div>
					<div class="well" style="width: 640px;">

						<p>
							<strong>GFX d.o.o.</strong><br> Koroška cesta 31<br>
							2000 Maribor

						</p>
						<table class="table-bordered">
							<tr style="background-color: lightblue;">
								<td>zap.št.</td>
								<td>vrsta blaga oz. storitev</td>
								<td>kol.</td>
								<td>pop.</td>
								<td>cena brez DDV</td>
								<td>DDV %</td>
								<td>cena z DDV</td>
							</tr>
							<tr>
								<td class="td-group">1</td>
								<td class="td-group">Gigabyte grafična kartica GeForce GTX
									1070</td>
								<td class="td-group">1</td>
								<td class="td-group">25</td>
								<td class="td-group">224</td>
								<td class="td-group">22</td>
								<td class="td-group">300</td>
							</tr>
						</table>
						<br />
						<table class="table-bordered">
							<tr>
								<td>Skupaj brez DDV:</td>
								<td class="td-group">400 EUR</td>
							</tr>
							<tr>
								<td>Popust:</td>
								<td class="td-group">-100 EUR</td>
							</tr>
							<tr>
								<td>Obračunan DDV:</td>
								<td class="td-group">40 EUR</td>
							</tr>
							<tr style="background-color: lightblue;">
								<td>SKUPAJ za plačilo:</td>
								<td class="td-group">300 EUR</td>
							</tr>
						</table>
						<br />
						<button class="btn btn-default" style="float: left;">Print</button>
						<br />
					</div>


					<div id="calculator">
						<!-- Screen and clear key -->
						<div class="top">
							<span class="clear">C</span>
							<div class="screen"></div>
						</div>

						<div class="keys">
							<span>7</span> <span>8</span> <span>9</span> <span
								class="operator">+</span> <span>4</span> <span>5</span> <span>6</span>
							<span class="operator">-</span> <span>1</span> <span>2</span> <span>3</span>
							<span class="operator">Ã·</span> <span>0</span> <span>.</span> <span
								class="eval">=</span> <span class="operator">x</span> <span>DDV</span>
							<span>p(%)</span> <span>N</span>

						</div>
						<input id="screen2" class="screen2"></input>

					</div>


				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		calculator();
	</script>
</body>
</html>