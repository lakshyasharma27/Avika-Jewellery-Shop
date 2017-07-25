<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connect.DBConnection"%>

  <script type="text/javascript">
		function show(a)
		{
		var ajx;
                
 	   if (window.XMLHttpRequest)
 	   {// If the browser if IE7+[or] Firefox[or] Chrome[or] Opera[or]Safari
 	     ajx=new XMLHttpRequest();
 	   }
 	  else
 	   {//If browser is IE6, IE5
 	     ajx=new ActiveXObject("Microsoft.XMLHTTP");
 	   }
	ajx.onreadystatechange=function()
	{
	  if (ajx.readyState==4 && ajx.status==200)
	  { 
	    document.getElementById("mydiv").innerHTML=ajx.responseText;
	   }
	}
	ajx.open("GET","product.jsp?ok="+a,true);
	ajx.send();
	} 
     </script> 

<jsp:include page="header.jsp"></jsp:include>

					<!-- content -->
		<div class="collections">
				<div class="collections-head">
					<div class="container">
						<div class="collections-head-left">
							<img src="images/iteam.png" title="name" />
						</div>
						<div class="collections-head-right">
							<h2><span>Arizume</span></br><span>Mexican Silver</span></h2>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!-- categories -->
				<div class="categories">
					<div class="container">
						<div class="categories-left">
							<ul>
					
								
							</ul>
						</div>
						<div class="categories-right">
							<ul>
								<li> onclick="show(0)"</li>
							
								</li>
								<div class="clearfix"> </div>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!-- categories -->
				<!-- iteam-grids -->
			<div  id="mydiv">
			<jsp:include page="product.jsp">
				<jsp:param value="0" name="ok"/>
			</jsp:include>
			</div>
				<!-- iteam-grids -->
		</div>
		<!-- content -->
<jsp:include page="footer.jsp"></jsp:include>