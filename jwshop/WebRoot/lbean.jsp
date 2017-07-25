
<jsp:useBean id="t1" class="com.bean.LoginBean" scope="session" />
<jsp:setProperty property="*" name="t1" />
<
<script type="text/javascript">
	function chirag() {
		alert("You have login successfully");
	}
	//-->
</script>
<%
	String str = t1.validate();
	if (str.equals("success")) {
%>
<html>
	<body onload="chirag()">
		<%
			session.setAttribute("email", t1.getEmail());
				String order = (String) session.getAttribute("order");
				if (order == null) {
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.include(request,response);
					//response.sendRedirect("index.jsp");
				} else {
				RequestDispatcher rd=request.getRequestDispatcher("address.jsp");
				rd.include(request,response);
					//response.sendRedirect("address.jsp");
				}
			} else {
				RequestDispatcher rd = request
						.getRequestDispatcher("login.jsp");

				rd.include(request, response);
			}
		%>
		</body>
	
	</html>