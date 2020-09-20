package modele;
import java.sql.*;


public class ajouterdocument {

	static connexion con = new connexion();

	static Connection Con = con.connection_bd();
	public static void ajoutdoc(String cote, String titre , String auteur , String annee , String specialite , String edition , String categorie ){
		
try{
			
			java.sql.Statement st = Con.createStatement();
			st.executeUpdate("INSERT INTO document (cote, titre , auteur, annee, specialite, edition, categorie) VALUES ('"+cote+"','"+titre+"' ,'"+auteur+"' ,'"+annee+"' ,'"+specialite+"' ,'"+edition+"' , '"+categorie+"')");
			
		}
		catch(SQLException e){}
	}
	
}
