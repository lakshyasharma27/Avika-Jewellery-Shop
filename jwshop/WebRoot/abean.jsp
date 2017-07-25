<jsp:useBean id="t6" class="com.bean.addressbean" scope="session"/>
<jsp:setProperty property="*" name="t6"/>

<%
	int x=t6.insertValue();
	if(x>0)
	{
	response.sendRedirect("payment.jsp");
	}
	else
	{
	RequestDispatcher rd=request.getRequestDispatcher("address.jsp");
	rd.include(request,response);
	}

 %>