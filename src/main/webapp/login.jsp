<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
    <title>Login Page</title>
    <script type="text/javascript">
    function validate_loginform()
         {
           var passw=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
           var user= /^[0-9a-zA-Z-'_]+$/;
           var pw=document.loginform.password.value;
           var un=document.loginform.username.value;
           if(pw.match(passw)) 
            { }
           else
           { 
                    alert('Wrong...! Password....Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters');
                    return false;
           } 
           if(un.match(user))
            {}
           else
            {
            alert("Invalid UserName ..!");
            return false;
            }
             
    }
    </script>
     
    <style>
    html{
     background-image: url("4.jpg");
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
                 
                <h1>Login Here</h1>
                <form name="loginform" action="login" method="post" onsubmit="return validate_loginform()">
                    <p>Username</p>
                    <input type="text" name= "username" placeholder="Enter Username" required/>
                    <p>Password</p>
                    <input type="Password" name="password" placeholder="Enter Password" required/>
                    <input type="submit" name="submit" value="Login"/><br>
                </form>
                    <a href="fyp.jsp" align='center'>Forget your Password ?</a><br>
                    <a href="signup.jsp" align='center'>Don't have account ?</a>
            </div>
    </body>
    </html>