<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.sql.*" %>
	<% Class.forName("com.mysql.jdbc.Driver"); %>
</head>
<body>
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
String pass="";
Object upo = session.getAttribute("prijavljenuporabnik");
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl,"root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where password="+"'"+currentPassword+"'"+" and userId="+"'"+upo+"'"+"");
if(Confirm.equals("poslji")){
Statement st1=con.createStatement();
st1.executeQuery("update customer set password="+"'"+Newpass+"'"+" where userId="+"'"+upo+"'"+"");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}


response.sendRedirect("mojProfil.jsp");
%>
	

</body>
</html>