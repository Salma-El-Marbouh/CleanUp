package database;

import java.sql.Connection; 
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Cleaner;

public class CleanerConnector {
	
	private Connection cnx;
	
	public CleanerConnector() {
		this.cnx = DatabaseConfig.loadDatabase();
	}
	
	
	//create cleaner 
	
	public boolean createCleaner(Cleaner cleaner) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO `cleaner` (`nom`, `prenom`,`date_de_naissance`,`sexe`,`telephone`,`email`,`mot_de_passe`,`date_emploi`,`adresses_de_ramassage`) VALUES (?,?,?,?,?,?,?,?,?)");
			ps.setString(1,cleaner.getNom());
			ps.setString(2,cleaner.getPrenom());
			ps.setDate(3,cleaner.getDateDeNaissance());
			ps.setString(4,cleaner.getSexe());
			ps.setString(5,cleaner.getTelephone());
			ps.setString(6,cleaner.getEmail());
			ps.setString(7,cleaner.getMotDePasse());
			ps.setDate(8,cleaner.getDateEmploi());
			ps.setString(9,cleaner.getAdressesDeRamassage());
			ps.executeUpdate();	
			System.out.println("creation succeeded !");
			return true;
		}catch(Exception e) {
			System.out.println("creation failed !");
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
	//get one cleaner 
	
	public Cleaner getCleaner( int id ) {
		
		Cleaner cleaner = null;
		
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM `cleaner` WHERE cleaner_id=? ;");
			ps.setInt(1, id );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String nom = rs.getString("nom");
				String prenom = rs.getString("prenom");
				Date date_de_naissance = rs.getDate("date_de_naissance");
				String sexe = rs.getString("sexe");
				String telephone = rs.getString("telephone");
				String email = rs.getString("email");
				String mot_de_passe = rs.getString("mot_de_passe");
				Date date_emploi = rs.getDate("date_emploi");
				String adresses_de_ramassage = rs.getString("adresses_de_ramassage");
				System.out.println("we got it !");
				cleaner = new Cleaner(nom, prenom, date_de_naissance, sexe, telephone, email, mot_de_passe, date_emploi, adresses_de_ramassage);
				System.out.println("we got it 2 !");
								
			}
			
			System.out.println("hahouma!");
			
		}catch(Exception e) {
			System.out.println("mabghawch y3tiwna koulchi :( !");
			e.printStackTrace();	
		}
		System.out.println("We got this cleaner !");

		return cleaner;
		
	}
	
	//get all cleaners 
	
	
		
	public List<Cleaner> getAllCleaners(){
		
		ArrayList<Cleaner> list_Cleaners = new ArrayList<Cleaner>();
		try {
			PreparedStatement ps = cnx.prepareStatement("select * from `cleaner`");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Cleaner e = new Cleaner();
				e.setNom(rs.getString("nom"));
				e.setPrenom(rs.getString("prenom"));
				e.setDateDeNaissance(rs.getDate("date_de_naissance"));
				e.setSexe(rs.getString("sexe"));
				e.setTelephone(rs.getString("telephone"));
				e.setEmail(rs.getString("email"));
				e.setMotDePasse(rs.getString("mot_de_passe"));
				e.setDateEmploi(rs.getDate("date_emploi"));
				e.setAdressesDeRamassage(rs.getString("adresses_de_ramassage"));
	            list_Cleaners.add(e);
			}
			cnx.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	return list_Cleaners;	
	}
	
	
	
	//update cleaner
	
	public boolean updateCleaner(Cleaner cleaner ) {
			
		try {
			PreparedStatement ps = cnx.prepareStatement("UPDATE `cleaner` SET nom=?, prenom=?, date_de_naissance=?, sexe=?, telephone=?, email=?, mot_de_passe=?, date_emploi=?, adresses_de_ramassage=? WHERE cleaner_id=?;");
			ps.setString(1,cleaner.getNom());
			ps.setString(2,cleaner.getPrenom());
			ps.setDate(3,cleaner.getDateDeNaissance());
			ps.setString(4,cleaner.getSexe());
			ps.setString(5,cleaner.getTelephone());
			ps.setString(6,cleaner.getEmail());
			ps.setString(7,cleaner.getMotDePasse());
			ps.setDate(8,cleaner.getDateEmploi());
			ps.setString(9,cleaner.getAdressesDeRamassage());
			ps.setInt(10, cleaner.getCleanerId());
			int i = ps.executeUpdate();
              System.out.println("updated successfully!");
			if(i == 1) {
				cnx.close();
                System.out.println("cnx closed!");
				return true;
                              
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
				
	}
	
	
	//delete cleaner
	
	public boolean deleteCleaner(Cleaner cleaner) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("DELETE `cleaner` WHERE cleaner_id=?;");
			ps.setLong(1, cleaner.getCleanerId());
			int i = ps.executeUpdate();
              System.out.println("deleted successfully!");
			if(i == 1) {
				cnx.close();
                System.out.println("cnx closed!");
				return true;
                              
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
	
}
