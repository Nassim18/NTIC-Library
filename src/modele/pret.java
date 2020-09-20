package modele;

public class pret {
	private String idres;
	private String date ;
	private String biblio ;
	private String copie ;
	private String num ;
	
	public pret(String idres , String date , String biblio , String copie, String num ){
		this.idres=idres;
		this.date=date;
		this.biblio=biblio;
		this.copie=copie;
		this.num=num;
		
		
	}

	public pret() {
		// TODO Auto-generated constructor stub
	}

	public pret(String idres2, String date2, String copie2, String adh) {
		this.idres=idres2;
		this.date=date2;
		this.copie=copie2;
		this.num=adh;
	}

	public String getIdres() {
		return idres;
	}
	public void setIdres(String idres) {
		this.idres = idres;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getBiblio() {
		return biblio;
	}
	public void setBiblio(String biblio) {
		this.biblio = biblio;
	}
	public String getCopie() {
		return copie;
	}
	public void setCopie(String copie) {
		this.copie = copie;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	

}
