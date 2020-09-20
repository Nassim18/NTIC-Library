package modele;

import java.sql.*;
import com.mysql.jdbc.Statement;



public class inscrire {
	
	
	static connexion con = new connexion();
	
	static Connection Con = con.connection_bd();
	
	public void inscription (String username, String password ,String nom, String prenom , String adresse , String numcarte){
		
		boolean etat =false;
		try{
			
			java.sql.Statement st = Con.createStatement();
			st.executeUpdate("INSERT INTO personne (username, password, nom, prenom, adresse, etat, num_carte) VALUES ('"+username+"','"+password+"' ,'"+nom+"' ,'"+prenom+"' ,'"+adresse+"' ,'"+etat+"' , '"+numcarte+"')");
			
		}
		catch(SQLException e){}
	}

}
