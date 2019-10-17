import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.*;
public class login {
	Connection conn=null;
	PreparedStatement st1=null;
	
	public boolean loginup(String cust_id,String Password) throws SQLException{
		conn = DbConnector.getInstance();
	
		  String query = "select * from login where cust_id =? and Password =?";
		  System.out.println("query " + query);
		  PreparedStatement st2= conn.prepareStatement(query);
		  int custid = Integer.parseInt(cust_id);
		  st2.setInt(1, custid);
		  st2.setString(2,Password);
		  ResultSet  rs = st2.executeQuery();
		 		  if (rs!=null) {
		 			  return true;
		 		  }
		 		  else return false;
		
	
	
	}
}
