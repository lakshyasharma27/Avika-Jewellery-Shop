<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

    
                                               
						<% try{

                                       Class.forName("com.mysql.jdbc.Driver");
                                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chirag","root","root");
                                       Statement st=con.createStatement();
                                       ResultSet rs= st.executeQuery("select * from collection");
                                       while(rs.next())
                                       {%>
                                           <img src="images/<%=rs.getString("p_image")%>"/>
                                           <h2><%out.println(rs.getString(2));%></h2>
										   <p><%out.println(rs.getString(3));%></p>
                                           <p><%out.println(rs.getString(4));%></p>                                      
                                     <%}
                               }catch(Exception e)
                                  {
                                   out.println("error");
                                  } 
                                  %>               
                                                                                        
                           				