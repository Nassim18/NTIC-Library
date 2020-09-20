package modele;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.mysql.jdbc.Statement;

public class retournerdoc {

	static connexion con = new connexion();
	
	static Connection Con = con.connection_bd();
	 public void retourner (String copie){
		 Date maintenant = new Date();
			SimpleDateFormat formatDate =new SimpleDateFormat("yyyy-MM-dd");
			String dateretour = formatDate.format(maintenant);
		 try{
			 java.sql.Statement st =  Con.createStatement();
			 st.executeUpdate("UPDATE public.pret SET date_retour='"+dateretour+"'WHERE pret.id_copiedoc='"+copie+"';");
			 
		 }catch(SQLException e){}
		 
	 }

}
