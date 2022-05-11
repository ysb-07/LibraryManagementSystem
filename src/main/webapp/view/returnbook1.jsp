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
<title>Return Book</title>
</head>
<body>

<br><br>
<center><h1 style="color:olive">Return Book</h1></center>
<br><br>
<br>

<%! 
	int rid=0;
	int iid=0;
	int bid=0;
	int uid=0;
	String name="";
	String stat="";
	Date issueDate =null;
	int period=0;
	int fine=0;
	String status="";
	Date date;
	SimpleDateFormat formatter;
	String str;
	String s;
	String s1;
	
%>

<%
Connection con= null;

Statement stmt = null;
Statement stmt1 = null;
Statement stmt2 = null;

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

String query = "select bid,book_name,book_status from books where bid=? and book_status='Issued'";


s = request.getParameter("t1");
s1 = request.getParameter("t2");

bid = Integer.parseInt(s);
rid = Integer.parseInt(s1);

%>
<center>
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
	
	if(stat.equals("Issued"))
	{
		ps1=con.prepareStatement("select * from issued_books where BID=? and book_status='Issued';");
		
		ps1.setInt(1, bid);
		rs1=ps1.executeQuery();
		
		while(rs1.next()) 
		{
			iid=rs1.getInt(1);
			uid=rs1.getInt(2);
			bid=rs1.getInt(3);
			name=rs1.getString(4);
			issueDate = rs1.getDate(5);
			period=rs1.getInt(6);
			status=rs1.getString(7);
			
		}
		
		if(status.equals("Issued"))
		{

			
			String query1="insert into returned_books values("+rid+","+iid+","+bid+","+uid+",'"+name+"','"+issueDate+"','"+str+"','"+0+"');";    // java code
			// change the java code to SQL statement
			
			
			// Inserting element
			stmt=con.createStatement();
			stmt.executeUpdate(query1);
			out.println("Book "+name+" Returned with 0 fine");
			
			
			// Changing the status of book entry to issued in books table
			String query2="update books set book_status='Not Issued' where bid ="+bid;    
			stmt1=con.createStatement();
			stmt1.executeUpdate(query2);
		
			
			// Changing the status of book entry to issued in books table
			String query3="update issued_books set book_status='Returned' where bid ="+bid;    
			stmt2=con.createStatement();
			stmt2.executeUpdate(query3);
			
			//System.out.println("Book not available! ");
			
		}
		else
		{
			out.println("Book not Issued!");
		}
	
	}
	else
	{
		out.println("Book not Issued!");
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