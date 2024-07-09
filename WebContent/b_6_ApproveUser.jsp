<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="com.r3sys.db.dbConnection"%>
<%@ page import="com.r3sys.db.GetSetValue"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Approve Chef</title>
</head>
<body>



<%

	Connection con = dbConnection.connect();
	//int ID = Integer.parseInt(request.getParameter("ID"));
	int ID = Integer.parseInt(request.getParameter("ID"));
	try
	{
		PreparedStatement pstmt = con.prepareStatement("update bookings set status = ? where ID=?");
		pstmt.setString(1,"Approved");
		pstmt.setInt(2,ID);
		
		int i = pstmt.executeUpdate();
		if(i > 0)
		{
			System.out.println("Approved : "+i);
			response.sendRedirect("b_8_ViewApproveUser.jsp");
		}
		else
		{
			System.out.println("disApproved : "+i);
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	


%>

</body>
</html>