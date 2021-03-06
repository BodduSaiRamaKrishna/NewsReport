<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <title>SignUp Form</title>
            <link href="style.jsp" >
        </head>
    </head>
    <style>
      *{
    padding: 0;
    margin: 0;
}
body{
    background: url(2.jpg) no-repeat;
    background-size: cover;
    align-items: center;
    justify-content: center;
    display: flex;
    font-family: sans-serif;
}
.container{
    position: relative;
    margin-top: 150px;
    width: 600px;
    height: auto;
    background: #dedede;
    border-radius: 5px;
}
.label{
    padding: 15px 100px;
    font-size: 35px;
    font-weight: bold;
    color: #130f40;
}
.login_form{
    padding: 20px 40px;
}
.login_form .font{
    font-size: 18px;
    color: #130f40;
    margin: 5px 0;
}
.login_form input{
    height: 40px;
    width: 100%;
    padding: 0 5px;
    font-size: 18px;
    outline: none;
    border: 1px solid silver;
}
.login_form .font2{
    margin-top: 30px;
}
.login_form button{
    margin: 45px 0 30px 0;
    height: 45px;
    width: 365px;
    font-size: 20px;
    color: white;
    outline: none;
    cursor: pointer;
    font-weight: bold;
    background: #1a237e;
    border-radius: 3px;
    border: 1px solid #3949ab;
    transition: .5s;
}
.login_form button:hover{
    background: #151c6a;
}
.login_form #email_error,
.login_form #pass_error{
    margin-top: 5px;
    width: 345px;
    font-size: 18px;
    color: #C62828;
    background: rgba(255, 0,0, 0.1);
    text-align: center;
    padding: 5px 8px;
    border-radius: 3px;
    border: 1px solid #EF9A9A;
    display: none; 
}
.right {
    position: absolute;
    top: 0;
    right: 0;
    box-sizing: border-box;
    padding: -150px;
    width: 400px;
    height: 400px;
    background: url('https://goo.gl/YbktSj');
    background-size: cover;
    background-position: left;
    border-radius: 0 2px 2px 0;
  }
  
  .right .loginwith {
    display: block;
    margin-bottom: 150px;
    font-size: 28px;
    color: #FFF;
    text-align: none;
  }
  
  button.social-signin {
    margin-bottom: 50px;
    width: 220px;
    height: 36px;
    border: none;
    border-radius: 2px;
    color: #FFF;
    font-family: 'Roboto', sans-serif;
    font-weight: 500;
    transition: 0.2s ease;
    cursor: pointer;
  }
  
  button.social-signin:hover,
  button.social-signin:focus {
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
    transition: 0.2s ease;
  }
  
  
  input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
  }
  
  /* Style the submit button */
  input[type=submit] {
    background-color: #4CAF50;
    color: white;
  }
  
  /* Style the container for inputs */
  /* The message box is shown when the user clicks on the password field */
  #message {
    display:none;
    background: #f1f1f1;
    color: #000;
    position: relative;
    padding: 20px;
    margin-top: 10px;
  }
  
  #message p {
    padding: 10px 35px;
    font-size: 18px;
  }
  
  /* Add a green text color and a checkmark when the requirements are right */
  .valid {
    color: green;
  }
  
  .valid:before {
    position: relative;
    left: -35px;
    content: "???";
  }
  
  /* Add a red text color and an "x" when the requirements are wrong */
  .invalid {
    color: red;
  }
  
  .invalid:before {
    position: relative;
    left: -35px;
    content: "???";
  }
  @import url(https://fonts.googleapis.com/css?family=Roboto:400,300,500);
  *:focus {
    outline: none;
  }
  #login-box {
    position: relative;
    margin: 5% auto;
    width: 300px;
    height: 600px;
    background: #FFF;
    border-radius: 2px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.6);
  }
  
  .left {
    position: absolute;
    top: 0;
    left: 0;
    box-sizing: border-box;
    padding: 20px;
    width: 100px;
    height: 400px;
  }
  
  h1 {
    margin: 0 0 20px 0;
    font-weight: 200;
    font-size: 18px;
  }
  
  input[type="text"],
  input[type="password"] {
    display: block;
    box-sizing: border-box;
    margin-bottom: 20px;
    padding: 4px;
    width: 380px;
    height: 32px;
    border: none;
    border-bottom: 1px solid #AAA;
    font-family: 'Roboto', sans-serif;
    font-weight: 400;
    font-size: 15px;
    transition: 0.2s ease;
  }
  
  input[type="text"]:focus,
  input[type="password"]:focus {
    border-bottom: 2px solid #16a085;
    color: #16a085;
    transition: 0.2s ease;
  }
  
  input[type="submit"] {
    margin-top: 28px;
    width: 120px;
    height: 32px;
    background: #16a085;
    border: none;
    border-radius: 2px;
    color: #FFF;
    font-family: 'Roboto', sans-serif;
    font-weight: 500;
    text-transform: uppercase;
    transition: 0.1s ease;
    cursor: pointer;
  }
  
  input[type="submit"]:hover,
  input[type="submit"]:focus {
    opacity: 0.8;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
    transition: 0.1s ease;
  }
  
  input[type="submit"]:active {
    opacity: 1;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
    transition: 0.1s ease;
  }
  .top{
     position: absolute;
    top: 20;
    right: 0;
    width: 300px;
    height: 400px;
  
  }
  #main .btn{width:170px; height:35px; outline:none;  color:#f7f7f7; font-weight:bold; border:0px solid #f26724; 
    text-shadow: 0px 0.5px 0.5px #fff; border-radius: 2px; font-weight: 200; color: #f26724; letter-spacing: 1px; 
    font-size:14px; background-color:black; -webkit-transition: 2s; -moz-transition: 2s; transition: 2s;}
  
    #main .btn:hover{background-color:black; outline:none;  border-radius: 2px; color:#f2f2f2; border:1px solid #f1f1f1;
    -webkit-transition: 1s; -moz-transition: 1s; transition: 1s; }
    </style>
    <body>
      </div>
      <!-- create account div -->
      <div class="container">
        <form action="signup" method="post">
        <h1 class="label" style="text-align: center;">SignUp</h1>
      <table cellspacing="2" align="center" cellpadding="8" border="0">
      <tr>
      <td align="right">Name :</td>
      <td><input type="text" name="name" placeholder="Enter user here" id="t1" class="tb" /></td>
      </tr>
      <tr>
      <td align="right">Email ID :</td>
      <td><input type="text" name="email" placeholder="Enter Email ID here" id="t2" class="tb" /></td>
      </tr>
      <tr>
      <td align="right">Username :</td>
      <td><input type="text" name="username" placeholder="Enter Username here" id="t3" class="tb" /></td>
      </tr>
      <tr>
      <td align="right">Password :</td>
      <td><input type="password" name="password" placeholder="Enter Password here" id="t4" class="tb" /></td>
      </tr>
      <tr>
      <td align="right">Confirm Password :</td>
      <td><input type="password" name="confirmpassword" placeholder="Enter Password here" id="t5" class="tb" /></td>
      </tr>
      <tr>
      <td></td>
      <td>
      <input type="submit" value="Submit" onclick="return registration(event)" /></td>
      </tr>
      </tr>
      </table>
      </div>
    </form>        
    <script>
        function registratione(e)
      {
        	e.preventDefault()
        var name= document.getElementById("t1").value;
        var email= document.getElementById("t2").value;
        var uname= document.getElementById("t3").value;
        var pwd= document.getElementById("t4").value;     
        var cpwd= document.getElementById("t5").value;
        
            //email id expression code
        var pwd_expression = /^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[#?!@$%^&*-])/;
        var letters = /^[A-Za-z]+$/;
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    
        if(name=='')
        {
          alert('Please enter your name');
          return false;
        }
        else if(!letters.test(name))
        {
          alert('Name field required only alphabet characters');
          return false;
        }
        else if(email=='')
        {
          alert('Please enter your user email id');
          return false;
        }
        else if (!filter.test(email))
        {
          alert('Invalid email');
          return false;
        }
        else if(uname=='')
        {
          alert('Please enter the user name.');
          return false;
        }
        else if(!letters.test(uname))
        {
          alert('User name field required only alphabet characters');
          return false;
        }
        else if(pwd=='')
        {
          alert('Please enter Password');
          return false;
        }
        else if(cpwd=='')
        {
          alert('Enter Confirm Password');
          return false;
        }
        else if(pwd != cpwd)
        {
          alert ('Password not Matched');
          return false;
        }
        else if(document.getElementById("t5").value.length < 8)
        {
          alert ('Password minimum length is 8');
          return false;
        }
        else if(document.getElementById("t5").value.length > 12)
        {
          alert ('Password max length is 12');
          return false;
        }
        else
        {                                   
              alert('Thank You for SignUp & You are Redirecting to Login Website');
             // Redirecting to other page or webste code. 
             window.location = "register"; 
        }
      }
      function clearFunc()
      {
        document.getElementById("t1").value="";
        document.getElementById("t2").value="";
        document.getElementById("t3").value="";
        document.getElementById("t4").value="";
        document.getElementById("t5").value="";
      }
        
        </script>
    </body>
    </html>