package models;

import java.sql.Date;

public class Manager {
	private String email;
	private String password;
	private String nom;
	private Date date_de_naissance;
	private String sexe;
	private String telephone;
	private String adresse;
	private String entreprise;
	
	public Manager(String email, String password){
		this.email = email;
		this.password = password;
	}
	
	public Manager(String email,  String password, String nom, Date date_de_naissance, String sexe, String telephone, String adresse, String entreprise) {
		this.email = email;
		this.password = password;
		this.nom = nom;
		this.date_de_naissance = date_de_naissance;
		this.sexe = sexe;
		this.telephone = telephone;
		this.adresse = adresse;
		this.entreprise = entreprise;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
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

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(String entreprise) {
		this.entreprise = entreprise;
	}	
}
