package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class traiteradhesion {
	
	static connexion con = new connexion();
	
	static Connection Con = con.connection_bd();
	
	public static User traitementadhesion(String usern){
		
		String username="" , password = "" , nom = "" , prenom ="" , adresse="" , etat ="" , numcarte="", type ="" ;
	    ResultSet res = null ;
	    try{
	    Statement st = Con.createStatement ();
	    res=st.executeQuery("select * from personne where username='"+usern+"' ");
	   while (res.next()){
		   
			username=res.getString("username");
			password=res.getString("password");
			nom=res.getString("nom");
			prenom=res.getString("prenom");
			adresse=res.getString("adresse");
			etat=res.getString("etat");
			numcarte=res.getString("num_carte");
			type=res.getString("type");
			
			
			
	}

	    }
	    catch(SQLException e){};
	    User u = new User(username,password,nom, prenom, adresse , numcarte , type,etat);
	    
	return u ;
	
	}
	
	public static void modifier (String username,String password,String nom,String prenom,String adresse,String etat, String numcarte, String type){
		//String sql="UPDATE public.\"personne\" SET \"username\"='"+username+"', \"password\"='"+password+"', \"nom\"='"+nom+"', \"prenom\"='"+prenom+"', \"adresse\"='"+adresse+"', \"etat\"='"+etat+"', \"numcarte\"='"+numcarte+"', \"type\"='"+type+"' WHERE \"username\"='"+username+"'";
		try{
		Statement st = Con.createStatement();
		st.executeUpdate("UPDATE public.personne SET username='"+username+"' , password='"+password+"' , nom='"+nom+"' , prenom='"+prenom+"' , adresse='"+adresse+"' , etat='"+etat+"', num_carte='"+numcarte+"', type='"+type+"'where username='"+username+"' ");    
		}
		catch(SQLException e){}
	
	}

}
