package modele;

public class User {
	
    private String username;
    private String password;
    private String nom;
    private String prenom;
    private String adresse;
    private String numcarte;
    private String type;
    private String etat;
	
    public User(String username, String password, String nom, String prenom, String adresse, String numcarte,
			String type, String etat) {
		super();
		this.username = username;
		this.password = password;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.numcarte = numcarte;
		this.type = type;
		this.etat = etat;
	}
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public User (){};
    public User(String username, String password, String nom, String prenom, String adresse, String numcarte,
			String type) {
		super();
		this.username = username;
		this.password = password;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.numcarte = numcarte;
		this.type = type;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getNumcarte() {
		return numcarte;
	}

	public void setNumcarte(String numcarte) {
		this.numcarte = numcarte;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getPassword() {
       return password;
	}

    public void setPassword(String password) {
       this.password = password;
	}
	
			
    public String getUsername() {
       return username;
			}

    public void setUserName(String username) {
       this.username = username;
			}
	
}

