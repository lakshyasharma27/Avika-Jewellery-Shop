<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.cart.Cart"%>
<%@page import="com.cart.CartItem"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<link rel="stylesheet" href="css/style.css" type="text/css"
			media="all" />
	</head>
	<tr>
		<td><jsp:include page="header.jsp" /></td>
	</tr>
	<body marginheight="0" marginwidth="0" class="bg">
		<div align="center">
			<table width="1000" border="0" cellspacing="0" cellpadding="0"
				class="farn_bg">


				<tr>
					<td>
						<table>
							<tr>
								<td>

								</td>
								<td valign="top" align="center">
									<table width="766" height="190">
										<tr>
											<td>
												<table border="0" cellpadding="0" cellspacing="3"
													class="cont" align="left" height="40" width="937">
													<tr>
														<td width="5%" align="center">
															<br>
														</td>
														<td width="90%" class="cat_1" align="center">
															Shopping-Cart
														</td>
														<br />
														<td width="5%" align="center">
															<br>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>
												<jsp:useBean id="crt" class="com.cart.Cart" />
												<jsp:setProperty name="crt" property="*" />
												<%
													if (crt.getName() == "") {
														out.println("<div align='center'>Welcome</div>");
													} else {
														crt.setName(request.getParameter("name"));
														crt.setProductcode(request.getParameter("pcode"));
														crt.setPrice(Integer.parseInt(request.getParameter("price")));
														session.setAttribute("price", request.getParameter("price"));
														crt.setQuantity(Integer.parseInt(request
																.getParameter("quantity")));
														crt.setDescription(request.getParameter("desc"));

													}
												%>
												<table border="1" cellpadding="0" cellspacing="3"
													class="cont" align="left" height="189" width="940"
													bgcolor="#FFFFFFF">
													<tr style="fontfont-size: 17" bgcolor="#EEDDFFBB">
														<td align=center colspan='2'>
															<font size='+1'>Value successfully added into Cart</font>
														</td>
													</tr>
													<%
														ArrayList al = (ArrayList) session.getAttribute("cartdetail");
														CartItem ci = new CartItem();
														ci.setName(crt.getName());
														ci.setProductcode(crt.getProductcode());
														String s = (String) session.getAttribute("price");
														//int pr=Integer.parseInt(s);
														ci.setPrice(crt.getPrice());
														ci.setQuantity(crt.getQuantity());
														ci.setDescription(crt.getDescription());
														if (al == null) {
															al = new ArrayList();
														}
														al = crt.addtocart(ci, al);
														session.setAttribute("cartdetail", al);
													//	response.sendRedirect("addcart.jsp");
													%>
													<tr>
														<td align="center" width="30%">
															<a href="collections.jsp" class="cont">Continue
																Shopping</a>
														</td>
														<td align="center" width="30%">
															<a href="showcart.jsp" class="cont"> Show Cart </a>
														</td>

													</tr>




												</table>

											</td>
										</tr>


									</table>
								</td>
							</tr>




							<tr>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
							</tr>


						</table>

					</td>
				</tr>
			</table>


		</div>
		<tr>
			<td colspan="2"><jsp:include page="footer.jsp" /></td>
		</tr>



	</body>
</html>
