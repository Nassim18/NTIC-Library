package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class modifierdocument {
	
		static connexion con = new connexion();
		
		static Connection Con = con.connection_bd();
		
		public static document modifierdoc(String coted){
			document d = new document();
			d = null;
			String cote="" , titre = "" , auteur = "" , annee ="" , specialite="" , edition ="" , categorie ="" ;
		    ResultSet res = null ;
		    try{
		    Statement st = Con.createStatement ();
		    res=st.executeQuery("select * from document where cote='"+coted+"' ");
		   while (res.next()){
				cote=res.getString("cote");
				titre=res.getString("titre");
				auteur=res.getString("auteur");
				annee=res.getString("annee");
				specialite=res.getString("specialite");
				edition=res.getString("edition");
				categorie=res.getString("categorie");
				//System.out.println(cote);
				d = new document(cote,titre,auteur, annee, specialite , edition , categorie);
				
		}

		    }
		    catch(SQLException e){};
		    
		    
		return d ;
		
		}
		
		public static void modifier (String cote,String titre,String auteur,String annee,String specialite,String edition,String categorie){
			String sql="UPDATE public.\"document\" SET \"titre\"='"+titre+"', \"auteur\"='"+auteur+"', \"annee\"='"+annee+"', \"specialite\"='"+specialite+"', \"edition\"='"+edition+"', \"categorie\"='"+categorie+"' WHERE \"cote\"='"+cote+"'";
			try{
			Statement st = Con.createStatement();
			st.executeUpdate("UPDATE document SET titre='"+titre+"' , auteur='"+auteur+"' , annee='"+annee+"' , specialite='"+specialite+"' , edition='"+edition+"' , categorie='"+categorie+"'where cote='"+cote+"' ");    
			}
			catch(SQLException e){}
		
		}
	
}
