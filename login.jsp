<%-- 
    Document   : login
    Created on : Aug 18, 2013, 10:15:08 AM
    Author     : naveen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <%@page import="java.sql.*" %>
        <%@page import="java.util.*" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String userid=request.getParameter("t1");
            
        String pass=request.getParameter("t2");
     
                                
       
        Connection conn=null;
		
        Statement stmt=null;
        
        ResultSet rs=null;
        
            String user="root";
	    String password="root";
	 
                                try{
	   Class.forName("com.mysql.jdbc.Driver");
	   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee",user,password);
        stmt=conn.createStatement();
        rs=stmt.executeQuery("select * from login where unique_id='"+userid+"' and password='"+pass+"'");
        
        
       
       if(rs.next())
              {
           String username=rs.getString(2);
                     
            if(rs.getString("type").equals("a"))
                
			{
		
                //String uname=(String)session.getAttribute("username");
                
                session.setAttribute("username",username);	
                
                response.sendRedirect("admin.jsp");
            }
            
        
               else{
           
                //String uname=(String)session.getAttribute("username");
                session.setAttribute("username",username);
            response.sendRedirect("main.jsp");
            
               }
 }
 
            else{
            
out.print("wrong");
} 
}

  catch(Exception e)
 {
 out.println(e);
 }
   
    
        
        %>
    </body>
</html>
