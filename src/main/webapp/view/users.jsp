<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
</head>
<body bgcolor="aliceblue">

<br>
<br>
<br>

<center><h1 style="color:green">User Details</h1></center>

<br><br>
<center>
<h3>
<table bgcolor="white" border="1">

	<tr>
		<th>User Id</th>
		<th>User name</th>
		
	</tr>

<c:forEach items="${totalusers}" var="item"> 		



	<tr>
		<td>${item.UID }</td>
		<td>${item.USERNAME }</td>
		
	</tr>

</c:forEach>


</table>
</h3>

<br><br>
 
	
<form  action="admin">

<table>
<td><input type="submit" value="Back"/></td>

</table>

</form>
</body>
</html>