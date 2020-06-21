<%-- 
    Document   : recievemail
    Created on : Sep 22, 2013, 5:51:27 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="java.util.*" %>
        <%@page import="java.sql.*" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
       String uname=(String)session.getAttribute("username");

     
        
        
        Connection conn=null;
		
        Statement stmt=null;
        ResultSet rs=null;
       String user="root";
	    String password="root";
	  try{
	   Class.forName("com.mysql.jdbc.Driver");
	   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee",user,password);
        stmt=conn.createStatement();
       rs= stmt.executeQuery(" select * from send where send_To='"+uname+"' ");
       %>
   
       
        <table border="1" width="400" >
           <tr>
               <td> </td>
               <td> From</td>
               <td> Subject</td>
               <td> Matter</td>
           </tr>  
           <% while (rs.next())
           { %>
           <tr>
               
               <td> <input type="checkbox" name="check2"></td>
               <td><%= rs.getString(3) %>
                   
               </td>
               <td><%= rs.getString(4) %></td>
                   <td><%= rs.getString(5) %></td>
               
           </tr>
           <%
           }
        %>
       </table>
        
        
        
        
        
        <%
        
       
        
        
        }

  catch(Exception e)
 {
 out.println(e);
 }
      
    
        
        %>
    </body>
</html>
