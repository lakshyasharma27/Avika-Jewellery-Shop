<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.cart.Cart"%>
<%@page import="com.cart.CartItem"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>  </head>
  
  <body marginheight="0" marginwidth="0" class="bg"> 
    
<div align="center">

 
<table width="1000"  border="0" cellspacing="0" cellpadding="0" class="farn_bg" >

<tr>

<td><jsp:include page="header.jsp"/></td>
</tr>


<tr>
<td>
<table>
<tr>

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
   String str[]=request.getParameterValues("action"); 
   String quantity[]=request.getParameterValues("quantity");
   
   
   //int l[]=update.getAction();
   ArrayList al=(ArrayList)session.getAttribute("cartdetail");
   System.out.println("ok");
   
   //Iterator it=al.iterator();
   
  for(int i=0;i<str.length;i++)
  {
  int check=Integer.parseInt(str[i]);
  int q=Integer.parseInt(quantity[check-1]);
  
  CartItem ci=(CartItem)al.get(check-1);
  String ss=String.valueOf(q);
  ci.setQuantity(q);
  
  System.out.println(ci.getQuantity());
  System.out.println(ci.getName()+ci.getPrice());
  
  al=update.update_cart(q,check-1,al);
  
  //al=set(check-1,ci);
  System.out.println("l seted");
 session.setAttribute("cartdetail",al);
  
  }
   
  }
  catch(Exception e)
  {
  System.out.println(e);
  }
  
   
   
   //out.println("Click on <A href='showcart.jsp'>Next</a> to view cart"); 
   response.sendRedirect("showcart.jsp");
   
  /* if(al==null)
   {
   out.println("What is this ?");
   }
   System.out.println(str.length);
   for(int i=0;i<=str.length;i++)
   {
   
   
   System.out.println("arraylist -> :"+str[i]);
   
   int index=Integer.parseInt(str[i]);
   out.println(index);
   int quantity_val=Integer.parseInt(quantity[index-1]);
   out.println(quantity_val);
   CartItem ci=(CartItem)al.get(index);
  
  
  out.println("old data");
  out.println(ci.getCategory());
  out.println(ci.getName());
  out.println(ci.getPrice());
  out.println(ci.getQuantity());
  
out.println("new data");
   
   ci.setQuantity(quantity_val);
   al=(ArrayList)al.set(index,ci);
   session.setAttribute("cartdetail",al);
   }
   
  out.println("<a href='showcart.jsp'>Next</a>");
  }
  catch(Exception e)
  {
  out.println(e);
   }
   */
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
<td colspan="2"><jsp:include page="footer.jsp"/></td>
</tr>


</table>

</td>
</tr>
</table>


</div>

 
  </body>
</html>
