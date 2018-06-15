<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a  href="Index.jsp"  class="w3-bar-item w3-button"><b>Menjava sličic</b></a>
		<!-- Float links to the right. Hide them on small screens -->
		
			<form action="iskanje" method="post">
		<div class="w3-right w3-hide-small" >
			<form class="w3-bar-item" name="forma-tab" style="padding:0px; font-size:14px;">
				<input  type="radio" value="izmenjava" name="iskanje" checked><label id="ponujamIscem"> Izmenjava</label>
				<input type="radio" value="prodaja" name="iskanje"><label id="ponujamIscem"> Prodaja</label>
				<select id="select-kategorije" class="w3-select" name="selekcija">
					<option value="">-Filter-</option>
					<option value="dgm">Digimon</option>
					<option value="FIFA">FIFA</option>
					<option value="grf">Garfield</option>
					<option value="hrp">Harry Potter</option>
					<option value="NBA">NBA</option>
					<option value="pkm">Pokémon</option>
					<option value="pep">Pujsa Pepa</option>
					<option value="stw">Star Wars</option>
				</select> 
				<input class="w3-input w3-border" type="text" placeholder="#slicice.." id="searchbar" name="searchbar">
				<button class="w3-button" id="search-btn" name="searchbutton" value="value"><i class="fas fa-search" style="margin-left:-4px"></i></button>
			</form>
			</form>
			<a href="Kategorije.jsp" class="w3-bar-item w3-button">Kategorije</a>
			<% 
			if (session.getAttribute("prijavljenuporabnik") == null) { %>
				<a href="Registracija.jsp" class="w3-bar-item w3-button">Prijava</a>

			<% } else { %>

	            <div class="w3-bar-item dropdown">
					 <button class="w3-button dropbtn" onclick="myFunction()"><% out.println("Zdravo, "+session.getAttribute("prijavljenuporabnik")+"!");%><i class="fas fa-caret-down"></i></button>
					 <div id="myDropdown" class="dropdown-content">
					    <a href="mojProfil.jsp">Profil</a>
					    <a href="mojeZbirke.jsp" class="w3-button">Zbirke</a>
	       			    <a href="Sporocila.jsp" class="w3-button">Sporočila</a>
					    <button class="w3-button" id="izpis" type="button" onclick="location.href = 'Izpis.jsp';">Izpis</button>
					 </div>
				 </div> 



		
			<% } %>
					
		</div>
		</div>
	</div>
</body>
</html>