package DoorSystem;




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
public class SendCommands extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int currentInstruction=4;
	public static int currentTempIndId=5;
	public static int relayIndId=1;
	public static int modeIndId=2;
	public static int waterOutIndId=5;
	public static int waterInIndId=6;
	public static int securityOnIndId=20;
	public static int diagIndId=3;
	public static int modeOff=0;               // system off
	public static int modeWeek=1;              // 7 days x 24h scheduling 
	public static int modeDay1=2;              // 24h first scheduling 
	public static int modeDay2=3;              // 24h second scheduling
	public static int modeNotFreezing=4;       // keep out of freeze
	public static byte modeForce=(byte) 0x80;       
	public static byte modeSuspendu=(byte) 0x40;       
	public static String[] modeDescription={"hors service","hebdomadaire","jour ferié","jour congés","hors gel"};
	    /**
     * Default constructor. 
     */
    public SendCommands() {
        // TODO Auto-generated constructor stub

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * define saveCurrentModeBit 0
			#define saveTemperaturesBit 1
			#define saveSchedulBit 2
			#define saveRegistersBit 3
			commandS[6]="writeEeprom";

	commandS[8]="uploadSchedule";
	commandS[9]="uploadTemperatures";
	commandS[10]="uploadRegisters";
	commandS[11]="tracePID";
		 */
		
		final byte commandNumber=3;

		final int[] paramNumber={0,0,0};  
		final int[] paramLen={0,0,0};
		final String[] commandS = new String[commandNumber];
		commandS[0]="status";
		commandS[1]="ring";
		commandS[2]="open";

		String ipAddress = request.getHeader("X-FORWARDED-FOR");  
		   if (ipAddress == null) {  
			   ipAddress = request.getRemoteAddr();  
		   } 
		ValidUser valid = new ValidUser() ;
		int user = valid.CheckIP(ipAddress);
		if (user>0)
		{
			if(request.getHeader("User-Agent").indexOf("Mobile") != -1) {
				request.setAttribute("device","mobile");
			    //you're in mobile land
			  } else {
			    //nope, this is probably a desktop
					request.setAttribute("device","pc");
			  }
			String stationId="";
			String command="";
			String trace="";
			String status=" ";
			try {
				stationId =   request.getParameter("door");
			     if (stationId == null){  // 
			    	 stationId="1283";
			     }
				request.setAttribute("stationId",stationId);
			}
			 finally{	    	  
			 }
			command =request.getParameter("command");
			trace=trace+"cmd:"+command;
			int i=0;
			if (command!=null){
				for (i=0;i<commandNumber;i++)
				{
					if(command.equals(commandS[i]))
					{
						trace=trace+" cmd:"+command+ " pnumber:"+paramNumber[i];
						if(paramNumber[i]==0)
								{
				    				try {
										SendFrame.SendCommand(stationId,command,"","");
									} catch (Exception e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
								}
						if(paramNumber[i]==1)
						{
		    				try {
		    					trace=trace+" req:"+request.getParameter("parameter");
								SendFrame.SendCommand(stationId,command,request.getParameter("parameter"),"");
							} catch (Exception e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
					}
				}
			}
	
	
			request.setAttribute("trace",trace);
			request.setAttribute("status",status);
			request.getRequestDispatcher("/commands.jsp").forward(request,response);
		}
			else{
				request.setAttribute("user",user+":"+ipAddress);
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
