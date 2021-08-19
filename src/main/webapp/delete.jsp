<%@page import="java.sql.*" %> 
 
 
<% 
        String name = request.getParameter("username");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "root");
        pst = con.prepareStatement("delete from registers where username = ?");
        pst.setString(1, name);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Record Deleted");
            
       </script>