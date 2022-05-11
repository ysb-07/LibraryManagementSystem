<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>



<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Book Details</title>

</head>

<body>

<center><h2 style="color:green">Book Details</h2></center>

<br><br>
<center>
<table border="1">
<tr>
<td>Book Id</td>
<td>Book name</td>
<td>Book Author</td>
<td>Book Price</td>
<td>Book Status</td>

</tr>

<%! 

int id;
String name;
String author;
int price;
String status;

%>

<%
Connection con= null;

Statement stmt = null;

ResultSet rs = null;



String driverName = "com.mysql.cj.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/library";

String user = "root";

String password = "1234";



String query = "select * from books";

	

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
<td><%= rs.getString(3) %></td>
<td><%= rs.getInt(4) %></td>
<td><%= rs.getString(5) %></td>

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

<br><br>
 
		

		
</table>
	
	<br><br>
 
	
<form  action="admin">

<table>
<td><input type="submit" value="Back"/></td>

</table>

</form>

</body>

</html>