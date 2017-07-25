<!DOCTYPE HTML>
<html>

	<body>
 <%
            String email=(String)session.getAttribute("email");
            if(email==null)
            {
            out.println("plz login First");
            }
            else
            {
 %>
 
  <jsp:include page="header.jsp"/>
 <div class="container">
   <%="<h1>successfully login" %>
  </div> <!-- /container -->
  
	<jsp:include page="footer.jsp"/>
	<%} %>
  </body>
</html>
  