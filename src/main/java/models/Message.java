package models;

public class Message {
	private int message_id;
	private String nom;
	private String email;
	private String message;
	
	public Message() {
		super();
	}
	
	public Message(String nom, String email, String message) {
		this.nom = nom;
		this.email = email;
		this.message = message;		
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
	


}
