<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">

<title>IUser Details</title>
</head>
<body>

<center><h2 style="color:green">User Details</h2></center>


<br><br>
<center>
<table border="1">
<tr>
<td>User Id</td>
<td>User name</td>

</tr>


<%
Connection con= null;

Statement stmt = null;

ResultSet rs = null;



String driverName = "com.mysql.cj.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/library";

String user = "root";

String password = "1234";



String query = "select * from users";

	

try {

	Class.forName(driverName);

	con = DriverManager.getConnection(url, user, password);

	stmt=con.createStatement();

	rs = stmt.executeQuery(query); 

	while (rs.next())

	{
		%>
		
		<tr>
		<td><%= rs.getInt(1) %></td>
		<td><%= rs.getString(2) %></td>
		
		</tr>
		
		</center>
<% 
		

	}	

	rs.close();

	stmt.close();

}

catch (SQLException sqe)

{

	out.println(sqe);

}

%>
</table>

<br><br>
 
	
<form  action="admin">

<table>
<td><input type="submit" value="Back"/></td>

</table>

</form>


</body>
</html>