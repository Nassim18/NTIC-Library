package modele;

public class reservation {

	private String num ; 
	private String copie ;
	private String biblio ;
	private String date ;
	private String id ;
	
	public reservation(String num2, String cote, String bib, String dat, String id) {
		num= num2;
		copie=cote;
		biblio =bib ;
		date=dat;
		this.id=id;
	}
	public reservation() {
		// TODO Auto-generated constructor stub
	}
	public String getBiblio() {
		return biblio;
	}
	public void setBiblio(String biblio) {
		this.biblio = biblio;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getCopie() {
		return copie;
	}
	public void setCopie(String copie) {
		this.copie = copie;
	}
}
