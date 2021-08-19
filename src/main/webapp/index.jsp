<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Index Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
</head>
<style>
   .na{
    background-color: black;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: blue;
  }
  .na ul 
   {
       margin: 0;
       padding: 1rem;
       margin-right: 10px;  
   }
   .na ul li{
       list-style: none;
       display: inline-block;
   }
   .na ul li a{
       text-decoration: none;
       color: blue;
       padding: 10px;
   }
   .na a{
       color: yellow;
       text-decoration: none;
       margin-left: 15px;
   }
   .na a:hover{
       color: green;
   }
   .na ul li a:hover{
      color: violent;
   }  
</style>
<body>
    <nav class="na">
        <h3>News Report</h3>
        <div>
        <ul>
            <li><a href="admin.jsp">Admin Login</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="signup.jsp">Sign Up</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="feedbackform.jsp">Feed Back</a></li>
        </ul>
        </div>
    </nav>
    <div class="back">
      <!-- Slide Show -->
     <section>
       <img class="mySlides" src="3.jpg"
        style="width:100%" height="100%">
       <img class="mySlides" src="7.jpg"
        style="width:100%" height="100%">
       <img class="mySlides" src="8.jpg"
        style="width:100%" height="100%">
     </section>
      <script>
  // Automatic Slideshow - change image every 3 seconds
  var myIndex = 0;
  carousel();
  
  function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 3000);
  }
  </script>
   </div>
</body>
</html>