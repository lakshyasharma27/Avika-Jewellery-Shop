<!DOCTYPE HTML>
<html>

	<body>

    <div>
		<jsp:include page="header.jsp"></jsp:include>
		</div>
<div style="height: 450px; text-align: center;margin-top: 50px;">

 	<form action="lbean.jsp">  <font size="6">LOGIN</font><br><br> 
 						<font size="5"><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Email</strong></font>&nbsp;&nbsp; <input type="email" name="email" required><br><font size="5"><strong><br>   
                    	password&nbsp;</strong></font>&nbsp; <input type="password" name="pass" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})" required><br>
                    <strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="5">	remember me&nbsp;</strong>&nbsp; <input type="checkbox"  name="remme" style="width:1em; height:1em;" ><br></font>
 	&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><font size="5"><input type="submit" value="Login"></font></strong><br><br>&nbsp;&nbsp;&nbsp;&nbsp; If you are not registered please </form>
 	<a href="register.jsp"><h2>click here</h2> </a>
 	
</div>
<div>


    	<jsp:include page="footer.jsp"></jsp:include>

    </div> 
  </body>
</html>
	