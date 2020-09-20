package modele;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.text.SimpleDateFormat;

import com.mysql.jdbc.Statement;

public class reservedoc {

	static connexion con = new connexion();

	static Connection Con = con.connection_bd();
	public reservation verifier (String cote){
		/*int i = 0;
		int j = 0;
		String bib ="";
		String dat ="";
		String id ="";
		String num ="";
		  */
		reservation reservation = null;
	try{
		java.sql.Statement st =  Con.createStatement();
		ResultSet res=st.executeQuery("select * from reservation where cote ='"+cote+"'");
		while (res.next()){
			reservation = new reservation(res.getString("num_ca"), cote, res.getString("id_admin"), res.getString("dateres"), res.getString("id_reservation"));
		
		}
		//ResultSet rest=st.executeQuery("select * from copie document where cote ='"+cote+"'");
		
		/*while (rest.next()){
			  j = j++; 
			  }*/
		}catch(SQLException e){}
		/*if (i>=j){
			return false;
		}
		else{
			return true;
		}*/

	
	
	return reservation ;
		
	}
		
		public void reserver (String copie,String num){
			Date maintenant = new Date();
			String biblio ="001";
			
			SimpleDateFormat formatDate =new SimpleDateFormat("yyyy-MM-dd");
			String datereservation = formatDate.format(maintenant);
			System.out.println(datereservation);
			System.out.println(copie);
			System.out.println(num);
			try{
			System.out.println("doukhlt");	
			java.sql.PreparedStatement st= Con.prepareStatement("INSERT INTO public.reservation(dateres, num_ca, id_admin, id_copiedoc)VALUES ('"+datereservation+"', '{"+num+"}', '"+biblio+"', '"+copie+"')");
			st.execute();
			//st.executeUpdate("INSERT INTO public.reservation(dateres, num_ca, id_admin, id_copiedoc , id_reservation)VALUES ('"+datereservation+"', '{"+num+"}', '"+biblio+"', '"+copie+"',2");
			System.out.println("c bn mchat  ");
			}catch (SQLException e){
				System.out.println("nn ma mchatch  ");
				e.getMessage();}
			
}
}

