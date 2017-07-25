
<%@page import="java.sql.*"%>
<%@page import="com.connect.DBConnection"%>	<div class="iteam-grids">
					<div class="container">
					
								<% try{
									int x=Integer.parseInt(request.getParameter("ok"));
									int y=8;
									if(x==11)
									{
									x=0;
									y=32;
									}
                                      Connection con=DBConnection.getConn();
                                       PreparedStatement st=con.prepareStatement("select * from collection limit "+x+","+y+"");
                                       ResultSet rs= st.executeQuery();
                                       while(rs.next())
                                       {%><div class="col-md-3">
							              <div onclick="location.href='details.jsp?code=<%=rs.getString(3)%>';" class="iteam-grid text-center">
                                           <img src="images/<%=rs.getString("p_image")%>" style="width:200px;height: 200px"/>
                                           <span><%out.println(rs.getString(2));%></span>
										   <label><%out.println("PRICE "+rs.getString(4)+" Rs");%>
										    <ul>
												<li><a class="cart" href="#">Add to cart</a></li>
												<li><a class="more" href="#">More</a></li></label>
												<div class="clearfix"> </div>
											</ul>
                                              	
							</div>
						</div>                             
                                     <%}
                                       }catch(Exception e)
			                                  {
			                                   out.println("error");
			                                  } 
			                                  %>    
							
						
						
						
						<div class="clearfix"> </div>
						
					
						
						
						<div class="clearfix"> </div>
					</div>
				</div>