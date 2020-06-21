<%-- 
    Document   : data
    Created on : Aug 30, 2013, 11:53:24 PM
    Author     : sai
--%>

<%@page import="java.sql.* "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
    
    </head>
   
    <body>
      
        <%
      String unique_id=request.getParameter("");
      String fname=request.getParameter("fname");
       
       String ims=request.getParameter("ims");
       String pass=request.getParameter("password");
      String mobile=request.getParameter("mobile");
       String dob=request.getParameter("date");
       String gender=request.getParameter("r1");
       String country=request.getParameter("country");
       String city=request.getParameter("city");
       String type=request.getParameter("type");
                  
        Connection conn=null;
        Statement stmt=null;
        PreparedStatement ps=null;
       
        ResultSet rs=null;
        String user="root";
        String password="root";
try{
        
        Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee",user,password);
stmt=conn.createStatement();
ps=conn.prepareStatement("Insert into login values(?,?,?,?,?,?,?,?,?,?)",stmt.RETURN_GENERATED_KEYS);
ps.setString(1,unique_id);
ps.setString(2,fname);
ps.setString(3,ims);
ps.setString(4,pass);
ps.setString(5,mobile);
ps.setString(6,dob);
ps.setString(7,gender);
ps.setString(8,country);
ps.setString(9,city);
ps.setString(10,type);
ps.executeUpdate();
rs=ps.getGeneratedKeys();
if(rs.next())
       {
%>       
<script language="javascript">
alert("we welcomes you in our organization your id is <%= rs.getString(1) %> ");
    
</script>


<%
}
}catch(Exception e)
       {
    out.println(e);
}
%>        
</body>
</html>
