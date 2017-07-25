
<%@page import="java.sql.*"%>
<%@page import="com.connect.DBConnection"%><jsp:include page="header.jsp"></jsp:include>

<div class="details">
			
			<div class="details-cate">
				<div class="container">
					
				</div>
			</div>
			<!-- product-single-details -->
			<div class="product-single-details">
				<div class="container" style="width:1847px; height:650px;">
					<div class="product-single-details-left">
						<!----details-product-slider--->
				<!-- Include the Etalage files -->
					<link rel="stylesheet" href="css/etalage.css">
					<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
						jQuery(document).ready(function($){
			
							$('#etalage').etalage({
								thumb_image_width: 300,
								thumb_image_height: 400,
								source_image_width: 900,
								source_image_height: 1000,
								show_hint: true,
								click_callback: function(image_anchor, instance_id){
									alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
								}
							});
							// This is for the dropdown list example:
							$('.dropdownlist').change(function(){
								etalage_show( $(this).find('option:selected').attr('class') );
							});

					});
				</script>
				<!----//details-product-slider--->
				<div class="details-left">
				<% try{
										String pcode=request.getParameter("code");
                                      Connection con=DBConnection.getConn();
                                       PreparedStatement st=con.prepareStatement("select * from collection where p_code=?");
                                       st.setString(1,pcode);
                                       ResultSet rs= st.executeQuery();
                                       if(rs.next())
                                       {%>
					<div class="details-left-slider">
						<img src="images/<%=rs.getString("p_image") %>" style="width: 400px;height: 400px;border: ">
					</div>
				</div>
				</div>
					<div class="product-single-details-right">
					
						<h2><%out.println(rs.getString("p_name")); %></h2>
						<p>Description :<span> <%out.println(rs.getString("p_desc")); %> </span></p>
						<ul class="r-list">
							<li class="rating"><span> </span>340 Ratings</li>
							<a href="#">
							<li class="heart"><span> </span>Add to Wishlist</li> </a>
						</ul>
						<!-- price-details -->
						<div class="price-details">
						
							<form action="addcart.jsp" method="post">
							<div class="price-details-left"><input type="hidden" name="name" value="<%=rs.getString("p_name") %>"/>
							<input type="hidden" name="desc" value="hello desc"/>
								<p>Product Code: <%=rs.getString("p_code") %><input type="hidden" name="pcode" value="<%=rs.getString("p_code") %>"/><br></p>
								<p>Best price: <%=rs.getString("p_price") %><input type="hidden" name="price" value="<%=rs.getString("p_price") %>"/></p>
								<p>Quantity<input style="width: 95px; margin-left: 15px;" type="text" value="1" name="quantity" /></p>
							</div>
							<div class="price-details-right">
								<p><input type="submit" value="Add to cart" ></p>
							</div>
							</form>
							<%}
							}catch(Exception e){} %>
							<div class="clearfix"> </div>
						</div>
						<!-- price-details -->
						<!-- product-description -->
						<div class="product-description" >
						
							<h3>More Dscription:</h3>
							<!-- des-tabs -->
							<div class="des-tabs">
								<div class="tab1 tab">
									<h4>Style Note</h4>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
								</div>
								<div class="tab2 tab">
									<h4>Product Details</h4>
									<p style="display: none;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
								</div>
								<div class="tab3 tab">
									<h4>Material &amp; Care</h4>
									<p style="display: none;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
								</div>
							</div>
							<!-- des-tabs -->
							<!-- script-for-tabs -->
							<script>
								$(document).ready(function(){
									$(".tab2 p").hide();
									$(".tab3 p").hide();
									$(".tab2 h4").click(function(){
										$(".tab2 p").slideToggle(300);
										$(".tab1 p").hide();
										$(".tab3 p").hide();
									});
									$(".tab1 h4").click(function(){
										$(".tab1 p").slideToggle(300);
										$(".tab2 p").hide();
										$(".tab3 p").hide();
									});
									$(".tab3 h4").click(function(){
										$(".tab3 p").slideToggle(300);
										$(".tab2 p").hide();
										$(".tab1 p").hide();
									});
								});
							</script>
							<!-- script-for-tabs -->
						</div>
						<!-- product-description -->
					</div>
					<div class="clearfix"> </div>
				
			</div>
			<!-- product-single-details -->
		</div>

<jsp:include page="footer.jsp"></jsp:include>