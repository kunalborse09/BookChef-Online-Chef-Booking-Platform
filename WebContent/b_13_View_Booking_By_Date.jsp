<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.r3sys.db.dbConnection"%>
<%@ page import="java.time.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	<%
   	
   //	String booking_date = request.getParameter("booking_date");
	
	
	Connection con = dbConnection.connect();
	String booking_date = request.getParameter("booking_date");
	try{
	PreparedStatement psmt = con.prepareStatement("select * from bookings where bookingDate=? and status=?");
	psmt.setString(1, booking_date);
	psmt.setString(2, "Approved");
	ResultSet rs = psmt.executeQuery();
%>

		<table border="2">
			<tr>
				<th>ID</th>
				<th>U_Id</th>
				<th>C_Id</th>
				<th>BookingDetails</th>
				<th>BookingDate</th>
				<th>BookingTime</th>
				<th>status</th>

			</tr>
		
		<% while(rs.next()){%>
		
		<tr>
			<td> <%= rs.getInt(1) %></td>
			<td> <%= rs.getString(2) %></td>
			<td> <%= rs.getString(3) %></td>
			<td> <%= rs.getString(4) %></td>
			<td> <%= rs.getString(5) %></td>
			<td> <%= rs.getString(6) %></td>
			<td> <%= rs.getString(7) %></td>
			
		</tr>	

<% 		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}%>
	</table>
		
		
</body>
</html>