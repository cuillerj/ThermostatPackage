package DoorSystem;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class SendFrame  {
	 @SuppressWarnings("null")
	public static String ip="192.168.1.5";  // en cible a lire en BD 
	public static void SendCommand(String stationId,String command, String param1, String param2) throws Exception
	   {
			int udpPort=1841;

			try{
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs1 = null;
				ResultSet rs2 = null;
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				String connectionUrl = GetSqlConnection.GetDomotiqueDB();
				String connectionUser = GetSqlConnection.GetUser();
				String connectionPassword = GetSqlConnection.GetPass();
				conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
				stmt = conn.createStatement();
				rs1 = stmt.executeQuery("SELECT * FROM stations where st_id = "+stationId+" limit 1");
				String masterId="";
				while (rs1.next()) {
					masterId=rs1.getString("st_master");
					} 
				rs1.close();
			
				rs2 = stmt.executeQuery("SELECT * FROM stations where st_id = "+masterId+" limit 1");
				while (rs2.next()) {
					udpPort=rs2.getInt("st_listen_udp2");
					ip=rs2.getString("st_IP");
					} 
				rs2.close();
			}
			catch (Exception e) {
				e.printStackTrace();

			}
			finally{			
			}
			
			byte padByte=0x3b;
		    DatagramSocket clientSocket = new DatagramSocket();
			byte[] dataToSend = new byte[1024];
			dataToSend[0]=0x01;
			dataToSend[1]=padByte;
			dataToSend[2]=(byte) 0x00;	
			dataToSend[3]=padByte;
			dataToSend[4]=0x00; // frame len
			dataToSend[5]=0x2f;

			byte[] data = new byte[1024];
			data=stationId.getBytes();
			int i=0;
			int idx=6;
			for (i=0;i<stationId.length();i++){
				dataToSend[i+idx]=data[i];
			}
			idx=stationId.length()+6;
			dataToSend[idx]=0x2f;
			idx++;
			data=command.getBytes();
			for (i=0;i<command.length();i++){
				dataToSend[i+idx]=data[i];
			}
			idx=command.length()+stationId.length()+7;
			dataToSend[idx]=0x2f;
			idx++;
			data=param1.getBytes();
			for (i=0;i<param1.length();i++){
				dataToSend[i+idx]=data[i];
			}
			idx=command.length()+stationId.length()+param1.length()+8;
			dataToSend[idx]=0x2f;
				
			InetAddress IPAddress = InetAddress.getByName(ip);
			DatagramPacket sendPacket = new DatagramPacket(dataToSend, idx+1, IPAddress, udpPort);
			clientSocket.send(sendPacket);
			clientSocket.close();

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
