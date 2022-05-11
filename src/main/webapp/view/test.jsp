<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Welcome</title>

</head>

<body bgcolor="aliceblue">

<center> <h2>Welcome to XYZ Library: User Page</h2> </center>
<br><br><br>

<center> <p>Welcome, <%=session.getAttribute("name")%></p> </center>

<center>
	<p><a href="logout">Logout</a>
<br><br>

<p><a href="bookdetails">Book Details</a>
<br>
<br>

<p><a href="userlist">User Details</a>
<br>
<br>

<p><a href="issuedbooks">Issued Books Details</a>
<br>
<br>

<p><a href="issuenewbook">Issue New Book</a>

	


</center>



</body>

</html>