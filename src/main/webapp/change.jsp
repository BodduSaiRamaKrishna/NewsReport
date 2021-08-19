<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Change Password Form</title>
        <link rel="stylesheet" href="style.jsp">
    </head>
</head>
<body>
</div>
<!-- create account div -->
<div class="container">
<h1 class="label" style="text-align: center;">Forgot Password</h1>
<table cellspacing="2" align="center" cellpadding="8" border="0">
<td align="right">Password :</td>
<td><input type="password" placeholder="Enter Password here" id="t4" class="tb" /></td>
</tr>
<tr>
<td align="right">Confirm Password :</td>
<td><input type="password" placeholder="Enter Password here" id="t5" class="tb" /></td>
</tr>
<tr>
<td></td>
<td>
  <input type="submit" value="Submit" onclick="registration()" /></td>
</tr>
</tr>
</table>

<div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
				
<script>
    
    function registration()
  {
    var pwd= document.getElementById("t4").value;     
    var cpwd= document.getElementById("t5").value;
    
        //email id expression code
    var pwd_expression = /^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[#?!@$%^&*-])/;
    var letters = /^[A-Za-z]+$/;
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if(pwd=='')
    {
      alert('Please enter Password');
    }
    else if(cpwd=='')
    {
      alert('Enter Confirm Password');
    }
    else if(pwd != cpwd)
    {
      alert ('Password not Matched');
    }
    else if(document.getElementById("t5").value.length < 8)
    {
      alert ('Password minimum length is 8');
    }
    else if(document.getElementById("t5").value.length > 12)
    {
      alert ('Password max length is 12');
    }
    else
    {                                   
        alert('Thank You for Re-Entreing The Password & You are Redirecting to Login Website');
         // Redirecting to other page or webste code. 
         window.location = "login.jsp"; 
    }
  }
  function clearFunc()
  {
    document.getElementById("t4").value="";
    document.getElementById("t5").value="";
  }
    
    </script>
</body>
</html>