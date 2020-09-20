package modele;
import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;



public class loging {

	static connexion con = new connexion();
	
	static Connection Con = con.connection_bd();
	
	public static User authentification(String user, String pass){
		
		String username="" , password = "" , nom = "" , prenom ="" , adresse="" , type ="" , numcarte ="" , etat="true" ;
	    ResultSet res = null ;
	    try{
	    Statement st = Con.createStatement ();
	    res=st.executeQuery(" select * from personne where username= '"+ user+"' AND password= '"+ pass +"'AND etat ='"+etat+"'");
	   while (res.next()){
			username=res.getString("username");
			password=res.getString("password");
			nom=res.getString("nom");
			prenom=res.getString("prenom");
			adresse=res.getString("adresse");
			type=res.getString("type");
			numcarte=res.getString("numcarte");
			
			
	}

	    }
	    catch(SQLException e){};
	    User u = new User(username,password, nom, prenom, adresse , numcarte , type);
	return u ;
	
	
	}
}

