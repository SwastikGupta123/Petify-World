<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PETIFY.COM</title>
<link rel="stylesheet" href="css/ijk.css">
</head>
<style>
    body{
    margin:0px;
    padding: 0px;
    background: url('images/3.jpg');
    background-size:cover;
    background-repeat: no-repeat centre centre fixed;
    height: 500px;
    width:1000px;
    
}
/* NAVIGATION BAR*/
#navbar{
    display:block;
    align-items: center;

}
/*NAVIGATION BAR: LOGO AND IMAGE*/
#logo
{
display:inline-block ;
position: absolute;
margin: 5px 35px;
}
hr{
    margin: 0.1em auto;
}
#logo img{
    margin: 1px 18px;
    height: 90px ;

}
/*NAVIGATION BAR: list styling*/
#navbar ul{
    position: absolute;
    margin-left:200px;
    margin-top: 45px;
}
#navbar::before{
    position: absolute;
    content: "";
    height: 20%;
    width: 100%;
    z-index: -1;
    opacity:.4;
}


#navbar ul li{ 
    display: inline-block;
    list-style: none;
    font-size: 30px;
    cursor: pointer;
    
}
#navbar ul li a{ 
    display: inline-block;
    padding: 3px 80px;
    border-radius: 10px;
    text-decoration: none;
    color: brown;


}


#navbar ul li a:hover,
#navbar ul li a.active
{ 
    text-decoration: underline;
   background-color:aqua;

}
 .container {

margin: 100px 30px;
padding: 20px;
width: 60%;
}

.form-group input {
font-family: 'Bangers', cursive;
text-align: center;
display: block;
width: 450px;
padding: 1px;
border: 2px solid red;
margin: 11px auto;
font-size: 20px;
}

.container h1 {
color:rgb(12, 9, 177);
text-align: center;
font-size:40px;
}
.container button {
font-family: 'Bangers', cursive;
display: block;
width: 40%;
padding: 10px 10px;
margin: 40px auto;
font-size: 20px;
}
.right1 {
        
        position: absolute;
        right: 20px;
        top: 180px;
        width:40%;
        display: inline-block;
        border-radius: 48px;
    }
   .hpp{
    display: inline-block;
   } 
   .hpp li {
       font-family: 'Bangers', cursive;
       line-height:60px ;
       color:red;
       display: inline-block;
       font-size: 25px;
    }
    .hpp li a {
        color:darkgreen;
        text-decoration: none;
    }
    .hpp img{
        height:30px;
    }
</style>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div>
        <nav id="navbar">
            <div id="logo">
                <img src="images/logo.jpg" alt="not found">
                <div>
                    <hr> <hr>
                    <center><b>PETIFY</b><br><b>WORLD</b></center>
                    <hr><hr>
                </div>
            </div>
    
    <ul>
        <li class="item"><a href="Home.jsp">Home</a></li>
        <li class="item"><a href="Breeds.jsp">Our Breeds</a></li>
        <li class="item"><a href="Contact.jsp">Contact Us</a></li>
        <li class ="item"><a href="logout">Logout</a></li>
        
    </ul>
    </nav>
    <pre>


    </pre>
    <div class="container">
        <h1><b>Connect Us and We will try to resolve your Query.<b></h1>
        <form method="post" action="contact">
            <div class="form-group">
                <input type="text" name="name" placeholder="Enter your Name" required="required">
            </div>
            <div class="form-group">
                <input type="text" name="city" placeholder="Enter your City" required="required">
            </div>
            <div class="form-group">
                <input type="email" name="email" placeholder="Enter your Email Id" required="required">
            </div>
            <div class="form-group">
                <input type="text" name="mobile" placeholder="Enter your Phone Number" required="required">
            </div>
            <a href="contact.html"><button class="btn1">Submit</button></a>
        </form>
    </div>
    <div class="right1">
        <ul class="hpp">
            <li>Email Us on <img src="images/download.png" alt=""><a href="https://mail.google.com/" > petify743@gmail.com </a></li><br>
            <li>Dm Us on <img src="images/download.jpg" alt=""><a href="https://www.instagram.com/accounts/login/" >@petify_India</a></li>
            <li> Headquarters <img src="images/att.png" alt=""> <a> Anand Vihar,<br> 1Sr Floor,Gate No.4, 5 Sansad Marg,<br> New Delhi,India</a></li>
            <li> Helpline No. <img src="images/cmos.jpg" alt=""><a> +917841136124, +919351174568 </a></li>
        </ul> 
        
        </div>
        <!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert/.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success") {
		swal("Congrats"," Send Succesfull","success");
	}else if(status == "invalidname"){
		swal("Oops","Enter Your Name","error");
	}
	else if(status == "invalidcity"){
		swal("Oops","Enter Your City","error");
	}
	else if(status == "invalidemail"){
		swal("Oops","Enter Your Email","error");
	}
	else if(status == "invalidmobilenumber"){
		swal("Oops","Enter Your Mobile Number","error");
	}
	else if(status == "invalidmobilelength"){
		swal("Oops","Mobile Number should be of 10 digit","error");
	}
	</script>



</body>
</html>
   
