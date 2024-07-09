<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="com.r3sys.db.dbConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Disapprove Chef</title>
</head>
<body>

<%

	Connection con = dbConnection.connect();
	int ID = Integer.parseInt(request.getParameter("ID"));
	try
	{
		PreparedStatement pstmt = con.prepareStatement("update bookings set status = ? where ID=?");
		pstmt.setString(1,"Disapproved");
		pstmt.setInt(2,ID);
		
		int i = pstmt.executeUpdate();
		if(i > 0)
		{
			System.out.println("Disapproved : "+i);
			response.sendRedirect("b_9_ViewDisapproveUser.jsp");
		}
		else
		{
			System.out.println("not update : "+i);
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	


%>

</body>
</html>