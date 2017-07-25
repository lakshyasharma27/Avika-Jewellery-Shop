



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connect.DBConnection"%>
    <%
        try{
            String get=request.getParameter("ok");
         Connection con=DBConnection.getConn();
        PreparedStatement ps=con.prepareStatement("select * from collection where p_name LIKE'%"+get+"%'");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
    %>
   <div class="col-md-3">
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
		   <%}}catch(Exception e){
                        out.println(e);
                        }
    %>                                          
	
   </div> 
