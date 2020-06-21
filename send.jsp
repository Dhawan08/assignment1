<%--
    Document   : send
    Created on : Sep 19, 2013, 9:38:50 PM
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
 String uname=(String)session.getAttribute("username");     
String id=request.getParameter("");        
 String To=request.getParameter("to");
     
       String Subject=request.getParameter("subject");
       String Matter=request.getParameter("matter");
      
                  
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
ps=conn.prepareStatement("Insert into send values(?,?,?,?)");
//ps.setString(id);
ps.setString(2,To);
ps.setString(3,uname);
ps.setString(4,Subject);
ps.setString(5,Matter);

ps.executeUpdate();
} catch(Exception e)
       {
    out.println(e);
}
%>
    </body>
</html>
