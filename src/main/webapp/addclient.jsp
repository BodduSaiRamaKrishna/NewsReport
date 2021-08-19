<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% 
 
    if(request.getParameter("submit")!=null)
    {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");

        String password = request.getParameter("password");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "root");
        pst = con.prepareStatement("insert into register(name, email, username, password) values(?,?,?,?)");
        pst.setString(1, name);
        pst.setString(2, email);
        pst.setString(3, username);
        pst.setString(4, password);
        pst.executeUpdate();  
        
        %> 
    <script>   
        alert("Record Adddeddddd");     
    </script> 
    <%             
    }
   %>
 <!DOCTYPE html>

<title>Add Client Page</title>
<style>
body {
    color: black;
    background: #f5f5f5;
    font-family: 'Varela Round', sans-serif;
    font-size: 13px;
}
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
    min-width: 1000px;
    background: white;
    padding: 20px 25px;
    border-radius: 3px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 15px;
    background: #299be4;
    color: white;
    padding: 16px 30px;
    margin: -20px -25px 10px;
    border-radius: 3px 3px 0 0;
}
.table-title h2 {
    margin: 5px 0 0;
    font-size: 24px;
}
.table-title .btn {
    color: #566787;
    float: right;
    font-size: 13px;
    background: #fff;
    border: none;
    min-width: 50px;
    border-radius: 2px;
    border: none;
    outline: none !important;
    margin-left: 10px;
}
.table-title .btn:hover, .table-title .btn:focus {
    color: #566787;
    background: #f2f2f2;
}
.table-title .btn i {
    float: left;
    font-size: 21px;
    margin-right: 5px;
}
.table-title .btn span {
    float: left;
    margin-top: 2px;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
    padding: 12px 15px;
    vertical-align: middle;
}
table.table tr th:first-child {
    width: 60px;
}
table.table tr th:last-child {
    width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
    background: #f5f5f5;
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}	
table.table td:last-child i {
    opacity: 0.9;
    font-size: 22px;
    margin: 0 5px;
}
table.table td a {
    font-weight: bold;
    color: #566787;
    display: inline-block;
    text-decoration: none;
}
table.table td a:hover {
    color: #2196F3;
}
table.table td a.settings {
    color: #2196F3;
}
table.table td a.delete {
    color: #F44336;
}
table.table td i {
    font-size: 19px;
}
table.table .avatar {
    border-radius: 50%;
    vertical-align: middle;
    margin-right: 10px;
}
.status {
    font-size: 30px;
    margin: 2px 2px 0 0;
    display: inline-block;
    vertical-align: middle;
    line-height: 10px;
}
.text-success {
    color: #10c469;
}
.text-info {
    color: #62c9e8;
}
.text-warning {
    color: #FFC107;
}
.text-danger {
    color: #ff5b5b;
}
.pagination {
    float: right;
    margin: 0 0 5px;
}
.pagination li a {
    border: none;
    font-size: 13px;
    min-width: 30px;
    min-height: 30px;
    color: #999;
    margin: 0 2px;
    line-height: 30px;
    border-radius: 2px !important;
    text-align: center;
    padding: 0 6px;
}
.pagination li a:hover {
    color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
    background: #03A9F4;
}
.pagination li.active a:hover {        
    background: #0397d6;
}
.pagination li.disabled i {
    color: #ccc;
}
.pagination li i {
    font-size: 16px;
    padding-top: 6px
}
.hint-text {
    float: left;
    margin-top: 10px;
    font-size: 13px;
}

.topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: cyan;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: pink;
  color: black;
}

/* Add a color to the active/current link */


</style>

    <body>
    <div class="align-right">
<div class="topnav">
<a href="adminpage.jsp" class="navbar-brand">Home</a> &nbsp;&nbsp;
  <a class="active" href="about.jsp" style="align-right">AboutUs</a>
  <a class="align-right" href="viewclients.jsp">Client Logins</a>
   
    
      <a href="addclient.jsp">Add Clients</a>
       <a href="updateclient.jsp">Update Clients</a>
      <a href="deleteclients.jsp">Delete Clients</a>
     
 
  <a href="admin.jsp">Log out</a>
</div>
</div>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-5">
                       <center> <h2><b>Add Clients</b></h2></center>
                    </div>
    
                </div>
            </div>
    

            
             </div>
      <!-- create account div -->
      <div class="container">
        <form action="signup" method="post">
        <br>
        <br>
        <br>
      <table cellspacing="2" align="center" cellpadding="8" border="0">
      <tr>
      <td align="right">  Name   :</td>
      <td><input type="text" name="name" placeholder="Enter user here" id="t1" class="tb" /></td>
      </tr>
      <tr>
      <td align="right">  Email  :</td>
      <td><input type="text" name="email" placeholder="Enter Email ID here" id="t2" class="tb" /></td>
      </tr>
      <tr>
      <td align="right">  User   :</td>
      <td><input type="text" name="username" placeholder="Enter Username here" id="t3" class="tb" /></td>
      </tr>
      <tr>
      <td align="right"> Password:</td>
      <td><input type="password" name="password" placeholder="Enter Password here" id="t4" class="tb" /></td>
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
        </div>
 
    </body>
</html>