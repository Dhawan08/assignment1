<%-- 
    Document   : Alltags
    Created on : Aug 18, 2013, 12:04:31 PM
    Author     : naveen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <%@page import="java.util.Date" %>
        
        <title>JSP Page</title>
    </head>
    <body>
       expression tag
       <br>
       <%= new Date()
       
       %>
       <br>
       <%
       int a1=10;
       out.println(a1);
       
       
       
       %>
       
       <%!
       String a="hello";
       public String getValue(String a)
                             {
           this.a=a;
        return a;
           
       }
       %>
       <%
       
       out.println(a);
       %>
       <%@include file="form.jsp" %>
       
    </body>
</html>
