<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<title>Home Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
<link rel="stylesheet" href="about.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
ul.nav {
        margin: 0;
        padding: 0;
      }

      ul.nav li {
        padding: 5px;
        display: inline-block;
      }
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <img src="1.jpg" style="width:45%;" class="w3-round"><br><br>
    <h4><b>News Report</b></h4>
    <p class="w3-text-grey"></p>
  </div>
  <div class="w3-bar-block">
     <a href="newsinsertion.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fas fa-newspaper w3-margin-right"></i>NEWS</a>
      <a href="selection.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fas fa-paper-plane w3-margin-right"></i>USER SELECTION</a>
     <a href="location.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>LOCATION</a>
     <a href="portfolio.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>PORTFOLIO</a> 
     <a href="about.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>ABOUT</a> 
     <a href="contact.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fas fa-id-card w3-margin-right"></i>CONTACT</a>
     <a href="feedbackform.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>FEED BACK</a>
     <a href="index.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>LOGIN</a>
  </div>
  <div class="w3-panel w3-large">
    <i class="fab fa-facebook-square w3-margin-right"></i><a href="https://www.facebook.com/">FACEBOOK</a><br>
    <i class="fab fa-instagram w3-margin-right"></i><a href="instagram.com/accounts/login/?hl=en">INSTAGRAM</a><br>
    <i class="fab fa-snapchat-square w3-margin-right"></i><a href="https://accounts.snapchat.com/accounts/login?continue=https%3A%2F%2Faccounts.snapchat.com%2Faccounts%2Fwelcome">SNAPCHAT</a><br>
    <i class="fab fa-pinterest w3-margin-right"></i><a href="https://in.pinterest.com/login/">PINTEREST</a><br>
    <i class="fab fa-twitter w3-margin-right"></i><a href="https://twitter.com/login?lang=en-gb">TWITTER</a><br>
    <i class="fab fa-linkedin-in w3-margin-right"></i><a href="https://www.linkedin.com/home">LINKEDIN</a>
  </div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
    <h1><b>News Report</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">Filter:</span> 
      <button class="w3-button w3-black">ALL</button>
      <button class="w3-button w3-white"><i class="far fa-gem w3-margin-right"></i>Design</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i><a href="photos.jsp">Photos</a></button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i><a href="videos.jsp">Videos</a></button>
      <button class="w3-button w3-white w3-hide-small"><i class="fas fa-newspaper w3-margin-right"></i><a href="newsinsertion.jsp">     News</a></button>
    </div>
    </div>
  </header>

  <!-- Images of Me -->
  <div class="w3-row-padding w3-padding-16" id="about">
    <div class="w3-col m6">
      <img src="13.jpg" alt="Me" style="width:100%">
    </div>
    <div class="w3-col m6">
      <img src="15.jpg" alt="Me" style="width:100%">
    </div>
  </div>

  <div class="about-section">
    <h1>About Us Page</h1>
    <p>Some text about who we are and what we do.</p>
    <p>These Are Our Team Members Helped Us to Succeded this website</p>
  </div>
  
  <h2 style="text-align:center">Our Team</h2>
  <div class="row">
    <div class="column">
      <div class="card">
        <img src="/w3images/team1.jpg" alt="" style="width:100%">
        <div class="container">
          <h2>B.Mahanth</h2>
          <p class="title">Developer</p>
          <p>190030115</p>
          <p>bmahanth6@gmail.com</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>
  
    <div class="column">
      <div class="card">
        <img src="/w3images/team2.jpg" alt="" style="width:100%">
        <div class="container">
          <h2>B.Sai Rama Krishna</h2>
          <p class="title">Developer</p>
          <p>190030176</p>
          <p>bodduramji369@gmail.com</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>
    
    <div class="column">
      <div class="card">
        <img src="/w3images/team3.jpg" alt="" style="width:100%">
        <div class="container">
          <h2>B.N.S.Sai Kiran</h2>
          <p class="title">Developer</p>
          <p>190030180</p>
          <p>bnssaikiran@gmail.com</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Contact Section -->
  <div class="w3-container w3-padding-large w3-grey">
    <h4 id="contact"><b>Contact Me</b></h4>
    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
        <p>190030115@kluniversity.in</p>
        <p>190030176@kluniversity.in</p>
        <p>190030180@kluniversity.in</p>
      </div>
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
        <p>9999999999</p>
        <p>7032172001</p>
        <p>9999999999</p>
      </div>
    </div>
    <hr class="w3-opacity">
    <form action="/action_page.php" target="_blank">
      <div class="w3-section">
        <label>Name</label>
        <input class="w3-input w3-border" type="text" name="Name" required>
      </div>
      <div class="w3-section">
        <label>Email</label>
        <input class="w3-input w3-border" type="text" name="Email" required>
      </div>
      <div class="w3-section">
        <label>Message</label>
        <input class="w3-input w3-border" type="text" name="Message" required>
      </div>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-paper-plane w3-margin-right"></i>Send Message</button>
    </form>
  </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-dark-grey">
    <div class="w3-third">
      <h3>BLOG POSTS</h3>
      <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-16">
          <img src="" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large"></span><br>
          <span></span>
        </li>
      </ul>
    </div>

    <div class="w3-third">
      <h3>POPULAR TAGS</h3>
      <p>
        <span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">New York</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">London</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">IKEA</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">NORWAY</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">DIY</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Baby</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Family</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">News</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Clothing</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Shopping</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">Sports</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Games</span>
      </p>
    </div>
     <ul class="nav">
        <li>
          <a href="about.jsp">About</a>
        </li>
        <li>
          <a href="contact.jsp">Contact</a>
        </li>
        <li>
          <a href="terms.jsp">Terms</a>
        </li>
      </ul>
  </div>
  </footer>
<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>
