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
	
	function show1(a)
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
	ajx.open("GET","sort.jsp?ok="+a,true);
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
								<li><a href="index.jsp">Home</a></li>
								<li><a href="collections.jsp">Collections</a></li>
								
							</ul>
						</div>
				
						<div class="categories-right">
							<ul>
								<li><a onclick="show(0)">1</a></li>
								<li><a onclick="show(8)">2</a></li>
								<li><a onclick="show(16)">3</a></li>
								<li><a onclick="show(24)">4</a></li>
								<li class="view"><a onclick="show(11)">VIEW ALL</a></li>
								<li class="options">
									<select onchange="show1(this.value)">
										<option> sort by price</option>
										
										<option>less than 500</option>
										<option>500-1000</option>
										<option>1000-2000</option>
										<option>above 2000</option>
									
									</select>
									<input type="button" value="SORT BY POPULARITY" onclick="show1(this.value)"/>
								
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