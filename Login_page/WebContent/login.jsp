<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Jsp</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String userid=request.getParameter("usr");
session.putValue("userid", userid);
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from users where userid=userid");
if(rs.next()){
	if(rs.getString(2).equals(pwd)){
		out.println("welcome "+userid);
	}
	else
	{
		out.println("Invalid password try again");
	}
}
else


%>

<br><a href="boking.html">Booking</a><br>
<%--- <button href="index.html" >Logout</button>
 <button onclick="index.html">
      Click Here
    </button>
    
     
      <input type="button" onclick="index.html" value="w3docs" />--%>
</body>
</html>