package models;

public class Position {
	private int position_id;
	private String ville;
	private String quartier;
	private String localisation;
	private int eboueur_charge;
	
	
	
	public Position() {
		super();
	}
	
	public Position(String ville, String quartier, String localisation, int eboueur_charge) {
		this.setVille(ville);
		this.setQuartier(quartier);
		this.setLocalisation(localisation);
		this.setEboueurCharge(eboueur_charge);
	}
	
	public int getId() {
		return position_id;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getQuartier() {
		return quartier;
	}

	public void setQuartier(String quartier) {
		this.quartier = quartier;
	}

	public String getLocalisation() {
		return localisation;
	}

	public void setLocalisation(String localisation) {
		this.localisation = localisation;
	}

	public int getEboueurCharge() {
		return eboueur_charge;
	}

	public void setEboueurCharge(int eboueurCharge) {
		this.eboueur_charge = eboueurCharge;
	}	
}

