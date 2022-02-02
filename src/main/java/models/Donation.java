package models;

import java.sql.Date;

public class Donation {
	private int donation_id;
	private String type;
	private String quantite;
	private Date date_de_ramassage;
	private Date date_de_modification;
	private int eboueur_charge;
	
	public Donation() {
		super();
	}
	
	public Donation(String type, String quantite, Date date_de_ramassage, Date date_de_modification, int eboueur_charge) {
		this.setType(type);
		this.setQuantite(quantite);
		this.setDateDeRamassage(date_de_ramassage);
		this.setDateDeModification(date_de_modification);
		this.setEboueurCharge(eboueur_charge);
		
	}
	
	public Donation(String type, String quantite, Date date_de_ramassage, int eboueur_charge) {
		this.setType(type);
		this.setQuantite(quantite);
		this.setDateDeRamassage(date_de_ramassage);
		this.setEboueurCharge(eboueur_charge);
		
	}

	public int getDonationId() {
		return donation_id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getQuantite() {
		return quantite;
	}

	public void setQuantite(String quantite) {
		this.quantite = quantite;
	}

	public Date getDateDeRamassage() {
		return date_de_ramassage;
	}

	public void setDateDeRamassage(Date date_de_ramassage) {
		this.date_de_ramassage = date_de_ramassage;
	}

	public Date getDateDeModification() {
		return date_de_modification;
	}

	public void setDateDeModification(Date date_de_modification) {
		this.date_de_modification = date_de_modification;
	}

	public int getEboueurCharge() {
		return eboueur_charge;
	}

	public void setEboueurCharge(int eboueur_charge) {
		this.eboueur_charge = eboueur_charge;
	}
	
	

}
