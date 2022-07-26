<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PETIFY.COM</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div>
        <p id="head">PETIFY WORLD</p>
    </div>
    <div class="container">
    <fieldset class="apj">
        <form method="post" action="log">
        <h1><b>  SIGN IN<b></h1>
            <div class="form-group">
                <input type="email" name="username" placeholder="Enter your Email" required="required">
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Enter Password" required="required">
            </div>
            <input type="submit" class="button" value="Log in" />
            </form>
            <div>
               <a href="Registration.jsp" class="head1">Create your Account</a>
            </div>
            </fieldset>
    </div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert/.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed") {
		swal("Sorry","Wrong username and password","error");
	}else if(status == "invalidsemail"){
		swal("Oops","Enter Your Email","error");
	}else if(status == "invalidspass"){
		swal("Oops","Enter Your Password","error");
	}
	</script>
</body>
</html>