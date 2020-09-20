package modele;

public class readhesiond {
	
	private String id_demande;
	private String date_demande;
	private String niveau;
	private String specialite;
	private String num_ca;
	
	public readhesiond (){};
	public readhesiond(String id_demande, String date_demande, String niveau, String specialite, String num_ca) {
		
		this.id_demande = id_demande;
		this.date_demande = date_demande;
		this.niveau = niveau;
		this.specialite = specialite;
		this.num_ca = num_ca;
	}
	
	public String getId_demande() {
		return id_demande;
	}
	public void setId_demande(String id_demande) {
		this.id_demande = id_demande;
	}
	public String getDate_demande() {
		return date_demande;
	}
	public void setDate_demande(String date_demande) {
		this.date_demande = date_demande;
	}
	public String getNiveau() {
		return niveau;
	}
	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public String getNum_ca() {
		return num_ca;
	}
	public void setNum_ca(String num_ca) {
		this.num_ca = num_ca;
	}

}
