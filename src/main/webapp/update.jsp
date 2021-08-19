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
        pst = con.prepareStatement("update register set  email= ?, username =?, password= ? where name = ?");
        pst.setString(1, name);
        pst.setString(2, email);
        pst.setString(3, username);
        pst.setString(4, password);
        pst.executeUpdate();  
        
        %>
        
        <script>   
            alert("Record Updateddddd");           
       </script>
    <%             
    }
 
%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
        
         <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
        
    </head>
    <body>
        <h1>Clients Update</h1>
        
        
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" >
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "root");
                           
                          String name = request.getParameter("username");
                          
                        pst = con.prepareStatement("select * from registers where username = ?");
                        pst.setString(1, name);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                    <div alight="left">
                        <label class="form-label"> Name</label>
                        <input type="text" class="form-control" placeholder="Name" value="<%= rs.getString("name")%>" name="name" id="name" required >
                     </div>
                     
                      <div alight="left">
                        <label class="form-label">Email</label>
                        <input type="text" class="form-control" placeholder="Email" name="email" id="email" value="<%= rs.getString("email")%>" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Username</label>
                        <input type="text" class="form-control" placeholder="Username" name="username" value="<%= rs.getString("username")%>" id="username" required >
                     </div>
                         
                    
                     
                    
                     <div alight="left">
                        <label class="form-label">Password</label>
                        <input type="text" class="form-control" placeholder="Password" name="password" id="password" value="<%= rs.getString("password")%>" required >
                     </div>
                    
                    <% }  %>
                    
                    
                    
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                         <div align="right">
                             
                             <p><a href="updateclient.jsp">Click Back</a></p>
                             
                             
                         </div>
  
                </form>
            </div>          
        </div>
  
    </body>
</html>