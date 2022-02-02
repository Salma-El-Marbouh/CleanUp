package models;

import java.sql.Date;

public class Cleaner {
	private int cleaner_id;
	private String nom;
	private String prenom;
	private Date date_de_naissance;
	private String sexe;
	private String telephone;
	private String email;
	private String mot_de_passe;
	private Date date_emploi;
	private int adresses_de_ramassage;
	
	public Cleaner() {
		super();
	}
	
	public Cleaner(String nom, String prenom, Date date_de_naissance, String sexe, String telephone, String email, String mot_de_passe, Date date_emploi, int adresses_de_ramassage) {
		this.nom = nom;
		this.prenom = prenom;
		this.date_de_naissance = date_de_naissance;
		this.sexe = sexe;
		this.telephone = telephone;
		this.email = email;
		this.mot_de_passe = mot_de_passe;
		this.date_emploi = date_emploi;
		this.adresses_de_ramassage = adresses_de_ramassage;
		
	}
	
	public Cleaner(int cleaner_id, String nom, String prenom, Date date_de_naissance, String sexe, String telephone, String email, String mot_de_passe, Date date_emploi, int adresses_de_ramassage) {

		this.cleaner_id = cleaner_id;
		this.nom = nom;
		this.prenom = prenom;
		this.date_de_naissance = date_de_naissance;
		this.sexe = sexe;
		this.telephone = telephone;
		this.email = email;
		this.mot_de_passe = mot_de_passe;
		this.date_emploi = date_emploi;
		this.adresses_de_ramassage = adresses_de_ramassage;
		
	}
	
	public int getCleanerId() {
		return cleaner_id;
	}
	
	public void setCleanerId( int cleaner_id) {
		this.cleaner_id = cleaner_id;
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
	
	public Date getDateDeNaissance() {
		return date_de_naissance;
	}
	
	public void setDateDeNaissance(Date date_de_naissance) {
		this.date_de_naissance = date_de_naissance;
	}
	
	public String getSexe() {
		return sexe;
	}
	
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	
	public String getTelephone() {
		return telephone;
	}
	
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMotDePasse() {
		return mot_de_passe;
	}
	
	public void setMotDePasse(String mot_de_passe) {
		this.mot_de_passe = mot_de_passe;
	}

	public Date getDateEmploi() {
		return date_emploi;
	}

	public void setDateEmploi(Date date_emploi) {
		this.date_emploi = date_emploi;
	}

	public int getAdressesDeRamassage() {
		return adresses_de_ramassage;
	}

	public void setAdressesDeRamassage(int adresses_de_ramassage) {
		this.adresses_de_ramassage = adresses_de_ramassage;
	}
	
	

}
