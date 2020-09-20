package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

public class supprimerdocument {

	static connexion con = new connexion();

	static Connection Con = con.connection_bd();
	
	public static String rechercher(String coted){
		String cote="";
		ResultSet res=null;
		
		try {
			java.sql.Statement st =  Con.createStatement();
			res=st.executeQuery("select * from document where cote ='"+coted+"' ");
			if(res.next())
			cote=res.getString("cote");
			
			
			
			
		} catch (SQLException e){}
		
		
		return cote ;
		
		
	}
	
	public static void supprimerdoc(String cotedoc){
		
		java.sql.Statement st;
		try {
			st = Con.createStatement();
			st.executeUpdate("delete from document where cote = '"+cotedoc+"' ");
		} catch (SQLException e) {}
		
	}
}