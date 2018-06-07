<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tns="http://www.example.org/Besednjak">
	<xsl:output method="html"></xsl:output>
	<xsl:template match="/seznamUporabnikov">
		<html>
			<head>
				<meta charset="UTF-8" />
				<link rel="stylesheet"
					href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
				<link rel="stylesheet" href="../Style.css" />
				<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
				<script src="javascript.js"></script>
				<meta name="viewport"
					content="width=device-width, initial-scale=1" />
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
								onclick="window.location.href='../Index.html'">
								<i class="fa fa-home"></i>
								Domov
							</button>
							<div class="dropdown">
								<button type="button" data-toggle="dropdown"
									class="btn btn-primary dropdown-toggle">
									<i class="fa fa-list-ul"></i>
									Kategorije
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" id="d1-pos">
									<li>
										<a href="../Nvidia.html">NVIDIA</a>
									</li>
									<li>
										<a href="#">AMD</a>
									</li>
								</ul>
							</div>
							<button class="btn-group"
								onclick="window.location.href='../Registracija.html'">
								<i class="fa fa-user"></i>
								Registracija
							</button>
							<div class="dropdown">
								<button id="currentpage" type="button" data-toggle="dropdown"
									class="btn btn-primary dropdown-toggle">
									<i class="fa fa-list-ul"></i>
									Administrator
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" id="d2-pos">
									<li>
										<a href="../Dodajanje_artikla.html">Dodajanje izdelkov</a>
									</li>
									<li>
										<a href="../XML/seznamArtiklov.xml">Seznam izdelkov</a>
									</li>
									<li>
										<a href="../XML/seznamUporabnikov.xml">Seznam uporabnikov</a>
									</li>
								</ul>
							</div>
							<button class="btn-group"
								onclick="window.location.href='../Racun.html'">
								<i class="fa fa-eur"></i>
								Račun
							</button>
							<button id="b-line" class="btn-group"
								onclick="window.location.href='../O_nas.html'">
								<i class="fa fa-info-circle"></i>
								O nas
							</button>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div>
							<br />
							<h3>Seznam uporabnikov</h3>

							<div class="well" style="width:700px;">
								<table id="t-seznam" class="table">
									<tr>
										<th id="td-fix">Ime</th>
										<th id="td-fix">Priimek</th>
										<th id="td-fix">E-mail</th>
										<th id="td-fix">Država</th>
										<th id="td-fix">Spol</th>
										<th id="td-fix">Izdelek</th>

									</tr>
									<xsl:for-each select="uporabnik">
										<tr>
											<td>
												<xsl:value-of select="ime" />
											</td>
											<td>
												<xsl:value-of select="priimek" />
											</td>
											<td>
												<xsl:value-of select="e-mail" />
											</td>
											<td>
												<xsl:value-of select="drzava" />
											</td>
											<td>
												<xsl:value-of select="spol" />
											</td>
											<td>
												<xsl:value-of select="izdelek" />
											</td>
										</tr>

									</xsl:for-each>
								</table>
							</div>
						</div>
					</div>
					<br />
					<br />
				</div>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>