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
  
  <%
  String email=(String)session.getAttribute("email");
					if(email==null)
					{ 
					
					session.setAttribute("order","running");
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.include(request,response);
					
					} 
					else
					{ 
					%>     
					<jsp:include page="header.jsp"></jsp:include>



<br/>

<div style=text-align:center margin-top: 50px;">
 	<form action="abean.jsp">     
 	<font size="6">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ADDRESS</font> &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<font size="5"> <br><br>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; <strong><em>*&nbsp;</em>First Name </strong>&nbsp; <input type="text" name="fname"  pattern="[A-Za-z]{1,20}" required><br><br>   
 	   
    
 	&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong><em>*&nbsp;</em>Last Name&nbsp;</strong>&nbsp; <input type="text" name="lname"  pattern="[A-Za-z]{1,20}" required><br><br>   
  	&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<strong><em>*</em> Address</strong> &nbsp; <input type="text" name="address" required><br><br>  
 	<strong><em>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; *</em> City</strong> &nbsp; <input type="text" name="city"  pattern="[A-Za-z]{1,20}" required><br><br>
 	<strong><em>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;*</em> State</strong> &nbsp; <input type="text" name="state"  pattern="[A-Za-z]{1,20}" required><br><br>
 	<strong><em>&nbsp;*</em> Zip/Postal Code</strong> &nbsp; <input type="text" name="zip" pattern="[0-9]{6}" maxlength="6" required><br><br> 
 	<strong><em>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;*</em> Country</strong> &nbsp; <input type="text" name="country" pattern="[A-Za-z]{1,20}" required><br><br>
 	<strong><em>&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; *</em> Mobile No.</strong> &nbsp; <input type="text" pattern=[789][0-9]{9} maxlength="10" name="mobileno" required><br><br> 
 	 
 	 
 	   
 	   
    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; <strong><input type="submit"value="Continue"><br><br></strong></font>  
 	</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>


<%}
			 %>
  
