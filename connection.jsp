<%-- 
    Document   : newjsp
    Created on : Aug 18, 2013, 10:00:27 AM
    Author     : naveen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Connection conn=null;
        Statement stmt=null;
        ResultSet rs=null;
        String user="root";
        String password="root";
        
       Class.forName("com.mysql.jdbc.Driver"); // register the driver 
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee",user,password); // established the connnection
       
        stmt=conn.createStatement(); // create statement for 
        
        out.println("hello");
        
        %>
    </body>
</html>
