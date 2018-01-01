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
public class ShowParameters extends HttpServlet {
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
	    /**
     * Default constructor. 
     */
    public ShowParameters() {
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
		String trace="";
		String status=" ";

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
			trace="conn";	      	   
			stmt = conn.createStatement();
			int i=0;
			String tempJsp="";
			String tempJspValue="";
			int tempInd=0;
			for (i=0;i<tempListSize;i++)
			{
				tempInd=temp1Ind+i;
				tempJsp="temp"+String.valueOf(i);
				rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+tempInd+"");
				while (rs.next()) {
					if(i==notFreezeIdx)
					{
						request.setAttribute("horsGel",rs.getFloat("ind_target")/10);					
					}
					request.setAttribute(tempJsp,rs.getFloat("ind_target")/10);			
					trace=trace+":"+tempJsp+" "+rs.getString("ind_target");
					} 
				rs.close();

				rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+tempInd+" order by ind_time desc limit 1");
				tempJspValue="tempValue"+String.valueOf(i);
				trace=trace+" prepValue";

				while (rs.next()) {
					if(i==notFreezeIdx)
					{
						request.setAttribute("horsGelValue",rs.getFloat("ind_value")/10);					
					}
					request.setAttribute(tempJspValue,rs.getFloat("ind_value")/10);			
					trace=trace+":"+tempJspValue+" "+rs.getString("ind_value");
					} 
				rs.close();
	
				}
			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+KpPIDInd+"");
			while (rs.next()) {
				request.setAttribute("KpPID",rs.getInt("ind_target"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+KpPIDInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("KpPIDValue",rs.getInt("ind_value"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+KiPIDInd+"");
			while (rs.next()) {
				request.setAttribute("KiPID",rs.getInt("ind_target"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+KiPIDInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("KiPIDValue",rs.getInt("ind_value"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+KdPIDInd+"");
			while (rs.next()) {
				request.setAttribute("KdPID",rs.getInt("ind_target"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+KdPIDInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("KdPIDValue",rs.getInt("ind_value"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+thresholdPIDInd+"");
			while (rs.next()) {
				request.setAttribute("thresholdPID",rs.getInt("ind_target"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+thresholdPIDInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("thresholdPIDValue",rs.getInt("ind_value"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+PIDCyleDelayInd+"");
			while (rs.next()) {
				request.setAttribute("PIDCyleDelay",rs.getInt("ind_target"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+PIDCyleDelayInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("PIDCyleDelayValue",rs.getInt("ind_value"));			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+reactivityInd+"");
			while (rs.next()) {
				request.setAttribute("reactivity",rs.getFloat("ind_target")/100);			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+reactivityInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("reactivityValue",rs.getFloat("ind_value")/100);			
				} 
			rs.close();

			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+maximumTemperatureInd+"");
			while (rs.next()) {
				request.setAttribute("maximumTemperature",rs.getFloat("ind_target")/10);			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+maximumTemperatureInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("maximumTemperatureValue",rs.getFloat("ind_value")/10);			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+outHomeTemperatureDecreaseInd+"");
			while (rs.next()) {
				request.setAttribute("outHomeTemperatureDecrease",rs.getFloat("ind_target")/10);			
				} 
			rs.close();		
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+outHomeTemperatureDecreaseInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("outHomeTemperatureDecreaseValue",rs.getFloat("ind_value")/10);			
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+hysteresisDelayInd+"");
			while (rs.next()) {
				request.setAttribute("hysteresisDelay",rs.getInt("ind_target"));			
				} 
			rs.close();	
			rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id = "+hysteresisDelayInd+" order by ind_time desc limit 1");
			while (rs.next()) {
				request.setAttribute("hysteresisDelayValue",rs.getInt("ind_value"));			
				} 
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
		int count=1;
		trace=trace+ " get";

		request.setAttribute("trace",trace);
		request.setAttribute("status",status);
		request.getRequestDispatcher("/showParameters.jsp").forward(request,response);
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
