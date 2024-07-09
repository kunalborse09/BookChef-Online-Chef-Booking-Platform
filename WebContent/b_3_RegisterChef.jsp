<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*"%>
<%@ page import="com.r3sys.db.dbConnection"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <style>
    
    	
    @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body{
    display: flex;
    height: 100vh;
    justify-content: center;
    align-items: center;
    background: linear-gradient(135deg,rgb(103, 244, 113),rgb(74, 74, 255));
}
.container{

    max-width: 700px;
    width: 100%;
    background: #fff;
    padding: 25px 30px;
    border-radius: 5px;

}
.container .title{
    font-size: 25px ;
    font-weight: 500;
    position: relative;
}
.container .title::before{
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    height: 10;
    height: 3px;
    width: 30px;
    background: linear-gradient(135deg,rgb(103, 244, 113),rgb(74, 74, 255));
}
.container  form .user-detail{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin: 20px 0 12px 0 ;
}
form .user-detail .input-box{
margin-bottom: 15PX;
    width: calc(50% - 20px);

}
.user-detail .input-box .detail{
    display: block;
    font-weight: 500;
    margin-bottom: 5px;
}
.user-detail .input-box input{
    height: 45px;
    width: 100%;
    outline: none;
    border-radius: 5px;
    border: 1px solid #4968f1;
    padding-left: 15px;
    font-size: 16px;
    border-bottom-width: 2px;
    transition: all 0.3s ease;
}

.user-detail .input-box input:focus,
.user-detail .input-box input:valid{
    border-color: #9b59b6;
}

form .gender-detail .gender-title{
    font-size: 20px;
    font-weight: 500;
}
form .gender-detail .category{
    display:flex;
    width: 80%;
}
   
    
    </style>
</head>
<body>
    <div class="container">
        <div class="title">Register chef</div>
        <form action="#">
            <div class="user-detail">
                <div class="input-box">
                    <div class="detail">Chef Name</div>
                    <input type="text" placeholder="Enter your name" name="chef_name">
                </div>
                <div class="input-box">
                    <div class="detail">Speciality</div>
                    <input type="text" placeholder="Enter your speciality" name="speciality">
                </div>
                <div class="input-box">
                    <div class="detail">Open Time</div>
                    <input type="text" placeholder="Enter your openTime" name="openTime">
                </div>
                <div class="input-box">
                    <div class="detail">Close Time</div>
                    <input type="text" placeholder="Enter your closeTime" name="closeTime">
                </div>
                <div class="input-box">
                    <div class="detail">Address</div>
                    <input type="text" placeholder="Enter your address" name="address">
                </div>
                <div class="input-box">
                    <div class="detail">Area</div>
                    <input type="text" placeholder="Enter your area" name="area">
                </div>
                <div class="input-box">
                    <div class="detail">City</div>
                    <input type="text" placeholder="Enter your city" name="city">
                </div>
                <div class="input-box">
                    <div class="detail">Pincode</div>
                    <input type="text" placeholder="Enter your pincode" name="pincode">
                </div>
                <div class="input-box">
                    <div class="detail">Contact</div>
                    <input type="text" placeholder="Enter your contact" name="contact">
                </div>
                <div class="input-box">
                    <div class="detail">Email</div>
                    <input type="text" placeholder="Enter your email" name="email">
                </div>
                <div class="input-box">
                    <div class="detail">Password</div>
                    <input type="text" placeholder="Enter your Password" name="password">
                </div>
                
            </div>
            
            <div class="button">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
    
    <%
    
    
    String chef_name = request.getParameter("chef_name");
	String speciality = request.getParameter("speciality");
	String openTime = request.getParameter("openTime");
	String closeTime = request.getParameter("closeTime");
	String address = request.getParameter("address");
	String area = request.getParameter("area");
	String city = request.getParameter("city");
	String pincode = request.getParameter("pincode");
	String contact = request.getParameter("contact");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	
	
	Connection con = dbConnection.connect();
	try {
		PreparedStatement pstmt = con.prepareStatement("insert into chef values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pstmt.setInt(1, 0);
		pstmt.setString(2,chef_name );
		pstmt.setString(3,speciality );
		pstmt.setString(4,openTime );
		pstmt.setString(5, closeTime);
		pstmt.setString(6, address);
		pstmt.setString(7, area);
		pstmt.setString(8, city);
		pstmt.setString(9, pincode);
		pstmt.setString(10, contact);
		pstmt.setString(11, email);
		pstmt.setString(12, password);
		pstmt.setString(13, "pending");
		
		int i = pstmt.executeUpdate();
		System.out.println("row count : "+i);
		
		if(i>0)
		{
			response.sendRedirect("b_1_ChefLogin.html");
		}
		else
		{
			response.sendRedirect("b_3_RegisterChef.jsp");
		}
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    
    
    
    
    
    
    
    
    
    %>
    
</body>
</html>





















