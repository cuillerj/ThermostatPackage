package Thermostat;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class ValidUser  {


public int CheckIP (String ipAddress) {

		// TODO Auto-generated constructor stub
	

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs1 = null;
	Statement stmt2 = null;
	ResultSet rs2 = null;
	String RC="init";
	String trace="";
	String nomIn="";
	String pswIn="";
	String sql="";
	String validity="perm";
	int ipLength=0;
	int valid=0;
	int startIdx=0;
	String newIP="";
	ipLength=ipAddress.length();
	if (ipLength>15)  // ip v6
	{

		for (int j=1;j<5;j++)
		{
			int idx=ipAddress.indexOf(":",startIdx);
			newIP=newIP.concat(ipAddress.substring(startIdx,idx));
			newIP=newIP.concat(":");
			startIdx=idx+1;
		}
	ipAddress=newIP;
	}
	try {
		trace="init";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		String connectionUrl = GetSqlConnection.GetDomotiqueDB();
		String connectionUser = GetSqlConnection.GetUser();
		String connectionPassword = GetSqlConnection.GetPass();
		conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
		trace="conn";

		sql="SELECT * FROM IPSecurity where IPAddress= ? and (validity > now()) order by date desc limit 1";
		 PreparedStatement preparedStatement0 = conn.prepareStatement(sql);
		 preparedStatement0.setString(1, ipAddress); // 

		rs1 = preparedStatement0.executeQuery();
		trace="query openAlerts";
		while (rs1.next()) {
			trace="lect";

			valid=rs1.getInt("userID");;

//			senderArray[i] = rs1.getString("sender");
//			identifierArray[i]= rs1.getString("identifier");
//			i=i+1;
		}
		
		trace="close:"+validity;
		preparedStatement0.close();

		
	
	} catch (Exception e) {
		e.printStackTrace();
		RC="ko"+e;
		trace="catch:"+validity;
	} finally {
		try { if (rs1 != null) rs1.close(); } catch (SQLException e) { e.printStackTrace(); }

		try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
		try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
	}
	return valid;
}
}

