<jsp:include page="header.jsp"></jsp:include>

<div class="contact">
				<div class="container">
					<div class="contact-head text-center">
						<h2>Contact us</h2>
						<span>submit your query</span>
					</div>		
					<!----- contact-grids ----->		
					<div class="contact-grids">
						<div class="contact-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1578265.0941403757!2d-98.9828708842255!3d39.41170802696131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1407515822047"> </iframe>
						</div>
						<!----- contact-form ------>
						<div class="contact-form">
							<form action="cbean.jsp">
								<div class="contact-form-row">
									<div>
										<span>Name :</span>
										<input type="text" class="text" name="name" placeholder="plz enter Name" pattern="[A-Za-z]{1,20}" required/>
									</div>
									<div>
										<span>Email :</span>
										<input type="text" class="text" name="email"  placeholder="plz enter Email" required/>
									</div>
									<div>
										<span>Subject :</span>
										<input type="text" class="text"  name="subject"   placeholder="Your Subject Here" required/>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="clearfix"> </div>
								<div class="contact-form-row2">
									<span>Message :</span>
									<textarea name="message" rows="5" cols="10">  </textarea>
								</div>
								<input type="submit" value="send">
							</form>
						</div>
						<!----- contact-form ------>
					</div>
					<!----- contact-grids ----->
				</div>
			</div>

<jsp:include page="footer.jsp"></jsp:include>