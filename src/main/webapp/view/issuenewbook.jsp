<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue Book</title>
</head>
<body>


<form action=issuenewbook1>

	<br><br>
	<center><h1 style="color:olive">Issue New Book</h1></center>
	<br><br>
	
	<center>
			<h2>Enter Book Id : <input type="text" name="t1"/></h2><br><br>
            <h2>Enter User Id : <input type="text" name="t2"/></h2><br><br>
            <h2>Enter Issue Id :<input type="text" name="t3"/></h2><br><br>
            <h2>Enter Period :<input type="text" name="t4"/></h2><br><br>
            <input type="submit" value="submit"/>
            
	</center>
           
</form>


</body>
</html>