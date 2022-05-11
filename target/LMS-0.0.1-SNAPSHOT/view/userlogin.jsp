<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>



<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>

</head>

<body>

<%! String userdbName;

String userdbPsw;

%>

<%
Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.cj.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/library";

String user = "root";

String password = "1234";



String sql = "select * from users where USERNAME=? and PASSWORD1=?";



String name = request.getParameter("name");

String pass = request.getParameter("password");


	
try {

	Class.forName(driverName);

	con = DriverManager.getConnection(url, user, password);

	ps = con.prepareStatement(sql);

	ps.setString(1, name);

	ps.setString(2, pass);

	rs = ps.executeQuery();

	while (rs.next())

	{

		userdbName = rs.getString(2);

		userdbPsw = rs.getString(3);
	}

		if (name.equals(userdbName))

		{
			if(pass.equals(userdbPsw))
			{
				session.setAttribute("name", userdbName);
				
				response.sendRedirect("user");
			}
			else
			{
				response.sendRedirect("errors");
			}
		}

		else
		{
			response.sendRedirect("errors");
		}

			

	rs.close();

	ps.close();

}

catch (SQLException sqe)

{

	out.println(sqe);

}

%>

</body>

</html>