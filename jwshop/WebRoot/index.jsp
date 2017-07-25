
<%@page import="java.util.ArrayList"%>
<%@page import="com.connect.DBConnection"%>
<%@page import="java.sql.ResultSet"%><head>
		<title>Avika Jewellers</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700,800,400,600' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Satisfy' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
	</head>

<div class="header">

				<div class="container">
				<!-- logo -->
				<div class="logo">
					<a href="index.jsp"><img src="images/avika.png" title="avika" style=" height: 111px; width:250px;"></a>
				</div>
				<p id="demo" style=" color: white; text-align: right;"></p>

<script>
document.getElementById("demo").innerHTML = Date();
</script>
<script type="text/javascript">
        
		function search(a)
		{
		var ajx;
 
 	   if (window.XMLHttpRequest)
 	   {
 	     ajx=new XMLHttpRequest();
 	   }
 	  else
 	   {
 	     ajx=new ActiveXObject("Microsoft.XMLHTTP");
 	   }
	ajx.onreadystatechange=function()
	{
	  if (ajx.readyState==4 && ajx.status==200)
	  { 
	    document.getElementById("ind").innerHTML=ajx.responseText;
	   }
	}
	ajx.open("GET","search.jsp?ok="+a,true);
	ajx.send();
      return false;
	} 
	
	</script>
