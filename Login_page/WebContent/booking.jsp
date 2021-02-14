<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%
String user=request.getParameter("userid");
session.putValue("userid",user);
String pwd=request.getParameter("pickup");
String fname=request.getParameter("drop");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","root");
Statement stmt = con.createStatement();
ResultSet rs;
int i=stmt.executeUpdate("insert into  detail values ('"+user+"','"+pwd+"','"+fname+"')");

out.println("Successfully Registered");

%>
<br><a href="Details.html">Details</a><br>
<br><a href="index.html">Logout</a><br>

</body>
</html>