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
        <div class="title">View All Chef - City Wise</div>
        <form action="c_5_ViewAllChefCityWise.jsp">
            <div class="user-detail">
                <div class="input-box">
                    <div class="detail">City Name</div>
                    <input type="text" placeholder="Enter your City" name="city">
                </div>
               
                
            </div>
            
            <div class="button">
                <input type="submit" value="View">
            </div>
        </form>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
</body>
</html>