<%
    Integer hitsCount =(Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
      
       hitsCount = 1;
    }else{
       
      
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>

<p style=" color: white; text-align: right;">Total number of visits: <%= hitsCount%></p>
				<!-- logo -->
				<!-- cart-info -->
				<div class="cart-info">
					<ul>
					<%String email=(String)session.getAttribute("email");
					if(email==null)
					{%>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="register.jsp">Register</a></li>
					
					<%}
					else
					{%>
					<jsp:useBean id="t1" class="com.bean.LoginBean" scope="session"/>
					<li><a><%=t1.getEmail() %></a></li>
					<li><a href="logout.jsp">Logout</a></li>
					
				   
					<%}
					 %>

						<%
						ArrayList al=(ArrayList)session.getAttribute("cartdetail");
						if(al==null){
						%>
						<li style="margin-top: 3px;" class="cartinfo"><a href="showcart.jsp"><span> </span>My bag (0) items</a></li>
						<%}else{
						int count=al.size();
						%>
						<li  style="margin-top: 3px;"	 class="cartinfo"><a href="showcart.jsp"><span> </span>My bag (<%=count%>) items</a></li>
						<%} %>
						<div class="clearfix"> </div>
					</ul>
				</div>
				<!-- /cart-info -->
			</div>
			<!-- header -->
		</div>
		<div class="sub-header">
		
			<div class="container">
				<!-- top-nav -->
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li class=""><a href="index.jsp">Home</a></li>
						<li><a href="about.jsp">Company Profile</a></li>
						<li><a href="collections.jsp">Collections</a></li>
						<li><a href="whatsnew.jsp">Whats New</a></li>
						<li><a href="club.jsp">Avika Club</a></li>
						<li><a href="store.jsp">Store Location</a></li>
					
						<li><a href="contact.jsp">Contact</a></li>
				
						<div class="clearfix"> </div>
					</ul>
				</div>
				<!-- top-nav -->
				<!-- script-for-nav -->
				<script>
					$(document).ready(function(){
						$("span.menu").click(function(){
							$(".top-nav ul").slideToggle(300);
						});
					});
				</script>
				<!-- script-for-nav -->
				<!-- search-form -->
				<div class="search-form">
					<form onsubmit="return search(aa.value);">
					<input id="aa" type="text"><input type="submit" value="Search" />
				</form>
				</div>
				<div class="clearfix"> </div>
				<!-- /search-form -->
			</div>
		</div>
		
		<!-- banner -->
		<div id="ind">
		<div class="banner">
			<!--- img-slider --->
				<div class="img-slider">
						<!----start-slider-script---->
					<script src="js/responsiveslides.min.js"></script>
					 <script>
					    // You can also use "$(window).load(function() {"
					    $(function () {
					      // Slideshow 4
					      $("#slider4").responsiveSlides({
					        auto: true,
					        pager: true,
					        nav: true,
					        speed: 500,
					        namespace: "callbacks",
					        before: function () {
					          $('.events').append("<li>before event fired.</li>");
					        },
					        after: function () {
					          $('.events').append("<li>after event fired.</li>");
					        }
					      });
					
					    });
					  </script>
					<!----//End-slider-script---->
					<!-- Slideshow 4 -->
					    <div  id="top" class="callbacks_container">
					      <ul class="rslides" id="slider4">
					        <li>
					          <img class="img-responsive" src="images/slide.jpg" alt="">
					        </li>
					        <li>
					          <img src="images/slide2.jpg" alt="">
					        </li>
					        <li>
					          <img src="images/slide.jpg" alt="">
					        </li>
					      </ul>
					    </div>
					    <div class="clearfix"> </div>
					</div>
						<!-- slider -->
		</div>
		<!-- banner -->
		<!-- Welcome-note -->
		<div class="Welcome-note">
			<div class="Welcome-note-left">
				<div class="Welcome-note-left-pic">
					<img src="images/pic1.png" title="name" />
				</div>
				<div class="Welcome-note-left-pic-info">
					<p>Explore our New Arrivals in <span>Sterling Silver</span> and Exciting new colours in semi precious stone jewellery..</p>
				</div>
			</div>
			<div class="Welcome-note-right">
				<p>What is <span>new</span></p>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- Welcome-note -->
		<!-- content -->
		<div class="content">
			<!-- top-grids -->
			<div class="top-grids">
			<div class="container">
				<div class="product-grids">
					<!---
						<!----sreen-gallery-cursual---->
							 <!-- requried-jsfiles-for owl -->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
							    $(document).ready(function() {
							      $("#owl-demo").owlCarousel({
							        items : 7,
							        lazyLoad : true,
							        autoPlay : true,
							        navigation : true,
							        navigationText :  false,
							        pagination : false,
							      });
							    });
							    </script>
							    
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel text-center">
					              
					              <%
					               ResultSet rs=DBConnection.getConn().createStatement().executeQuery("select * from collection limit 10");
					                while(rs.next())
					                {
					                %>
					                <div onclick="location.href='details.jsp?code=<%=rs.getString(3)%>';" class="item">
					                	<div class="product-grid">
											<div class="product-pic">
												<a href="#"><img src="images/<%=rs.getString("p_image") %>" title="name" style="width: 200px;height: 200px;border: "/></a>
											</div>
											<div class="product-pic-info">
												<p><%=rs.getString("p_name") %></p>
											</div>
										</div>
					                </div>
					                <%} %>
				              </div>
			</div>
		
		</div>
		
		<!-- top-grids -->
		<!-- content -->
		</div>
		
		</div>
		</div>
		<div class="clearfix"> </div>
		<div class="footer">
			<div class="footer-grids">
				<div class="container">
					<div class="col-md-3 footer-grid">
						<h4>Services</h4>
						<ul>
							<li><a href="contact.jsp">Contact Customer Service</a></li>
							<li><a href="#">Free Delivery over $150</a></li>
							<li><a href="#">View your Wishlist</a></li>
							<li><a href="#">Ring Size Guide</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-grid">
						<h4>Information (FAQ)</h4>
						<ul>
							<li><a href="gift.jsp">Gift certificates</a></li>
							<li><a href="jcare.jsp">Jewellery care guide</a></li>
							<li><a href="wholesale.jsp">Wholesale enquires</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-grid">
						<h4>More details</h4>
						<ul>
							<li><a href="about.jsp">Company Profile</a></li>
							<li><a href="privacy.jsp">Privacy Policy</a></li>
							<li><a href="terms.jsp">Terms & Condition</a></li>
							<li><a href="payment.jsp">Secure payment</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-grid contact-grid">
						<h4>Contact us</h4>
						<ul>
							<li><span class="c-icon"> </span>Avika Jewellers Pvt LTD</li>
							<li><span class="c-icon1"> </span>avikajewellers@gmail.com</li>
							<li><span class="c-icon2"> </span> INDIA  +91 9680745522 </li>
						</ul>
						<ul class="social-icons">
							<li><a href="https://www.facebook.com/Avika-jewellers-1712479258974265/timeline"><span class="facebook"> </span></a></li>
							<li><a href="https://twitter.com/AvikaJewellers"><span class="twitter"> </span></a></li>
							<li><a href="https://in.linkedin.com/pub/avika-jewellers/109/b0/58a"><span class="thumb"> </span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- news-letter -->
			<div class="container">
			<div class="news-letter">
					<div class="news-letter-left">
						<a href="nbean.jsp"><span> </span> News letter</a>
					</div>
					<div class="news-letter-right">
						<p>Subscribe to notification about disconunts and Offers from our store enter your Email id :</p>
						
						<form action="nbean.jsp">  
							<input type="text"   name="emailid" required >
							<input type="submit" value="" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!-- news-letter -->
		
		
		<!-- footer -->
		<!-- copy-right -->
		<div class="copy-right">
				<p>Copy right@CSE GITS 2016,Chirag Somani,Anshul Vijay,Lisha Bansal</a></p>
		</div>