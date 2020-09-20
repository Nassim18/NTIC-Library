package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class annuler {
	static connexion con = new connexion();

	static Connection Con = con.connection_bd();
	
	public static String rechercher(String id){
		String cote="";
		ResultSet res=null;
		
		try {
			java.sql.Statement st =  Con.createStatement();
			res=st.executeQuery("select * from reservation where id_reservation ='"+id+"' ");
			if(res.next())
			cote=res.getString("id_reservation");
			
			
			
			
		} catch (SQLException e){}
		
		
		return cote ;
		
		
	}
	
	public static void annuler(String id){
		
		java.sql.Statement st;
		try {
			st = Con.createStatement();
			st.executeUpdate("delete from reservation where id_reservation = '"+id+"' ");
		} catch (SQLException e) {}
		
	}
}
