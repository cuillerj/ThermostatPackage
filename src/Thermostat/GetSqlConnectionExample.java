package Thermostat;

public class GetSqlConnectionExample {
	public static final String connectionUser = "yourUser";
	public static final String connectionPassword = "yourPassword";
	public static final String domotiqueUrl = "jdbc:mysql://yourHost:3306/domotiquedata";
	public static final String meteoUrl = "jdbc:mysql://yourHost:3306/meteo";
	public static String GetUser() {
		// TODO Auto-generated method stub
		return connectionUser;
	}
	public static String GetPass() {
		return connectionPassword;
	}
	public static String GetDomotiqueDB() {
		return domotiqueUrl;
	}
	public static String GetMeteoDB() {
		return meteoUrl;
	}
}
