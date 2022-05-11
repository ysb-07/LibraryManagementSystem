<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue History</title>
</head>
<body>


<form action=issuehistory1>

	<br><br>
	<center><h1 style="color:olive">User Issue History</h1></center>
	<br><br>
	
	<center>
			<h2>Enter User Id : <input type="text" name="t1"/></h2><br><br>
            <input type="submit" value="submit"/>
            
	</center>
           
</form>
<br>
<center>
<form  action="admin">

<table>
<td><input type="submit" value="Back"/></td>

</table>

</form>
</center>

</body>
</html>