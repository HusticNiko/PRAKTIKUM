<!DOCTYPE html>
	<html>
	<title>Menjava sličic</title>
	<%@page import="java.sql.*"%>
	<%@page import="java.io.*"%>
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
	<%@ page import="java.sql.*" %>
	<% Class.forName("com.mysql.jdbc.Driver"); %>
	
	<body>
	
	<!-- Navbar (sit on top) -->
	<%@ include file = "Navbar.jsp" %>
	<br/><br/>
	
	<!-- Page content -->
	
	
	
	
	<br>
	<br>



	
	<div class="w3-content w3-padding" style="max-width:300px">
		<!-- Prijava -->
		<div class="w3-container w3-padding-32" id="prijava">
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Profil</h3>
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

   <%
try{
	
Object upo = session.getAttribute("prijavljenuporabnik");
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from customer where userId="+"'"+upo+"'"+"; ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	
%>
<center>
<p><b>Ime:</b> <%=resultSet.getString("name") %></p>
<p><b>Priimek:</b> <%=resultSet.getString("username") %></p>
<p><b>Geslo:</b> <%=resultSet.getString("password") %></p>
<p><b>Email:</b> <%=resultSet.getString("email") %></p>
<p><b>Naslov:</b> <%=resultSet.getString("naslov") %></p>
<p><b>Poštna številka:</b> <%=resultSet.getString("pstevilka") %></p>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</center>
		
			
			
			
		<br/>
		<h4>Spremeni geslo:</h4>
			<form action="mojProfil.jsp" method="post">
				<input class="w3-input w3-section w3-border" type="password"
					placeholder="Staro geslo" required name="current"> <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Novo geslo" required name="new"> <input
					class="w3-input w3-section w3-border" type="password"
					placeholder="Ponovi geslo" required name="confirm">
					<button class="w3-button w3-section btn-carousel" type="submit" name="potrdi2" value ="poslji"  style="margin-left:50px; margin-top: 10px !important;"> Spremeni
				</button>
			</form>
		</div>
		<!-- Page content -->
	</div>
	<%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
   	<%@page import="javax.servlet.http.HttpSession"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String Confirm = request.getParameter("potrdi2");
String connurl = "jdbc:mysql://127.0.0.1:5432/baza";
Connection con=null;
Object upo = session.getAttribute("prijavljenuporabnik");
Object upo2 = session.getAttribute("gesloprijave");
String pass=upo2.toString();
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl,"root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where password="+"'"+currentPassword+"'"+" and userId="+"'"+upo+"'"+"");
if(pass.equals(currentPassword) && Confirm.equals("poslji")){
Statement st1=con.createStatement();
st1.executeUpdate("update customer set password="+"'"+Newpass+"'"+" where userId="+"'"+upo+"'"+"");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("");
}
}
catch(Exception e){
out.println(e);
}

%>
	
	
	
	<!-- Footer -->
	<footer>

	</footer>
		<script src="resources\static\js\javascript.js"></script>	
	</body>
	</html>