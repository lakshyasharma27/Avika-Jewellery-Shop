<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.cart.Cart"%>
<%@page import="com.cart.CartItem"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:include page="header.jsp"/></td>
  <head>
    <base href="<%=basePath%>">
    
   
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
	
	
<style type="text/css">
.styled-button-9 {
	background:#00A0D1;
	background:-moz-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#00A0D1),color-stop(100%,#008DB8));
	background:-webkit-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background:-o-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background:-ms-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background:linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#1A358E',endColorstr='#486CE0',GradientType=0);
	padding:8px 20px;
	color:#cfebf3;
	font-family:'Helvetica Neue',sans-serif;
	font-size:13px;
	border-radius:40px;
	-moz-border-radius:40px;
	-webkit-border-radius:40px;
	border:1px solid #095B7E
}
</style>
	
	
  </head>
  
  <body marginheight="0" marginwidth="0" class="bg"> 
    
<div align="center">

 
<table width="1000"  border="0" cellspacing="0" cellpadding="0" class="farn_bg" >

<tr>

<td>
</tr>


<tr>
<td>
<table>
<tr>
<td>

</td>
<td valign="top" align="center">
<table width="1032" height="297" style="width: 1032px; height: 297px;">
<tr>
<td>

<table border="0" cellpadding="0" cellspacing="3" class="cont" align="left" height="92" width="846">
<tr>
<td width="5%" align="center"><br></td>
<td width="200%" style=font-size:35 ="cat_1" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shopping-Cart  </td> 
<td width="5%" align="center"></td>
</tr>
</table>
</td>
</tr>

<tr>
<td align='center'>

<jsp:useBean id="crt" class="com.cart.Cart"/>
<jsp:setProperty name="crt" property="*" />

<%
if(crt.getName()=="")
{
out.println("<div align='center'>Welcome</div>");
}


ArrayList al=(ArrayList)session.getAttribute("cartdetail");

if(al==null)
{
System.out.println("Please add the material in the cart");

out.println("<font size='+1' color='#FGHTRE'>Cart is Empty</font>");

}else{
 %>


<table border="1" cellpadding="0" cellspacing="3" class="cont" align="left" height="200" width="1200" bgcolor="#DDFFEEBB">
<tr style="fontfont-size:17" bgcolor="#EEDDFFBB">
	<td align="center"><font size='+3'>Product Name</font></td align="center">
	 <td align="center"><font size='+3'>Product code</font></td>
	 	<td align="center"> <font size='+3'>Quantity</font></td>	
	 	<td align="center"><font size='+3'>Price</font></td>
	 	 <td align="center"><font size='+3'>Total</font></td>
	 	 <td align="center"><font size='+3'>Action</font></td></tr>




 
<%
Iterator it=al.iterator();
int i=0;
double grant_total=0.0;
out.println("<form action='updatecart.jsp'>");
while(it.hasNext())
{
	

	CartItem c=(CartItem)it.next();
	
	i++;
	out.println("<tr>");
	
	out.println("<td align='center'>"+c.getName()+"</td>");
	out.println("<input type='hidden' name='action' value="+i+">");
	out.println("<td align='center'>"+c.getProductcode()+"</td>");
	out.println("<td align='center'><input type='text' name='quantity' value="+c.getQuantity()+" align='middle'/></td>");
	out.println("<td align='center'>"+c.getPrice()+"</td>");
	
	int q=c.getQuantity();
	int p=c.getPrice();
	
	double total=p*q;
	
	grant_total+=total;
	
	out.println("<td align='center'>"+total+"</td>");
	
	out.println("<td align='center'><a href='removecart.jsp?index="+i+"' class='best'><img src='images/remove.png' height='20' width='20' class='best' border='0'/><Font color='BLACK' size='+1' >Remove</font></td>");
	
	out.println("</tr>");
	
	
	

	
}

out.println("<tr><td colspan='5' align='center'><font size=+2 color='#BFRZEE'> Grant Total </font></td><td colspan='3' align='center'><font size=+2 color='#BFRZEE'>"+grant_total+"</font></td></tr>");

out.println("<tr bgcolor='#BBDEDE'>");
out.println("<td colspan='4' align='center'><input type='submit' value='Update-Cart' class='styled-button-9'/> </td>");
out.println("<td colspan='4' align='center'> <a href='address.jsp' border='1' ><input type='button' value='Order-Now' class='styled-button-9'/> </a></td>");
out.println("</tr>");
out.println("</form>");

}%>
</table>

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

</table>

</td>
</tr>
</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
 
  </body>
</html>
