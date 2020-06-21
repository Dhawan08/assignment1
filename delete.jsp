<%-- 
    Document   : delete
    Created on : Sep 19, 2013, 10:26:27 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.* " %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    String ch[]=new String[10];
        int i=0;
     
               {                                              
       ch[i]=request.getParameter("ch"+i);
     
       out.print(ch[i]);
               }                      
                 
                
      
    
        Connection conn=null;
        Statement stmt=null;
        ResultSet rs= null;
        String user="root";
        String password="root";
        try
     {
       Class.forName("com.mysql.jdbc.Driver");
    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee",user,password);       
    stmt=conn.createStatement();
rs=stmt.executeQuery("select * from send");       
      if(rs.next())
                   {
        for(int a=0;a<10;a++)
                     {
            String sql1=("Delete from send where id='"+ch[a]+"' ");                    
            
stmt.executeUpdate(sql1);
}        

%>


    
<% 

}  
              }catch(Exception e)
                               {
                      
out.print(e);
                                        
    
  
        %>
    </body>
</html>
