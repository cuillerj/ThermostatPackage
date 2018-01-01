package Thermostat;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Servlet implementation class ViewTempCondition
 */
public class consigneChauffModif extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int firstSchedulePosition=50;
	String[] consigneArray = {"Matin","Jour","Soir","Nuit"};
	String diagComment="DiagByte => [(RF,Onewire,DHT,RTC) ! (Consigne,Batt,Ram,meteo)]";

	String[] jourArray ={"Dimanche","Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi","JourType1","JourType2"};
	String indID="";
	char[] TAB_BYTE_HEX = { '0', '1', '2', '3', '4', '5', '6','7',
            '8', '9', 'A', 'B', 'C', 'D', 'E','F' };
    /**
     * @see HttpServlet#HttpServlet()
     */
    public consigneChauffModif() {
        super();
        // TODO Auto-generated constructor stub
    }
  
//
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String RC="init";
		String id="";
		String descS="";
		String homeS="";
		String trace="";
		String consigneH1="";
		String consigneH2="";
		String demijour="";
		String jourNb="";
		String jourSelected="";
		String demijourSelected="";
		String modif="";
		String modifHeure="";
		String modifDemi="";
		String stationId="";
		int jourNbNum=0;
		int stStatus=0;
		int i=0;
		int step=0;
		jourNb =   request.getParameter("jour");
		demijour =   request.getParameter("demijour");
		jourSelected =   request.getParameter("jourSelected");
		demijourSelected =   request.getParameter("demijourSelected");
		modif =   request.getParameter("modif");

		i=0;
			stationId =   request.getParameter("stationId");
		      if (stationId == null){  // 
		    	  stationId="1280";
		      }
			request.setAttribute("stationId",stationId);
		try {

			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String connectionUrl = GetSqlConnection.GetDomotiqueDB();
			String connectionUser = GetSqlConnection.GetUser();
			String connectionPassword = GetSqlConnection.GetPass();
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			trace="conn";
			stmt = conn.createStatement();
			String target="";
	
			if ( jourNb!=null && demijour!=null){
				if (modif!=null){
						modifHeure =   request.getParameter("modifHeure");
						modifDemi =   request.getParameter("modifDemi");
						String choix = request.getParameter("status");
						int indID = Integer.parseInt(modifHeure);
						jourNbNum=Integer.parseInt(jourNb);
						indID=firstSchedulePosition+jourNbNum*24+indID;
						rs = stmt.executeQuery("SELECT * FROM IndDesc  where st_id = "+stationId+" and ind_id = "+indID+" limit 1");
						trace="stmt query:"+indID+ "-rs:"+rs;
						while (rs.next()) {
							int consigne = rs.getInt("ind_target");	
							int sbn=consigne;
							byte sbnb=(byte)sbn;
							byte half1=(byte) ((sbnb>>4) & 0xf);
							byte half2=(byte) ((sbnb) & 0xf);
							byte half = 0;

							if (modifDemi.equals("2")){
								if (choix.equals("M")){
									half2=(byte) 0x00;
								};
								if (choix.equals("J")){
									half2=(byte) 0x01;
								};
								if (choix.equals("S")){
									half2=(byte) 0x02;
								};
								if (choix.equals("N")){
									half2=(byte) 0x03;
								};
							}
							if (modifDemi.equals("1")){
								if (choix.equals("M")){
									half1=(byte) 0x00;
								};
								if (choix.equals("J")){
									half1=(byte) 0x01;
								};
								if (choix.equals("S")){
									half1=(byte) 0x02;
								};
								if (choix.equals("N")){
									half1=(byte) 0x03;
								};
							}
							half1=(byte) (half1<<4) ;
							half=(byte) (half1 | half2);
							target=Integer.toString(half);
							trace="query:"+indID;
								}
						request.setAttribute("indTargetNumber",indID);
						request.setAttribute("indTargetValue",target);
					    String sql = "UPDATE IndDesc " +
				                   "SET ind_target = "+target+"  WHERE st_id = "+stationId+" AND ind_id = "+indID+"";
				      stmt.executeUpdate(sql);
					}

		rs = stmt.executeQuery("SELECT * FROM stations WHERE st_id = "+stationId+" limit 1");
			trace="query stations:"+id;
			RC=id;
			while (rs.next()) {
				homeS= rs.getString("st_home");
				descS= rs.getString("st_desc");
				stStatus=rs.getInt("st_status");
				trace="query stations:"+id+homeS;
			}
			rs.close();
		jourNbNum=Integer.parseInt(jourNb);
		int ind_nb=jourNbNum*24+firstSchedulePosition;
		String indID="";
		boolean bcl = true;
		i=0;
		while (bcl)	{

		indID=Integer.toString(ind_nb);
		trace="init bcl:"+ind_nb;
		rs = stmt.executeQuery("SELECT * FROM IndDesc where st_id = "+stationId+" and ind_id = "+indID+" limit 1");
		trace="stmt bcl:"+ind_nb+ "-rs:"+rs;
		while (rs.next()) {
			int consigne = rs.getInt("ind_target");	
			trace="stmt bcl:"+ind_nb+"cons:"+consigne;
			int sbn=consigne;
			byte sbnb=(byte)sbn;
			StringBuffer sbb = new StringBuffer(2);
			int half1=(sbnb>>4) & 0xf;
			int half2=(sbnb) & 0xf;
			String stCodeH1="consigneH1"+i;
			String stCodeH2="consigneH2"+i;
			request.setAttribute(stCodeH1,consigneArray[half1] );
			request.setAttribute(stCodeH2,consigneArray[half2] );
			trace="bcl:"+ind_nb+"-i:"+i+" stcode: "+stCodeH1+" h1:"+consigneH1;
			consigneH1="";
			consigneH2="";
				}
		rs.close();
		i=i+1;
		ind_nb=ind_nb+1;
		if (i>=24){
			bcl = false;
		}
		}
				}
	
			
		} catch (Exception e) {
			e.printStackTrace();
			RC="ko"+e;
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		
		request.setAttribute("jourSelected", jourNb);
		request.setAttribute("demijourSelected", demijour);
		request.setAttribute("ID", id );
		request.setAttribute("Home-home",homeS );
		request.setAttribute("trace",trace); 
		request.setAttribute("step", step);
	//	request.setAttribute("selected", Integer.getInteger(jourNb));
	if (jourNb==null ){
		request.getRequestDispatcher("/configChauffModifDaySelect.jsp").forward(request,response);
		// TODO Auto-generated method stub
		step=1;
	}
	if ( jourNb!=null && demijour==null){
		jourNbNum=Integer.parseInt(jourNb);
		request.setAttribute("jourEnClair", jourArray[jourNbNum]);
		request.getRequestDispatcher("/configChauffModifDemiSelect.jsp").forward(request,response);
		// TODO Auto-generated method stub
		step=2;
	}
	if ( jourNb!=null && demijour!=null){
		jourNbNum=Integer.parseInt(jourNb);
		request.setAttribute("jourEnClair", jourArray[jourNbNum]);
		if (demijour.equals("1")){
		request.getRequestDispatcher("/configChauffModifMatin.jsp").forward(request,response);
		}
		if (demijour.equals("2")){
		request.getRequestDispatcher("/configChauffModifSoir.jsp").forward(request,response);
		}
		step=3;
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
