<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources\static\css\Style.css">
	<link rel="stylesheet" href="resources\static\css\NewFile.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<body>
	
	<!-- Navbar (sit on top) -->
	<%@ include file = "Navbar.jsp" %>
	<br/><br/>
	
	<!-- Page content -->
	<div class="w3-content w3-padding" style="max-width:600px">
		<!-- Sličice -->
		<div class="w3-container w3-padding-32" >
		<br>
		<br>
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Moje sličice:</h3>
		<br>
		<br>
		 <%@ page import="java.sql.*" %> 
   
    
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
   	<%@page import="javax.servlet.http.HttpSession"%>
   	<%@page import="java.sql.Connection"%>
	<%@page import="java.sql.PreparedStatement"%>
	<%@page import="java.sql.ResultSet"%>
   	
    
    <%
    final Connection con;
	final PreparedStatement ps;
	
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://127.0.0.1:5432/baza";
String database = "baza";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
	
<br>
<br>
<br>
<center>
<br>
<br>
<table border="1">
<tr>
<td>Številka sličice:</td>
<td>Zbirka:</td>
<td>Prodaja: </td>


</tr>

   <%
try{
	
String upo = session.getAttribute("prijavljenuporabnik").toString();
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from slicice where Uporabnik = "+"'"+upo+"'"+" order by stslicice   ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("stslicice") %></td>
<td><%=resultSet.getString("zbirka") %></td>
<td><%=resultSet.getString("prodaja") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
</center>
		
		<button id="myBtn" class="w3-button w3-section btn-carousel" type="button"> Dodaj sličico</button>
		<div id="myModal" class="modal">
		
			  <!-- Modal content -->
			  <div class="modal-content">
			    <span class="close">&times;</span>
				    <div style="margin-left:20%">
				    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Dodaj sličico:</h3>
				
					<form  action="dodajanjeSlicic" method="post">
					<input class="w3-input w3-section w3-border" type="text" placeholder="#sličice" style="width:200px" name="slicica">
					<select id="select-kategorije" class="w3-select w3-bar-item" name="selection">
						<option value="">-Zbirke-</option>
						<option value="FIFA">FIFA</option>
						<option value="NBA">NBA</option>
					</select><br/><br/>
					<select id="select-kategorije" class="w3-select w3-bar-item" name="selection-prodaja">
						<option value="">-Izbira-</option>
						<option value="PRODAJA">Prodaja</option>
						<option value="MENJAVA">Menjava</option>
					</select><br/>
					<button class="w3-button w3-section btn-carousel" type="submit" value="dodaj" name="potrdi"> Dodaj</button>
					
					</form>
					</div>
			  </div>
		
			</div><br/>
			<button id="myBtn2" class="w3-button w3-section btn-carousel" type="button"> Dodaj iskano sličico</button>
			<div id="myModal2" class="modal">
		
			 <!-- Modal content -->
			 <div class="modal-content">
			    <span class="close">&times;</span>
				    <div style="margin-left:20%">
				
				<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Dodaj iskano sličico:</h3>
					<form  action="NLJKN" method="post">
						<input class="w3-input w3-section w3-border" type="text" placeholder="#sličice" style="width:200px">
						<select id="select-kategorije" class="w3-select w3-bar-item" name="selection">
							<option value="">-Zbirke-</option>
							<option value="fif">FIFA</option>
							<option value="nba">NBA</option>
						</select><br/><br/>
					<button class="w3-button w3-section btn-carousel" type="submit"> Dodaj</button>
					
				</form>
		
					</div>
				</div>
			</div>
		</div>
		<!-- Page content -->
		</div>
		
		<!-- Google Map -->
		<div id="googleMap" class="w3-grayscale" style="width:100%;height:450px;"></div>
		
		<!-- Footer -->
		<footer>
	
		</footer>
		<script src="resources\static\js\javascript.js"></script>
		<script src="resources\static\js\modalsZbirke.js"></script>
	</body>
	</html>