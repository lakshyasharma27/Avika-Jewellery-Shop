package com.bean;
import java.sql.*;
import com.connect.DBConnection;

public class newsbean {

private String emailid;
	
	
	
	public String getEmailid() {
	return emailid;
}

public void setEmailid(String emailid) {
	this.emailid = emailid;
}

	

	public int insertValue()
	{
		try
		{
			Connection con=DBConnection.getConn();
			PreparedStatement ps=con.prepareStatement("insert into newsletter(emailid) values(?)");
	
		ps.setString(1,emailid);
		
		int x=ps.executeUpdate();
		return x;
		}catch(Exception e)
		{
			return -1;
		}
	}
}
	

		
	

