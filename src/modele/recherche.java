package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;



public class recherche {

	static connexion con = new connexion();
	
	static Connection Con = con.connection_bd();
	
	public static ArrayList recherchepartitre(String titree){ 
		
		String cote="" , titre = "" , auteur = "" , annee ="" , specialite="" , edition ="" , categorie ="" ,  image ="";
		ResultSet res = null ;
		ArrayList a = new ArrayList();
	    try{
	    	Statement st = Con.createStatement ();
		    res=st.executeQuery(" select * from document where titre= '"+ titree +"'");
		   
			while (res.next()){
		    	cote=res.getString("cote");
				titre=res.getString("titre");
				auteur=res.getString("auteur");
				annee=res.getString("annee");
				specialite=res.getString("specialite");
				edition=res.getString("edition");
				categorie=res.getString("categorie");
				image=res.getString("image");
				document d= new document (cote,titre,auteur, annee, specialite , edition , categorie );
		    	 a.add(d);     
		    	
	    }
			

    }
    catch(SQLException e){};
    System.out.println(a);
   return a;
		    	
		    }
		
	public static ArrayList rechercheparauteur(String aut){ 
		document d = new document();
		String cote="" , titre = "" ,  annee ="" , specialite="" , edition ="" , categorie ="" ;
		ResultSet res = null ;
		ArrayList a = new ArrayList();
	    try{
	    	Statement st = Con.createStatement ();
		    res=st.executeQuery(" select * from document where auteur= '"+aut+"'");
		   
		    
			while (res.next()){
		    	cote=res.getString("cote");
		    	
				titre=res.getString("titre");
				annee=res.getString("annee");
				specialite=res.getString("specialite");
				edition=res.getString("edition");
				categorie=res.getString("categorie");
				System.out.println(titre);
				d = new document(cote,titre,aut, annee, specialite , edition , categorie );
				System.out.println(d.getAuteur());
		    	 a.add(d);     
		    	
	    }

    }
    catch(SQLException e){};
    Iterator i =a.iterator();
    while (i.hasNext()){
    	document o=(document) i.next();
    
   System.out.println(o.getAuteur());
    };
   return a;
		    	
		    }
	public static ArrayList rechercheparcategorie(String cat){ 
		
		String cote="" , titre = "" , auteur = "" , annee ="" , specialite="" , edition ="" , categorie ="" ,  image ="";
		ResultSet res = null ;
		ArrayList a = new ArrayList();
	    try{
	    	Statement st = Con.createStatement ();
		    res=st.executeQuery(" select * from document where categorie= '"+ cat +"'");
		   
		    
			while (res.next()){
		    	cote=res.getString("cote");
				titre=res.getString("titre");
				auteur=res.getString("auteur");
				annee=res.getString("annee");
				specialite=res.getString("specialite");
				edition=res.getString("edition");
				categorie=res.getString("categorie");
				image=res.getString("image");
				document d = new document(cote,titre,auteur, annee, specialite , edition , categorie );
				System.out.println(d.getAuteur());
		    	 a.add(d);     
		    	
	    }

    }
    catch(SQLException e){};
  
   return a;
		    	
		    }
	}
	

