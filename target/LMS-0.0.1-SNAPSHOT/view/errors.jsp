<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>

<head>


<title>Login Error</title>

</head>

<body>
<br><br><br><br>
<center><h1 style="color:red">Sorry, your record is not available.</h1></center>

<%

getServletContext().getRequestDispatcher("/home").include(request, 
response);


%>

<center> <p><a href="home">Login again</a></center>
</body>

</html>