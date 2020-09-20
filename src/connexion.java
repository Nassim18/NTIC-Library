
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Enumeration;
import java.util.Properties;

public class connexion {

	public Connection connection_bd (){
		Connection conn=null;
		try {
			Class.forName("org.postgresql.Driver");
			System.out.println("DRIVER OK ! ");
			
			String url = "jdbc:postgresql://localhost:5432/Bibliotheque";
			String user = "postgres";
			String passwd = "21619331";
			
			 conn = DriverManager.getConnection(url, user, passwd);
			System.out.println("Connection effective !");	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return conn;
	}
}