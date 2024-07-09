<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.r3sys.db.dbConnection"%>
<%@ page import="com.r3sys.db.GetSetValue"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view chef city wise</title>
<style>
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            margin-top: 30px;
            color: #333;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        a.button {
            display: inline-block;
            padding: 8px 12px;
            margin: 5px;
            text-align: center;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
        }

        a.button.disapprove {
            background-color: #FF5733;
        }

        center {
            margin-top: 20px;
        }
    </style>
</head>
<body>
	
	<center>
	
	<%   
		Connection con = dbConnection.connect();
		int	uid = GetSetValue.getUid();
		
		try
		{
		PreparedStatement pstmt = con.prepareStatement("select * from bookings where U_ID=?");
		pstmt.setInt(1,uid);
		
		ResultSet rs = pstmt.executeQuery();
	%>
	<h1>Booking Status</h1>
	<table border="1">
	
	<tr>
		<th>ID</th>
		<th>U_ID</th>
		<th>C_ID</th>
		<th>bookingDetails</th>
		<th>bookingDate</th>
		<th>bookingTime</th>
		<th>status</th>
		
		
	</tr>
	
	<% while(rs.next()) { %>
	<tr>
		<td> <%= rs.getInt(1) %></td>
		<td> <%= rs.getInt(2) %></td>
		<td> <%= rs.getInt(3) %></td>
		<td> <%= rs.getString(4) %></td>
		<td> <%= rs.getString(5) %></td>
		<td> <%= rs.getString(6) %></td>
		<td> <%= rs.getString(7) %></td>
		
		
		
	</tr>
	<% }
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}%>
	
	
</body>
</html>