<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@ page import="java.sql.*" %>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home</title>

</head>

<body>



<form  action="adminlogin">

<br>
<br>
<br>

<center><h2 style="color:green">Admin Login</h2></center>

<br><br>

<table border="1" align="center">

<tr>

<td>Enter Your Name :</td>

<td><input type="text" name="name"/></td>

</tr>

<tr>

<td>Enter Your Password :</td>

<td><input type="password" name="password"/></td>

</tr>



<tr>

<td></td>

<td><input type="submit" value="submit"/></td>


</table>

</form>



<center>
<form  action="home">

<table>
<td><input type="submit" value="Back"/></td>

</table>

</form>
</center>
</body>

</html>