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


		 <%@ page import="java.sql.*" %> 
   
    
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
   	<%@page import="javax.servlet.http.HttpSession"%>
    
    <%
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
	



		<!-- Page content -->
	<form  action="Posiljanje" method="post">
	<div class="w3-content w3-padding" style="max-width:600px">
	<div class="w3-container w3-padding-32">
	<br/><br/>
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Moja sporočila</h3>

<table border="1" id="t-sporocila">
<tr>
<th>Uporabnik:</th>
<th>Sporočilo:</th>



</tr>

   <%
try{
	
Object upo = session.getAttribute("prijavljenuporabnik");
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from sporocilo where Prejemnik="+"'"+upo+"'"+" order by posiljatelj,sporocilo; ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("posiljatelj") %></td>
<td><%=resultSet.getString("sporocilo") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
</div>
		<!-- Registracija -->
		<div class="w3-container w3-padding-32">
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Pošiljanje</h3>
		<h4>${successmessage}</h4>
		
		<input class="w3-input w3-border" type="text" placeholder="Uporabniško ime: " required name="Email">
		<textarea class="w3-input w3-section w3-border" rows="4" cols="50" placeholder="Sporočilo.." name="text"></textarea>
		<button class="w3-button w3-section btn-carousel" type="submit" value="Poslji" name="potrdi2">
		<i class="fa fa-paper-plane"></i> Pošlji
		</button>
		</div>

		</div>
		</form>
		<script src="resources\static\js\javascript.js"></script>
		</body>
	</html>