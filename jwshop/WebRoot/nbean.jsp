
<jsp:useBean id="t4" class="com.bean.newsbean" />
<jsp:setProperty property="*" name="t4"/>

<%
	int x=t4.insertValue();
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

