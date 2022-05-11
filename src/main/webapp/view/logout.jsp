<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>



<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Logout</title>

</head>

<body>

<% session.invalidate(); %>
<br><br><br><br>
<center><h1 >You have been successfully logout</h1>

<a href="home">Login again</a>
</center>

</body>

</html>