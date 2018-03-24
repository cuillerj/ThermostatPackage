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
 * Servlet implementation class ShowThermostat
 */
//@WebServlet("/ShowThermostat")
public class ShowThermostat extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int currentInstruction=4;
	public static int currentTempIndId=5;
	public static int relayIndId=1;
	public static int modeIndId=2;
	public static int waterOutIndId=5;
	public static int waterInIndId=6;
	public static int securityOnIndId=20;
	public static int diagIndId=3;
	public static int waterMaxIndId=49;
	public static int modeOff=0;               // system off
	public static int modeWeek=1;              // 7 days x 24h scheduling 
	public static int modeDay1=2;              // 24h first scheduling 
	public static int modeDay2=3;              // 24h second scheduling
	public static int modeNotFreezing=4;       // keep out of freeze
	public static byte modeForce=(byte) 0x80;       
	public static byte modeSuspendu=(byte) 0x40;
	public static String[] modeDescription={"off","week","comfort+","outForTheDay","not freezing"};
//	public static String[] modeDescription={"hors service","hebdomadaire","jour feri�","jour cong�s","hors gel"};
	    /**
     * Default constructor. 
     */
    public ShowThermostat() {
        // TODO Auto-generated constructor stub

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String stationId="";
		String meteoId="";
		String water="";
		String trace="";
		String traceCmd="";
		String status=" ";
		String setTemperature="";
		String setMode="";
		String setHold="";
		int boilerId=1282;
		int outShift=0;	
		int inShift=0;	
		try {
			stationId =   request.getParameter("stationId");
		      if (stationId == null){  // 
		    	  stationId="1280";
		      }
			request.setAttribute("stationId",stationId);	
		      meteoId =   request.getParameter("meteo");
		      if (meteoId == null){  // 
		    	  meteoId="5";
		      }
		      water =   request.getParameter("water");
		      if (water == null){  // 
		    	  water="3";
		      }	      
		    setTemperature =   request.getParameter("temperature");
		    setHold =   request.getParameter("hold");
		    setMode =   request.getParameter("mode");
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = GetSqlConnection.GetDomotiqueDB();
			String connectionUser = GetSqlConnection.GetUser();
			String connectionPassword = GetSqlConnection.GetPass();
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			trace="conn";
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT *,TIME_TO_SEC(timediff(now(),ind_time)) as timeDiff FROM IndValue  where st_id = "+stationId+" and ind_id = "+currentTempIndId+" order by ind_time DESC limit 1");
			request.setAttribute("error","0");
			while (rs.next()) {
				request.setAttribute("currentTemp",rs.getFloat("ind_value")/10);
				request.setAttribute("time",rs.getString("ind_time"));
				if (rs.getInt("timeDiff")>180)
				{
					request.setAttribute("error","1");
				}
				trace="query currentTemp";
				} 
			rs.close();
		    if (setTemperature != null && setHold==null && setMode==null){  // 
		    	try{
		    		traceCmd="try1";
			//		SendFrame send = new SendFrame();
		    		SendFrame.SendCommand(stationId,"setInstruction",setTemperature,"");
		    		traceCmd="try2";
		    	}
		    	finally{}		    			
		      }				
		    if (setMode != null && setTemperature == null && setHold==null){  // 
		    	try{
		    		traceCmd="try3";
	//				SendFrame send = new SendFrame();
		    		SendFrame.SendCommand(stationId,"setMode",setMode,"");
		    		traceCmd="try4";
		    	}
		    	finally{}
		    }
			    if (setHold != null && setMode == null && setTemperature == null ){  // 
			    	try{
			    		traceCmd="try5";
			//			SendFrame send = new SendFrame();
						SendFrame.SendCommand(stationId,"temporarilyHold",setHold,"");
			    		traceCmd="try6";
			    	}
			    	finally{}		    			
		      }					
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+currentTempIndId+" order by ind_time DESC limit 1");

			while (rs.next()) {
				request.setAttribute("currentTemp",rs.getFloat("ind_value")/10);
				request.setAttribute("time",rs.getString("ind_time"));
				trace="query currentTemp";
				} 
			rs.close();
		    if (setTemperature == null && setHold == null){ 
				rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+currentInstruction+" order by ind_time DESC limit 1");
				while (rs.next()) {
					request.setAttribute("currentInstruction",rs.getFloat("ind_value")/10);
					trace="query currentInstruction";
					} 
				rs.close();
		    }
		    else{
				request.setAttribute("currentInstruction","--.-");
		    }
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+relayIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				if(rs.getBoolean("ind_value"))
				{
					request.setAttribute("relay","oui");
				}
				else{
					request.setAttribute("relay","non");				
				}

				trace="query relay";
				} 
			rs.close();

			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+securityOnIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				if(rs.getBoolean("ind_value"))
				{
					status="temperature reduite";				
				}
				trace="query securityOnIndId";
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+diagIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				if(rs.getInt("ind_value")!=0)
					{
					status=status+"Diagnostic 0x:"+byteToHex((byte)rs.getInt("ind_value"));		
					}
				trace="query diagIndId";
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+waterMaxIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				request.setAttribute("waterMax",rs.getInt("ind_value"));	
				trace="query waterMaxIndId";
				} 
			rs.close();		
		    if (setMode == null && setHold == null){ 
				rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+modeIndId+" order by ind_time DESC limit 1");
				while (rs.next()) {
					int mode=rs.getInt("ind_value");
					byte modeB=(byte)mode;
					String modeExplicit="";
					if((modeB&modeForce)==modeForce)
					{
						modeExplicit="forc�/";
					}
					if((modeB&modeSuspendu)==modeSuspendu)
					{
						modeExplicit="suspendu/";
					}
					modeExplicit=modeExplicit+modeDescription[(modeB&0x07)];
					request.setAttribute("mode",modeExplicit);
					trace="query currentInstruction";
					} 
				rs.close();
		    }
		    else{
				request.setAttribute("mode","----");
		    }
			rs = stmt.executeQuery("SELECT ind_target FROM IndDesc"
					+ " WHERE st_id="+boilerId+" and ind_desc = 'OutShiftTemp'  limit 1"); // 
			while (rs.next()) {
				outShift= rs.getInt("ind_target");
			}
			rs.close();
			rs = stmt.executeQuery("SELECT ind_target FROM IndDesc "
					+ "WHERE  st_id="+boilerId+" and ind_desc = 'InShiftTemp' limit 1"); // 
			while (rs.next()) {
				inShift= rs.getInt("ind_target");
			}
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM value_mesurment  where mesurment_st_id = "+water+" and mesurment_ind_id = "+waterInIndId+" order by mesurment_time DESC limit 1");
			while (rs.next()) {
				request.setAttribute("waterIn", rs.getInt("mesrument_value")+inShift); 
				trace="query waterIn";
			}
			rs.close();	
			rs = stmt.executeQuery("SELECT * FROM value_mesurment  where mesurment_st_id = "+water+" and mesurment_ind_id = "+waterOutIndId+" order by mesurment_time DESC limit 1");
			while (rs.next()) {
				request.setAttribute("waterOut", rs.getInt("mesrument_value")+outShift); 
				trace="query waterOut";
			}
			rs.close();			
			conn.close();
			connectionUrl = GetSqlConnection.GetMeteoDB();
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			stmt = conn.createStatement();
			trace="cnx meteo:";
			rs = stmt.executeQuery("SELECT * FROM hist_lha WHERE st_id ="+meteoId+" ORDER by rec_id DESC limit 1");
	//		stmt = conn.createStatement();
			trace="query meteo";
			while (rs.next()) {
				request.setAttribute("externalTemp", rs.getInt("tempS"));
				}
			rs.close();			
			conn.close();
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
		trace=trace+"-"+traceCmd;
		request.setAttribute("mode0",modeDescription[0]);
		request.setAttribute("mode1",modeDescription[1]);
		request.setAttribute("mode2",modeDescription[2]);
		request.setAttribute("mode3",modeDescription[3]);
		request.setAttribute("mode4",modeDescription[4]);
		trace=trace+ " post";
		request.setAttribute("trace",trace);
		request.setAttribute("status",status);
		request.getRequestDispatcher("/showThermostat.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String stationId="";
		String meteoId="";
		String water="";
		String trace="";
		String status=" ";
		String setTemperature="";
		int boilerId=1282;
		int outShift=0;	
		int inShift=0;	
		try {
			stationId =   request.getParameter("stationId");
		      if (stationId == null){  // 
		    	  stationId="1280";
		      }
		      meteoId =   request.getParameter("meteo");
		      if (meteoId == null){  // 
		    	  meteoId="5";
		      }
		      water =   request.getParameter("water");
		      if (water == null){  // 
		    	  water="3";
			 setTemperature =   request.getParameter("temperature");
		      }
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = GetSqlConnection.GetDomotiqueDB();
			String connectionUser = GetSqlConnection.GetUser();
			String connectionPassword = GetSqlConnection.GetPass();
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			trace="conn";


		      	   
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT *,TIME_TO_SEC(timediff(now(),ind_time)) as timeDiff FROM IndValue  where st_id = "+stationId+" and ind_id = "+currentTempIndId+" order by ind_time DESC limit 1");
			request.setAttribute("error","0");
			while (rs.next()) {
				request.setAttribute("currentTemp",rs.getFloat("ind_value")/10);
				request.setAttribute("time",rs.getString("ind_time"));
				if (rs.getInt("timeDiff")>180)
				{
					request.setAttribute("error","1");
				}
				trace="query currentTemp";
				} 
			rs.close();
			
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+currentInstruction+" order by ind_time DESC limit 1");
			while (rs.next()) {
				request.setAttribute("currentInstruction",rs.getFloat("ind_value")/10);
				trace="query currentInstruction";
				} 
			rs.close();
			
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+relayIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				if(rs.getBoolean("ind_value"))
				{
					request.setAttribute("relay","yes");
				}
				else{
					request.setAttribute("relay","no");				
				}
				trace="query relay";
				} 
			rs.close();

			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+securityOnIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				if(rs.getBoolean("ind_value"))
				{
					status="alarme On";				
				}
				trace="query securityOnIndId";
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT ind_target FROM IndDesc"
					+ " WHERE st_id="+boilerId+" and ind_desc = 'OutShiftTemp'  limit 1"); // 
			while (rs.next()) {
				outShift= rs.getInt("ind_target");
			}
			rs.close();
			rs = stmt.executeQuery("SELECT ind_target FROM IndDesc "
					+ "WHERE  st_id="+boilerId+" and ind_desc = 'InShiftTemp' limit 1"); // 
			while (rs.next()) {
				inShift= rs.getInt("ind_target");
			}
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+diagIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				if(rs.getInt("ind_value")!=0)
					{
					status=status+"-Diagnostic: 0x"+byteToHex((byte)rs.getInt("ind_value"));
					request.setAttribute("error","1");
					}
				trace="query diagIndId";
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+waterMaxIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				request.setAttribute("waterMax",rs.getInt("ind_value"));	
				trace="query waterMaxIndId";
				} 
			rs.close();			
			rs = stmt.executeQuery("SELECT * FROM IndValue  where st_id = "+stationId+" and ind_id = "+modeIndId+" order by ind_time DESC limit 1");
			while (rs.next()) {
				int mode=rs.getInt("ind_value");
				byte modeB=(byte)mode;
				String modeExplicit="";
				if((modeB&modeForce)==modeForce)
				{
					modeExplicit="forc�/";
				}
				if((modeB&modeSuspendu)==modeSuspendu)
				{
					modeExplicit="suspendu/";
				}
				modeExplicit=modeExplicit+modeDescription[(modeB&0x07)];					

				request.setAttribute("mode",modeExplicit);
				trace="query currentInstruction";
				} 
			rs.close();
			rs = stmt.executeQuery("SELECT ind_target FROM IndDesc"
					+ " WHERE st_id="+boilerId+" and ind_desc = 'OutShiftTemp'  limit 1"); // 
			while (rs.next()) {
				outShift= rs.getInt("ind_target");
			}
			rs.close();
			rs = stmt.executeQuery("SELECT ind_target FROM IndDesc "
					+ "WHERE  st_id="+boilerId+" and ind_desc = 'InShiftTemp' limit 1"); // 
			while (rs.next()) {
				inShift= rs.getInt("ind_target");
			}
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM value_mesurment  where mesurment_st_id = "+water+" and mesurment_ind_id = "+waterInIndId+" order by mesurment_time DESC limit 1");
			while (rs.next()) {
				request.setAttribute("waterIn", rs.getInt("mesrument_value")+inShift); 
				trace="query waterIn";
			}
			rs.close();
			rs = stmt.executeQuery("SELECT * FROM value_mesurment  where mesurment_st_id = "+water+" and mesurment_ind_id = "+waterOutIndId+" order by mesurment_time DESC limit 1");
			while (rs.next()) {
				request.setAttribute("waterOut", rs.getInt("mesrument_value")+outShift); 
				trace="query waterOut";
			}
			conn.close();
			connectionUrl = GetSqlConnection.GetMeteoDB();
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			stmt = conn.createStatement();
			trace="cnx meteo:";
			rs = stmt.executeQuery("SELECT * FROM hist_lha WHERE st_id ="+meteoId+" ORDER by rec_id DESC limit 1");
	//		stmt = conn.createStatement();
			trace="query meteo";
			while (rs.next()) {
				request.setAttribute("externalTemp", rs.getInt("tempS"));
				}
			rs.close();			
			conn.close();
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
		request.setAttribute("mode0",modeDescription[0]);
		request.setAttribute("mode1",modeDescription[1]);
		request.setAttribute("mode2",modeDescription[2]);
		request.setAttribute("mode3",modeDescription[3]);
		request.setAttribute("mode4",modeDescription[4]);
		request.setAttribute("trace",trace);
		request.setAttribute("status",status);
		request.getRequestDispatcher("/showThermostat.jsp").forward(request,response);
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
