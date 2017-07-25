
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connect.DBConnection"%><head>
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


	<!-- banner -->
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
												<a href="#"><img src="images/<%=rs.getString("p_image") %>" title="name" /></a>
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
		</div>
		<!-- top-grids -->
		<!-- content -->