
<%@page import="java.sql.*"%>
<%@page import="com.connect.DBConnection"%>	<div class="iteam-grids">
					<div class="container">
					
								<%
								String str=request.getParameter("ok");
								 
								PreparedStatement st=null;
								ResultSet rs=null;
								 try{
									Connection con=DBConnection.getConn();
                                     if(str.equals("less than 500"))
                                     {
                                      st=con.prepareStatement("select * from collection where p_price<500");
                                      }
                                       if(str.equals("500-1000"))
                                     {
                                      st=con.prepareStatement("select * from collection where p_price between 500 and 1000");
                                      }
                                       if(str.equals("1000-2000"))
                                     {
                                      st=con.prepareStatement("select * from collection where p_price between 1000 and 2000");
                                      }
                                       if(str.equals("above 2000"))
                                     {
                                      st=con.prepareStatement("select * from collection where p_price>2000");
                                      }
                                      if(str.equals("SORT BY POPULARITY"))
                                     {
                                      st=con.prepareStatement("select * from collection where popularity between 0 and 11");
                                      }
                                  
                                     
                                      rs= st.executeQuery();
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
			                                   out.println("error"+e);
			                                  } 
			                                  %>    
							
						
						
						
						<div class="clearfix"> </div>
						
					
						
						
						<div class="clearfix"> </div>
					</div>
				</div>