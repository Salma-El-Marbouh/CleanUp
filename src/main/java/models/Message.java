package models;

public class Message {
	private int message_id;
	private String nom;
	private String email;
	private String message;
	private String categorie;
	private String etat;
	
	public Message() {
		super();
	}
	
	public Message(String nom, String email, String message, String categorie) {
		this.nom = nom;
		this.email = email;
		this.message = message;	
		this.categorie = categorie;
	}
	
	public Message(int message_id, String nom, String email, String message, String categorie, String etat) {
		this.setMessageId(message_id);
		this.nom = nom;
		this.email = email;
		this.message = message;	
		this.categorie = categorie;
		this.etat = etat;
	}

	public int getMessageId() {
		return message_id;
	}

	public void setMessageId(int message_id) {
		this.message_id = message_id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}
	


}
