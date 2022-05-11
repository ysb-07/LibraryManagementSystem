<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Welcome</title>

</head>

<body bgcolor="aliceblue">
<br>
<center> <h2>Welcome to XYZ Library: User Page</h2> </center>
<br><br><br>

<center> <p>Welcome, <%=session.getAttribute("name")%></p> </center>
<br>
<center>


<p><a href="issuehistory">User Issue History</a>
<br><br>

<p><a href="availablebooks">Available Books</a>
<br><br>

<p><a href="logout">Logout</a>


</center>



</body>

</html>