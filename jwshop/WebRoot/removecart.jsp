<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.cart.Cart"%>
<%@page import="com.cart.CartItem"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<td><jsp:include page="header.jsp"/></td>
  <head>
    <base href="<%=basePath%>">
    
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
  </head>
  
  <body marginheight="0" marginwidth="0" class="bg"> 
    
<div align="center">

 
<table width="1000"  border="0" cellspacing="0" cellpadding="0" class="farn_bg" >

<tr>


</tr>


<tr>
<td>
<table>
<tr>
<td>

</td>
<td valign="top" align="center">
<table>
<tr>
<td>

<table border="0" cellpadding="0" cellspacing="3" class="cont" align="left" height="40" width="736">
<tr>
<td width="5%" align="center"><br></td>
<td width="90%" class="cat_1" align="center">Shopping-Cart  </td> 
<td width="5%" align="center"><br></td>
</tr>
</table>
</td>
</tr>

<tr>
<td>
<jsp:useBean id="update" class="com.cart.Cart"/>
   <jsp:setProperty name="update" property="*"/>
   
    <% 
    try
    {
		String str=request.getParameter("index");  
		int index=Integer.parseInt(str);
		ArrayList al=(ArrayList)session.getAttribute("cartdetail");
		
		al=update.removecart(index-1,al);
		
		session.setAttribute("cartdetail",al);
		
		response.sendRedirect("showcart.jsp");
		
		out.println("item Removed successfully ! <br>");
		out.println("Click on <a href='showcart.jsp' class'best'>Next</a> for further processing");
		
		}
		catch(Exception e)
		{
		out.println(e);
		}
    %>
</td>
</tr>


</table>
</td>
</tr>




<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>







<tr>
<td colspan="2"></td>
</tr>


</table>

</td>
</tr>
</table>


</div>

 
  </body>
</html>
<jsp:include page="footer.jsp"/>
