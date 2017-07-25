
<jsp:include page="header.jsp"></jsp:include>



<br/>

<div style=text-align:center margin-top: 50px;">
 	<form action="rbean.jsp">     
 	<font size="6">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; REGISTRATION</font> &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<font size="5"> <br><br>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; <strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; Name </strong>&nbsp; <input type="text" name="name"  pattern="[A-Za-z]{1,20}" required><br><br>  
 	  
   
 	&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <strong>Email&nbsp;</strong>&nbsp; <input type="email" name="email" required><br><br>  
 	&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>&nbsp; password&nbsp;</strong> &nbsp; <input type="password" name="pass" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})" required>
	<strong></strong><strong></strong><br><br>   
	<strong>&nbsp; &nbsp; &nbsp;&nbsp; re-password&nbsp;</strong> &nbsp; <input type="password" name="pass" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})" required>
	<strong></strong><strong></strong><br><br>   
 	   
 	   
    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; <strong><input type="submit" value="Register"><br><br></strong></font>  
    
 	</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>