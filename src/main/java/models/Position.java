package models;

public class Position {
	private int id;
	private String ville;
	private String quartier;
	private String localisation;
	private String eboueurCharge;
	
	
	
	public Position() {
		super();
	}
	
	public Position(int id, String ville, String quartier, String localisation, String eboueurCharge) {
		this.id = id;
		this.setVille(ville);
		this.setQuartier(quartier);
		this.setLocalisation(localisation);
		this.setEboueurCharge(eboueurCharge);
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
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

	public String getEboueurCharge() {
		return eboueurCharge;
	}

	public void setEboueurCharge(String eboueurCharge) {
		this.eboueurCharge = eboueurCharge;
	}	
}

