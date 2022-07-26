<%
if(session.getAttribute("name")==null){
	response.sendRedirect("LogIn.jsp");
}	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PETIFY.COM</title>
<link rel="stylesheet" href="css/abc.css">
</head>
<body>
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
        <li class="item"><a href="logout">Logout</a></li>
        
    </ul>
    </nav>
    <pre>

    



    </pre>
    
    <div>
        <p id="head">Welcome to PETIFY</p>
    </div>
    <pre>


    </pre>


        <h2 id="para"><pre><i>"Until one has loved an animal, a part of one's soul remains unawakened."

                           By Anatole France
    
</i></pre>
</h2>
    </p>  
</div>
</div>
    </div>
    <div class="abc">
    <img src="images/9.png" alt="" width="900px">
</div>
<pre>
    <p id="fg"><i>
   We all know the value of animals in our life. The innocent creatures who can't even speak
   just show their love towards us by their gestures.So for providing the love of your beloved
   animals, We are here to serve you. You can easily review different kinds of breeds of Dogs 
   and Cats in our website. Call us and you will see your favorite puppy and kitten in your home 
   delivered by us. Hurry up or else you will miss to welcome new member in your family.
 </i></p>
</pre>
<div class="pic">
    <img  src="images/10.jpg" alt="" width="650px" height="400px">
    <pre>

    </pre>
    
    <img  src="images/11.jpg" alt="" width="600px" height="400px">
</div>
</body>
</html>