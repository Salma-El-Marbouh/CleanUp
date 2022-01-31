package models;

public class Feedback {
	private int feedback_id;
	private String nom;
	private String email;
	private int note;
	
	public Feedback() {
		super();
	}
	
	public Feedback(String nom, String email, int note) {
		this.nom = nom;
		this.email = email;
		this.note = note;		
	}

	public int getFeedbackId() {
		return feedback_id;
	}

	public void setFeedbackId(int feedback_id) {
		this.feedback_id = feedback_id;
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

	public int getNote() {
		return note;
	}

	public void setNote(int note) {
		this.note = note;
	}
	

}
