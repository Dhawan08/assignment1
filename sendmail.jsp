<%-- 
    Document   : sendmail
    Created on : Sep 19, 2013, 10:26:27 PM
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
        <script type="javascript">
        function abc()
        {
        for(int i=0;i<document.frm.ch.LENGHT;i++)
            {
        if(document.frm.ch[i].Checked)
        {
       
        }
        }
        }
        </script>
    
    
    
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
       rs= stmt.executeQuery(" select * from send where send_From='"+uname+"' ");
  int i=0;      
%>
       
       <form name="frm" method="post" onsubmit="return abc();" action="delete1.jsp">
       <table border="1" width="400" >
           <tr>
               <td> </td>
               <td> To</td>
               <td> Subject</td>
               <td> Matter</td>
           </tr>  
           <% while (rs.next())
           { 
   
%>
           <tr>
               
               <td> <input type="checkbox" name="ch<%=i%>">
         
               </td>
               <td><%= rs.getString(2) %>
                   
               </td>
               <td><%= rs.getString(4) %></td>
                   <td><%= rs.getString(5) %></td>
               
           
           <%
i++;       
           out.print("ch"+i);
         
           }
  
%>
</tr>
       </table>

        

<input type="submit" name="submit" value="delete">
        
        
        
        <%
     
          
        
        

         }catch(Exception e)
 {
 out.println(e);
 }
      
    
        
        %>
       </form>
       </body>
</html>
