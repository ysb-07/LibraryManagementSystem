<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.lang.*" %>



<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue Book</title>
</head>
<body>

<br><br>
<center><h1 style="color:olive">Issue New Book</h1></center>
<br><br>
<br>
<%! 
	int bid=0;
	int uid=0;
	int iid=0;
	int period;
	String name="";
	String stat="";
	String status="Issued";
	Date date;
	SimpleDateFormat formatter;
	String str;
	String s;
	String s1;
	String s2;
	String s3;
%>
<center>
<%
Connection con= null;

Statement stmt = null;
Statement stmt1 = null;

PreparedStatement ps = null;
PreparedStatement ps1 = null;
PreparedStatement ps2 = null;

ResultSet rs = null;
ResultSet rs1 = null;
ResultSet rs2 = null;



String driverName = "com.mysql.cj.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/library";

String user = "root";

String password = "1234";

date = new Date();
formatter = new SimpleDateFormat("yyyy/MM/dd");
str = formatter.format(date);

String query = "select bid,book_name,book_status from books where bid=? and book_status='Not Issued'";


s = request.getParameter("t1");
s1 = request.getParameter("t2");
s2 = request.getParameter("t3");
s3 = request.getParameter("t4");

bid = Integer.parseInt(s);
uid = Integer.parseInt(s1);
iid = Integer.parseInt(s2); 
period = Integer.parseInt(s3);

%>

<% 
try {

	Class.forName(driverName);

	con = DriverManager.getConnection(url, user, password);

	ps = con.prepareStatement(query);

	ps.setInt(1, bid);

	rs = ps.executeQuery();


	while(rs.next()) 
	{
		bid=rs.getInt(1);
		name=rs.getString(2);
		stat=rs.getString(3);
	}
	
	if(stat.equals("Not Issued"))
	{
		String query1 = "select uid from users where uid=?";
		
		ps1 = con.prepareStatement(query1);

		ps1.setInt(1, uid);

		rs1 = ps1.executeQuery();
		
		while(rs1.next()) 
		{
			uid=rs1.getInt(1);
		}
		
		String query2="insert into issued_books values("+iid+","+uid+","+bid+",'"+name+"','"+str+"',"+period+",'"+status+"');";    // java code
		// change the java code to SQL statement
		
		
		// Inserting element
		stmt=con.createStatement();
		stmt.executeUpdate(query2);
		
		
		out.println("Book "+name+" issued for "+period+" days");
		
		
		
		// Changing the status of book entry to issued in books table
		String query3="update books set book_status='Issued' where bid ="+bid;    
		stmt1=con.createStatement();
		stmt1.executeUpdate(query3);
	
	}
	else
	{
		
		
		out.println("Book not available!");
		
		
	}
	
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>



<br><br>
 
	
<form  action="admin">

<table>
<td><input type="submit" value="Back"/></td>

</table>

</form>

</center>

</body>
</html>