<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PETIFY.COM</title>
<link rel="stylesheet" href="css/style2.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div>
        <p id="head">PETIFY WORLD</p>
    </div>
    <div class="container">
        <form method="post" action="register">
        <fieldset class="apj">
        <h1><b>  SIGN UP<b></h1>
            <div class="form-group">
                <input type="text" name="name" placeholder="Enter your Name" required="required">
            </div>
            <div class="form-group">
                <input type="text" name="email" placeholder="Enter Email" required="required">
            </div>
            <div class="form-group">
                <input type="password" name="pass" placeholder="Enter Password" required="required">
            </div>
            <div class="form-group">
                <input type="password" name="re_pass" placeholder="Enter Password Again" required="required">
            </div>
            <div class="form-group">
                <input type="text" name="contact" placeholder="Enter Mobile Number" required="required">
            </div>
            <input type="submit" class="button" value="Register" />
            </fieldset>
        </form>
        </div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert/.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success") {
		swal("Congrats","Account Created Succesfull","success");
	}else if(status == "invalidname"){
		swal("Oops","Enter Your Name","error");
	}
	else if(status == "invalidemail"){
		swal("Oops","Enter Your Email","error");
	}
	else if(status == "invalidpassword"){
		swal("Oops","Enter Your Password","error");
	}
	else if(status == "invalidconfirmpassword"){
		swal("Oops","Enter Your Correct Password","error");
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