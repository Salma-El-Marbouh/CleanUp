package models;

public class Position {
	private int position_id;
	private String ville;
	private String quartier;
	private String localisation;
	
	
	
	public Position() {
		super();
	}
	
	public Position(String ville, String quartier, String localisation) {
		this.setVille(ville);
		this.setQuartier(quartier);
		this.setLocalisation(localisation);
	}
	
	public Position(int position_id, String ville, String quartier, String localisation) {
		this.setId(position_id);
		this.setVille(ville);
		this.setQuartier(quartier);
		this.setLocalisation(localisation);
	}
	
	public int getId() {
		return position_id;
	}
	
	public int setId(int id) {
		return this.position_id=id;		
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

}

