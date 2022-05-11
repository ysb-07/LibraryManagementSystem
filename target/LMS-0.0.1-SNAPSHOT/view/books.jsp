<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Details</title>
</head>
<body bgcolor="aliceblue">

<br>
<br>
<br>

<center><h1 style="color:green">Book Details</h1></center>

<br><br>
<center>
<h3>
<table bgcolor="white" border="1">

	<tr>
		<th>Book Id</th>
		<th>Book name</th>
		<th>Book Author</th>
		<th>Book Price</th>
		<th>Book Status</th>
	</tr>

<c:forEach items="${totalbooks}" var="item"> 		



	<tr>
		<td>${item.bid }</td>
		<td>${item.book_name }</td>
		<td>${item.book_author }</td>
		<td>${item.book_price }</td>
		<td>${item.book_status }</td>
	</tr>

</c:forEach>


</table>

<br><br>
 
	
<form  action="admin">

<table>
<td><input type="submit" value="Back"/></td>

</table>

</form>
</h3>
</body>
</html>
