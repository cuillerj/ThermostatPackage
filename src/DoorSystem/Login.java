package DoorSystem;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */ 
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs1 = null;
	Statement stmt2 = null;
	ResultSet rs2 = null;
	ResultSet rs3 = null;
	ResultSet rs4 = null;
	String RC="init";
	String trace="";
	String nomIn="";
	String pswIn="";
	String nomInDoor="";
	String pswInDoor="";
	String sql="";
	String sql3="";
// 
		/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RC="";
		
		request.setAttribute("trace",trace); 
		request.setAttribute("RC",RC);
		request.getRequestDispatcher("/loginForm.jsp").forward(request,response);

		}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RC="";
		String trace="";
		String validity="perm";
		 if (request.getParameterMap().containsKey("name")) {
			 nomIn = request.getParameter("name");
			 }
		 if (request.getParameterMap().containsKey("psw")) {
			 pswIn = request.getParameter("psw");
			 }
		 if (request.getParameterMap().containsKey("validity")) {
			 validity = request.getParameter("validity");
			 }
		String ipAddress = request.getHeader("X-FORWARDED-FOR");  
		   if (ipAddress == null) {  
			   ipAddress = request.getRemoteAddr();  
		   } 
			int ipLength=ipAddress.length();
			String newIP="";
			int startIdx=0;
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
			 if (request.getParameterMap().containsKey("nameDoor")) {
				 nomInDoor = request.getParameter("nameDoor");
				 }
			 if (request.getParameterMap().containsKey("pswDoor")) {
				 pswInDoor = request.getParameter("pswDoor");
				 }
		try {
			trace="init";
			RC="";
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = "jdbc:mysql://localhost/domotiquedata";
			String connectionUser = "jean";
			String connectionPassword = "manu7890";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			trace="conn";

// IP configuration
			if(!nomIn.equals("")) 
			{
				sql="SELECT * FROM users where Uname= ? limit 1";
				PreparedStatement preparedStatement0 = conn.prepareStatement(sql);
				preparedStatement0.setString(1, nomIn); // 
				rs1 = preparedStatement0.executeQuery();
				trace="query name";
				String retEvent="unknown User";
				while (rs1.next()) {
					trace="lect";
					String pass= rs1.getString("Upsw");
					int userid= rs1.getInt("id");
					request.setAttribute("ip","");
					retEvent="incorrectPsw";
					if (pass.equals(pswIn))
						{
						if (validity.equals("temp"))
						
							{
								 PreparedStatement preparedStatement1 = conn.prepareStatement("INSERT INTO IPSecurity VALUES (?,?,now(),TIMESTAMPADD(hour,1,now()))");
									preparedStatement1.setString(1, ipAddress); // 
									preparedStatement1.setInt(2, userid);
									preparedStatement1.executeUpdate();
									RC="IP added for one hour";
									request.setAttribute("ip",ipAddress);
									retEvent="addedOneHourIP";
							}
							
								else
								{
								 PreparedStatement preparedStatement1 = conn.prepareStatement("INSERT INTO IPSecurity VALUES (?,?,now(),TIMESTAMPADD(year,1,now()))");
									preparedStatement1.setString(1, ipAddress); // 
									preparedStatement1.setInt(2, userid);
									preparedStatement1.executeUpdate();
									RC="IP added for one year";
									retEvent="addedOneYearIP";
									request.setAttribute("ip",ipAddress);
							}
						}
				}	
			//	rs1.close();				
				trace="close:"+validity;
			//	preparedStatement0.close();		
				 PreparedStatement preparedStatement2 = conn.prepareStatement("INSERT INTO logEvents VALUES (?,now(),?,?)");
				 preparedStatement2.setString(1, retEvent);
				 preparedStatement2.setString(2, ipAddress);
				 preparedStatement2.setString(3, "Who:"+nomIn);
				 preparedStatement2.executeUpdate();				
			}
			if(!nomInDoor.equals("")) 
			{
				sql="SELECT * FROM users where Uname= ? limit 1";
				PreparedStatement preparedStatement0 = conn.prepareStatement(sql);
				preparedStatement0.setString(1, nomInDoor); // 
				rs1 = preparedStatement0.executeQuery();
				trace="query name";
				String retEvent="unknown User";
				trace="query name2";
				retEvent="unknownUser";
				while (rs1.next()) {
					trace=trace+" lect2";
					String pass= rs1.getString("Upsw");
					retEvent="incorrectPsw";
					if (pass.equals(pswInDoor))
						{				
							String key="door";
							sql3="SELECT * FROM users where Uname = ? limit 1";
							PreparedStatement preparedStatement3 = conn.prepareStatement(sql3);
							preparedStatement3.setString(1, key); // 	
							rs4 = preparedStatement3.executeQuery();
							trace=sql3+" query name2 authorize";
							retEvent="unknownUser door";
							String Cookie="notAllowed";
							while (rs4.next()) {
								Cookie=rs4.getString("Upsw");
								trace=trace+" door found";
								retEvent="door access added";
							}
							Cookie cookie = new Cookie("doorKey",Cookie);
							cookie.setMaxAge(60*60*24*365*10);
							response.addCookie(cookie);
							preparedStatement3.close();	
						}
				}			
				trace=trace+" close:";
		//		 rs3.close();
				preparedStatement0.close();		
				PreparedStatement preparedStatement2 = conn.prepareStatement("INSERT INTO logEvents VALUES (?,now(),?,?)");
				 preparedStatement2.setString(1, retEvent);
				 preparedStatement2.setString(2, ipAddress);
				 preparedStatement2.setString(3, "Who:"+nomInDoor);
				 preparedStatement2.executeUpdate();
				 preparedStatement2.close();				
			}

	
		} catch (Exception e) {
			e.printStackTrace();
			RC=RC+" ko"+e;
			trace=trace+" catch SQL ex";
		} finally {
			try { if (rs1 != null) rs1.close(); } catch (SQLException e) { e.printStackTrace(); }
	
			try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		trace=trace+nomIn;
		
		request.setAttribute("trace",trace); 
		request.setAttribute("RC",RC);
		request.setAttribute("sql",sql3);
		request.getRequestDispatcher("/loginForm.jsp").forward(request,response);
		}
		// TODO Auto-generated method stub
	}


