<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Books</title>
</head>
<body>
<br>
<br>
<br>

	<center><h2 style="color:green">Available Books</h2></center>
	
	<br><br>
<center>
	<table border="1">
	<tr>
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


String query = "select * from books where book_status='Not Issued'";


try {

	Class.forName(driverName);

	con = DriverManager.getConnection(url, user, password);

	stmt=con.createStatement();

	rs = stmt.executeQuery(query); 

	while (rs.next())

	{
		id = rs.getInt(1);
		name = rs.getString(2);
		author = rs.getString(3);
		price = rs.getInt(4);
		status = rs.getString(5);
		
		if(status.equals("Not Issued"))
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
		else
		{
			System.out.println("No Books Available!");
		}	

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
<br>
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