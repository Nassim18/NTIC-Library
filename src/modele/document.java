package modele;

public class document {
	private String cote;
	private String titre ;
	private String auteur ;
	private String annee ;
	private String specialite;
	private String edition;
	private String categorie;
	
	
	
	public document(String cote, String titre, String auteur, String annee, String specialite, String edition,
			String categorie) {
		this.cote=cote;
		this.titre=titre;
		this.auteur=auteur;
		this.annee=annee;
		this.specialite=specialite;
		this.edition=edition;
		this.categorie=categorie;
		
	}
	public document() {}
	
	public String getCote() {
		return cote;
	}
	public void setCote(String cote) {
		this.cote = cote;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public String getAnnee() {
		return annee;
	}
	public void setAnnee(String annee) {
		this.annee = annee;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	
	
	
	
	

	
	
	
	
	
	
	
}
