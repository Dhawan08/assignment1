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
       String fname=request.getParameter("fname");
      out.println(fname);
       String ims=request.getParameter("ims");
         out.println(ims);
       String pass=request.getParameter("password");
         out.println(pass);
       String mobile=request.getParameter("mobile");
         out.println(mobile);
       String dob=request.getParameter("date");
         out.println(dob);
         String gender=request.getParameter("r1");
         out.println(gender);
       String country=request.getParameter("country");
         out.println(country);
       String city=request.getParameter("city");
         out.println(city);
                  
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
//String sq1="Insert into emp values('"+fname+"','"+ims+"','"+pass+"',"+mobile+",'"+dob+"',"+gender+"','"+country+"','"+city+"')";    
//stmt.executeUpdate(sq1);
ps=conn.prepareStatement("insert into emp values(?,?,?,?,?,?,?,?)");
ps.setString(1,fname);
ps.setString(2,ims);
ps.setString(3,pass);
ps.setString(4,mobile);
ps.setString(5,dob);
ps.setString(6,gender);
ps.setString(7,country);
ps.setString(8,city);
ps.executeUpdate();
}
        catch(Exception e)
                       {
            out.println(e);
}
%>
    </body>
</html>
