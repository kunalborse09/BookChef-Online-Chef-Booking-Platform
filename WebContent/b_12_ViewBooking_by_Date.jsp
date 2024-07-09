<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
    background: #222D32;
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
form.button{
	height:45px;
	margin:45px 0;
}
form .button button{
height:100%;
width:100%;
outline:none;
colour:#fff;
border:none;
font-size:18px;
font-weight:500;
border-radius:5px;
letter-spacing:1px;
background:linear-gradient(135deg,rgb(103, 244, 113),rgb(74, 74, 255));
cursor:pointer;
}
</style>
</head>
<body>
 <div class="container">
        <div class="title">View Booking by Dates</div>
        <form action="b_13_View_Booking_By_Date.jsp" method="post">
            <div class="user-detail">
                <div class="input-box">
                    <div class="detail">Booking Date</div>
                    <input type="date"  name="booking_date">             
                </div>

            </div>
            
            <div class="button">
               <!--   <input type="submit" value="Register"> -->
                 <button type="submit" >View</button>
            </div>
        </form>
    </div>
    

</body>
</html>