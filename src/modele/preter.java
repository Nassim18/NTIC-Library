package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class preter {


	static connexion con = new connexion();

	static Connection Con = con.connection_bd();
	
	
	public pret verifier(String adh){
		String date="" , idres="" , biblio="", copie="";
	
		try{
			java.sql.Statement st =  Con.createStatement();
			ResultSet res=st.executeQuery("select * from reservation where num_ca = '{"+adh+"}'");
			while (res.next()){
				date=res.getString("dateres");
				idres=res.getString("id_reservation");
				copie=res.getString("id_copiedoc");
				
				
			}
			}catch(SQLException e){}
		
		pret p=new pret(idres, date , copie, adh);
			return p;
	}
	public static void prete(String num_ca ,  String id_copiedoc){
		String biblio ="001";
		Date maintenant = new Date();
		SimpleDateFormat formatDate =new SimpleDateFormat("yyyy-MM-dd");
		String datepret = formatDate.format(maintenant);
		
		int day=maintenant.getDate();
		day=day+15;
		int month=maintenant.getMonth();
		int year=maintenant.getYear();
		Date now = new Date();
		now. setDate(day);;
		now.setMonth(month);
		now.setYear(year);
		
		String dateretour = formatDate.format(now);
	
		
		try{
					System.out.println("hani dkhoult");
					System.out.println(id_copiedoc);
					System.out.println(num_ca);
					System.out.println(maintenant);
					System.out.println(now);
					
					java.sql.Statement st = Con.createStatement();
					st.executeUpdate("INSERT INTO public.pret(date_retour, date_pret, date_retourp, num_ca, id_admin, id_copiedoc) VALUES ('"+now+"' , '"+maintenant+"', '"+now+"', '{"+num_ca+"}', '"+biblio+"',  '"+id_copiedoc+"')");
					System.out.println("hani gadamt");
				}
				catch(SQLException e){ System.out.println("ani madkhoultech"); 
				e.getMessage(); }
			}
			
		}

