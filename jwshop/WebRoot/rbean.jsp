<<script type="text/javascript">
<!--
function alterMessage()
{
	alert("You have register successfully");
}
//-->
</script>
<jsp:useBean id="t2" class="com.bean.registerbean" scope="session"/>
<jsp:setProperty property="*" name="t2"/>


<%
	int x=t2.insertValue();
	if(x>0)
	
	{
	%>
	<html>
	<body onload="alterMessage()">
	<%
	//response.sendRedirect("login.jsp");
	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	rd.include(request,response);
	%>
	</body>
	</html>
	<%}
	else
	{
	RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
	rd.include(request,response);
	}

 %>

