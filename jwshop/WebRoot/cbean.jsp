
<jsp:useBean id="t3" class="com.bean.contactbean" scope="session"/>
<jsp:setProperty property="*" name="t3"/>

<%
	int x=t3.insertValue();
	if(x>0)
	{
	response.sendRedirect("index.jsp");
	}
	else
	{
	RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
	rd.include(request,response);
	}

 %>

