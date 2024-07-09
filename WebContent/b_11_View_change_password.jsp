<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.r3sys.db.dbConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update change password</title>
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
	
	 
	   
	    int ID = Integer.parseInt(request.getParameter("ID"));
		String new_pass = request.getParameter("new_pass");
		
		
		
		Connection con = dbConnection.connect();
		try {
			
			PreparedStatement pstmt = con.prepareStatement("update chef set password=? where ID=?");
			pstmt.setString(1,new_pass);
			pstmt.setInt(2,ID);
				
			int i = pstmt.executeUpdate();
			if(i > 0)
			{
				System.out.println("change password : "+i);
				
			}
			else
			{
				System.out.println("not change password : "+i);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    

		//Connection //con = dbConnection.connect();
		
		try
		{
		PreparedStatement pstmt = con.prepareStatement("select * from chef where ID=?");
		pstmt.setInt(1,ID);
		
		ResultSet rs = pstmt.executeQuery();
	%>
	
	
	
	<h1>Password Change Successfully...</h1>
	
	
	<table border="1">
	

	
	<tr>
		<th>ID</th>
		<th>chef_name</th>
		<th>password</th>
		
		
	</tr>
	
	<% while(rs.next()) { %>
	<tr>
		<td> <%= rs.getInt(1) %></td>
		<td> <%= rs.getString(2) %></td>
		<td> <%= rs.getString(12) %></td>
		
	</tr>
	<% }
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}%>
	
	
</body>
</html>