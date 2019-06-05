package DoorSystem;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DoorSystem.GetSqlConnection;
/**
 * Servlet implementation class ShowDoorStatus
 */
@WebServlet("/ShowDoorStatus")
public class ShowDoorStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowDoorStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String stationId="";
		String trace="";
		String status=" ";
		try {
			stationId =   request.getParameter("door");
		      if (stationId == null){  // 
		    	  stationId="1283";
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
			String openJsp="";
			String howJsp="";
			String timeJsp="";
			int idx=1;	
		
			try {
				SendFrame.SendCommand(stationId,"statusRequest","","");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			rs = stmt.executeQuery("SELECT * FROM value_mesurment where mesurment_st_id = "+stationId+" and mesurment_ind_id in(1,2) order by mesurment_time desc ,mesurment_ind_id asc limit 18 ");
			while (rs.next()) {
					openJsp="Open"+String.valueOf(idx);
					howJsp="How"+String.valueOf(idx);
					timeJsp="Time"+String.valueOf(idx);
			//		trace=trace+ " time:"+timeJsp+" "+rs.getInt("mesurment_ind_id");
					request.setAttribute(timeJsp,rs.getString("mesurment_time"));
					if (rs.getInt("mesurment_ind_id")==1)
					{
						request.setAttribute(openJsp,rs.getInt("mesurment_ind_id"));
						if (rs.getInt("mesrument_value")==0)
						{
							request.setAttribute(openJsp,"closed");								
						}					
						if (rs.getInt("mesrument_value")==1)
						{
							request.setAttribute(openJsp,"open");								
						}

					}
					if (rs.getInt("mesurment_ind_id")==2)
					{
						request.setAttribute(howJsp,rs.getInt("mesurment_ind_id"));
						if (rs.getInt("mesrument_value")==0)
						{
							request.setAttribute(howJsp,"auto");								
						}					
						if (rs.getInt("mesrument_value")==1)
						{
							request.setAttribute(howJsp,"push");								
						}
						if (rs.getInt("mesrument_value")==2)
						{
							request.setAttribute(howJsp,"web");								
						}

					//	trace=trace+timeJsp+rs.getString("mesurment_time");
						idx++;
					}

				}
				rs.close();
				String versionJsp="version";
				rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id =1 order by ind_time desc limit 1 ");
				while (rs.next()) {
						request.setAttribute(versionJsp,rs.getString("ind_value"));
						}			
				rs.close();
				String elapseJsp="elapse";
				rs = stmt.executeQuery("SELECT * FROM IndValue where st_id = "+stationId+" and ind_id =7 order by ind_time desc limit 1 ");
				while (rs.next()) {
						request.setAttribute(elapseJsp,rs.getString("ind_value"));
						}			
				rs.close();
				
				String station="station";
				rs = stmt.executeQuery("SELECT * FROM stations where st_id = "+stationId+" limit 1 ");
				while (rs.next()) {
						request.setAttribute(station,rs.getString("st_desc"));
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
		trace=trace+ " get";

		request.setAttribute("trace",trace);
		request.setAttribute("status",status);
		request.getRequestDispatcher("/status.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
