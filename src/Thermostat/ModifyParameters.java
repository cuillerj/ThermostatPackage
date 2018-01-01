package Thermostat;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowParameters
 */
//@WebServlet("/ShowThermostat")
public class ModifyParameters extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int tempListSize=5;
	public static int notFreezeIdx=4;
	public static int temp1Ind=7;
	public static int KpPIDInd=16;
	public static int KiPIDInd=17;
	public static int KdPIDInd=18;
	public static int thresholdPIDInd=19;
	public static int PIDCyleDelayInd=21;
	public static int reactivityInd=12;
	public static int maximumTemperatureInd=14;
	public static int outHomeTemperatureDecreaseInd=15;
	public static int hysteresisDelayInd=22;
	public static int maxModifiedInd=49;
	    /**
     * Default constructor. 
     */
    public ModifyParameters() {
        // TODO Auto-generated constructor stub

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		Statement stmt = null;
		Statement stmtValue = null;
		ResultSet rs = null;
		ResultSet rsValue = null;
		String stationId="";
		String trace="modifParameters ";
		String status=" ";
		String Idx="";
		int i=0;
		String ipAddress = request.getHeader("X-FORWARDED-FOR");  
		   if (ipAddress == null) {  
			   ipAddress = request.getRemoteAddr();  
		   } 
		ValidUser valid = new ValidUser() ;
		int user = valid.CheckIP(ipAddress);
		if (user>0)
		{
			for (i=0;i<maxModifiedInd;i++)
			{
				Idx="Idx"+String.valueOf(i);
				request.setAttribute(Idx,-1);
			}
			try {
				stationId =   request.getParameter("stationId");
			      if (stationId == null){  // 
			    	  stationId="1280";
			      }
				request.setAttribute("stationId",stationId);	
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				String connectionUrl = GetSqlConnection.GetDomotiqueDB();
				String connectionUser = GetSqlConnection.GetUser();
				String connectionPassword = GetSqlConnection.GetPass();
				conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
				trace="conn-"+stationId+" "+maxModifiedInd;	      	   
				stmt = conn.createStatement();
				String targetCurrentValue="";
				String targetDesc="";
				String targetCompute="";
	
				String indId="";
				int idx=0;
				rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_compute_rule = 'checkvalue' and ind_id <= "+maxModifiedInd+" and ind_target_ref >0 limit "+maxModifiedInd+"");
				while (rs.next()) {
					trace=trace+"."+String.valueOf(idx);
					targetCurrentValue="CurrentValue"+String.valueOf(idx);
					targetDesc="Desc"+String.valueOf(idx);
					targetCompute="Compute"+String.valueOf(idx);
					Idx="Idx"+String.valueOf(idx);
					request.setAttribute(targetCurrentValue,rs.getInt("ind_target"));
					request.setAttribute(targetDesc,rs.getString("ind_desc"));
					request.setAttribute(targetCompute,rs.getString("ind_compute"));
					request.setAttribute(Idx,idx);
					indId="IndId"+String.valueOf(idx);
					request.setAttribute(indId,rs.getInt("ind_id"));
					idx++;
						}
				request.setAttribute("maxIdx",idx);
				rs.close();
	
				}
			
				catch (Exception e) {
					e.printStackTrace();
	
				} finally {
					try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
					try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
					try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
				}
			if(request.getHeader("User-Agent").indexOf("Mobile") != -1) {
				request.setAttribute("device","mobile");
			    //you're in mobile land
			  } else {
			    //nope, this is probably a desktop
					request.setAttribute("device","pc");
			  }
			trace=trace+ " get";
			request.setAttribute("user",user+":"+ipAddress);
			request.setAttribute("trace",trace);
			request.setAttribute("status",status);
			request.getRequestDispatcher("/modifyParameters.jsp").forward(request,response);
		}
		else{
			request.setAttribute("user",user+":"+ipAddress);
			request.setAttribute("trace",trace);
			request.setAttribute("status",status);
			request.getRequestDispatcher("/notAllowed.jsp").forward(request,response);
		}
	}
	public static String byteToHex(byte b) {
	    StringBuilder sb = new StringBuilder();
	    sb.append(Integer.toHexString(b));
	    if (sb.length() < 2) {
	        sb.insert(0, '0'); // pad with leading zero if needed
	    }
	    String hex = sb.toString();
	    return hex;
	  }
}
