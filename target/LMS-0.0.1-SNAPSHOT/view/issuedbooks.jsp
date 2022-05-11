<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>



<%@ page import="java.sql.*" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Issued Books</title>
</head>
<body>
<br>
<br>
<center><h1 style="color:green">Issued Books Details</h1></center>

<br><br><br>
<center>
<table border="1">
<tr>
<td>Issue Id</td>
<td>Book Id</td>
<td>User Id</td>
<td>Book name</td>
<td>Issue Date</td>
<td>Period</td>
<td>Book Status</td>

</tr>



<%!
int iid;
int uid;
int bid;
String book_name;
Date date;
int period;
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




String query = "select * from issued_books where book_status='Issued'";




try {



Class.forName(driverName);



con = DriverManager.getConnection(url, user, password);



stmt=con.createStatement();



rs = stmt.executeQuery(query);



while (rs.next())



{
iid = rs.getInt(1);
uid = rs.getInt(2);
bid = rs.getInt(3);
book_name=rs.getString(4);
date = rs.getDate(5);
period = rs.getInt(6);
status=rs.getString(7);

if(status.equals("Issued"))
{
%>

<tr>
<td><%= iid %></td>
<td><%= bid %></td>
<td><%= uid %></td>
<td><%= book_name %></td>
<td><%= date %></td>
<td><%= period %></td>
<td><%= status %></td>

</tr>

</center>
<%
}
else
{
out.println("No Books Issued!");
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



<br><br>


<form action="admin">



<table>
<td><input type="submit" value="Back"/></td>



</table>



</form>



</body>
</html>