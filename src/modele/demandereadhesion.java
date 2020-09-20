package modele;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;



public class demandereadhesion {
	
	
	static connexion con = new connexion();
	
	static Connection Con = con.connection_bd();
	
	public void readhesion (String niveau, String specialite, String num_ca){
		
		
		try{
			System.out.println("ani dkhoult");
			Date maintenant = new Date();
			SimpleDateFormat formatDate =new SimpleDateFormat("yyyy-MM-dd");
			String datereadhesion = formatDate.format(maintenant);
			java.sql.Statement st = Con.createStatement();
			st.executeUpdate("INSERT INTO public.demandeadhesion(date_demande, specialite, niveau, num_ca) VALUES ( '"+datereadhesion+"', '"+specialite+"', '"+niveau+"', '{"+num_ca+"}')");
			System.out.println("ani mchit");
		}
		
		catch(SQLException e){ System.out.println("ani mamchitch "); e.getMessage(); }
	}

}
