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
public class UpdateParameters extends HttpServlet {
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
    public UpdateParameters() {
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
		String trace="updateParameters ";
		String status=" ";

		try {
			stationId =   request.getParameter("station");
		      if (stationId == null){  // 
		    	  stationId="1280";
		      }
		    String IndId="";
		    String indTarget="";
		    int IindId=-1;
		    int Ivalue=0;
	    	IndId=request.getParameter("indId");
		    indTarget=request.getParameter("newValue");
			trace=trace+ "ind:"+IndId+ "targ:"+indTarget;
		    try{
			    IindId = Integer.parseInt(IndId);
				trace=trace+ ":"+IindId;
			    Ivalue = Integer.parseInt(indTarget);
				trace=trace+ "-"+Ivalue;
		    	}
		    finally{
		    	}


		    if(IindId!=-1)
		    {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				String connectionUrl = GetSqlConnection.GetDomotiqueDB();
				String connectionUser = GetSqlConnection.GetUser();
				String connectionPassword = GetSqlConnection.GetPass();
				conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
				trace=trace+" conn-"+stationId+" "+maxModifiedInd;	      	   
				stmt = conn.createStatement();
			    String sql = "UPDATE IndDesc " +
		                   "SET ind_target = "+Ivalue+"  WHERE st_id = "+stationId+" AND ind_id = "+IindId+"";
			    stmt.executeUpdate(sql);
		
				}
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

		String Idx="";
		int i=0;
		for (i=0;i<maxModifiedInd;i++)
		{
			Idx="Idx"+String.valueOf(i);
			request.setAttribute(Idx,-1);
		}
		try {
			stationId =   request.getParameter("station");
		      if (stationId == null){  // 
		    	  stationId="1280";
		      }
   
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = GetSqlConnection.GetDomotiqueDB();
			String connectionUser = GetSqlConnection.GetUser();
			String connectionPassword = GetSqlConnection.GetPass();
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
   	   
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
			request.setAttribute("trace",trace);
			request.setAttribute("status",status);
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
		request.getRequestDispatcher("/modifyParameters.jsp").forward(request,response);
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
