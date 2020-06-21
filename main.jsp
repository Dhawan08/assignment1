
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <%@page import="java.sql.*" %>
        <%@page import="java.util.*" %>
<title>Untitled Document</title>


<link href="css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #666666;
	cursor:pointer;
}
.style1 {color: #FFFFFF}
-->
input { background:#999999; padding:5px; color:#000000;  font-size:14px; border:solid #666666 1px;}
</style></head>

<body>
<div id="">
<div id="">
<div id=""></div>
<div id=""></div>
</div> 
 <div id="menu">
 <a href="#" class="menubar">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="#" class="menubar">Contacts</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="#" class="menubar">ABOUT</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="#" class="menubar">DATA DELIVERY</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="#" class="menubar">SERVICES</a></div>

 <% 
  %>
 <table width="990" height="557" border="0" bgcolor="#666666" style="box-shadow: 0px 0px 50px #FFFFFF; -webkit-border-radius:10px" class="b">
   <tr>
     <td width="232" height="96">
                 
        <p> Hello &nbsp;&nbsp;
        
        <%

String uname=(String)session.getAttribute("username");

out.print(uname);
 
%>
        
        </p>
         
      </td>
    <td width="748" rowspan="8">&nbsp;</td>
  </tr>
  <tr>
    <td height="32"><a href="compose.jsp">Compose</a></td>
   </tr>
   <tr>
    <td height="30"><a href="recievemail.jsp">Inbox</a></td>
   </tr>
   <tr>
    <td height="30"><a href="sendmail.jsp">Sendmail</a></td>
   </tr>
   <tr>
    <td height="32">Trash</td>
   </tr>
   <tr>
    <td height="35">&nbsp;</td>
   </tr>
   <tr>
    <td height="47">&nbsp;</td>
   </tr>
   <tr>
    <td height="235">&nbsp;</td>
   </tr>
</table>
<div class="footerbar"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
</div>
</body>

</html>
