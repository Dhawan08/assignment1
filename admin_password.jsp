<%-- 
    Document   : admin_password
    Created on : Sep 3, 2013, 6:56:16 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<% 
String current=request.getParameter("t1");
String pass=request.getParameter("t2");
Connection conn=null;
ResultSet rs=null;
Statement stmt;
String user="root";
String password="root";

    try{
   Class.forName("com.mysql.jdbc.Driver");
   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee",user,password);
   
   stmt=conn.createStatement();
  rs=stmt.executeQuery("select * from login where  password='"+current+"'  ");
   if(rs.next())
   {
String sql=("update login set password='"+pass+"'where type='e' ");
   stmt.executeUpdate(sql);
   
      }            
    }catch(Exception e)
                         {
         out.println(e);
                 }
          
%>
    </body>
</html>
