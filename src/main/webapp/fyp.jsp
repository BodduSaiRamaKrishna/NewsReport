<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Forgot Password Page</title>
<script>
    function registration()
  {
    var email= document.getElementById("t2").value;
    //email id expression code
    var pwd_expression = /^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[#?!@$%^&*-])/;
    var letters = /^[A-Za-z]+$/;
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if(email=='')
    {
      alert('Please enter your user email id');
    }
    else if (!filter.test(email))
    {
      alert('Invalid email');
    }
    else
    {                                   
        alert('Verfication Link Will Send To Your Mail');
         // Redirecting to other page or webste code. 
         window.location = "change.jsp"; 
    }
  }
  function clearFunc()
  {
    document.getElementById("t2").value="";
  }
</script>
 
<style>
html{
 background-image: url("2.jpeg");
}
         body {
            margin: 0;
            padding: 0;
            background-color: rgb(230, 236, 240);
            font-family: sans-serif;
        }
        
        .loginbox {
            width: 600px;
            height: 420px;
            background: #362929;
            color: white;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            box-sizing: border-box;
            padding: 70px 30px
        }
        h1 {
            margin: 0;
            padding: 0 0 20 px;
            text-align: center;
            font-size: 22px;
        }
        
        .loginbox p {
            margin: 0;
            padding: 0;
            font-weight: bold;
        }
        
        .loginbox input {
            width: 100%;
            margin-bottom: 20px;
        }
        
        .loginbox input[type="text"],
        input[type="password"] {
            border: none;
            border-bottom: 1px solid white;
            background: transparent;
            outline: none;
            height: 40px;
            color: white;
            font-size: 18px;
        }
        
        .loginbox input[type="submit"] {
            border: none;
            outline: none;
            height: 40px;
            background: red;
            color: white;
            font-size: 18px;
            border-radius: 20px;
        }
        
        .loginbox input[type="submit"]:hover {
            cursor: pointer;
            background: #ffc107;
            color: #000;
        }
        
        .loginbox a {
            text-decoration: none;
            font-size: 12px;
            line-height: 20px;
            color: darkgrey;
        }
        
        .loginbox a:hover {
            color: #ffc107;
        }
</style>
</head>
<body>
        <div class="loginbox">
            <h3>Please Enter The Email Id</h3>
            <form name="forgotpasswordform" action="change.html" method="get" onsubmit="return registration()">
                <input type="text" name= "email" placeholder="Enter Email" id="t2" class="tb"/>
                <input type="submit" name="submit" value="Submit"/><br>
            </form>
        </div>
</body>
</html>