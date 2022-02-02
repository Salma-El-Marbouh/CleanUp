package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Donation;

public class DonationConnector {
	
	private Connection cnx;
	
	public DonationConnector() {
		this.cnx = DatabaseConfig.loadDatabase();
	}
	
	
	//create donation
	
	public boolean createDonation (Donation donation) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO `donation` (`type`, `quantite`, `date_de_ramassage`, `eboueur_charge` ) VALUES (?,?,?,?);");
			ps.setString(1,donation.getType());
			ps.setString(2,donation.getQuantite());
			ps.setDate(3,donation.getDateDeRamassage());
			ps.setLong(5,donation.getEboueurCharge());
			ps.executeUpdate();	
			System.out.println("creation succeeded !");
			return true;
		}catch(Exception e) {
			System.out.println("creation failed !");
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
	//get one donation 
	
	public Donation getDonation( int id ) {
		
		Donation donation = null;
		
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM `donation` WHERE donation_id=? ;");
			ps.setInt(1, id );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String type = rs.getString("type");
				String quantite = rs.getString("quantite");
				Date date_de_ramassage = rs.getDate("date_de_ramassage");
				Date date_de_modification = rs.getDate("date_de_modification");
				int eboueur_charge = rs.getInt("eboueur_charge");
				System.out.println("we got it !");
				donation = new Donation(type, quantite, date_de_ramassage,date_de_modification, eboueur_charge);
				System.out.println("we got it 2 !");
								
			}
			
			System.out.println("hahouma!");
			
		}catch(Exception e) {
			System.out.println("mabghawch y3tiwna koulchi :( !");
			e.printStackTrace();	
		}
		return donation;
		
	}
	
	//get all donations 
	
	
		
	public List<Donation> getAllDonations(){
		
		ArrayList<Donation> list_Donations = new ArrayList<Donation>();
		try {
			PreparedStatement ps = cnx.prepareStatement("select * from `donation`");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Donation e = new Donation();
				e.setType(rs.getString("type"));
				e.setQuantite(rs.getString("quantite"));
				e.setDateDeRamassage(rs.getDate("date_de_ramassage"));
				e.setDateDeModification(rs.getDate("date_de_modification"));
				e.setEboueurCharge(rs.getInt("eboueur_charge"));
	            list_Donations.add(e);
			}
			cnx.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	return list_Donations;	
	}
	
	
	
	//update donation
	
	public boolean updateDonation(Donation donation ) {
			
		try {
			PreparedStatement ps = cnx.prepareStatement("UPDATE `donation` SET type=?, quantite=?, date_de_ramassage=?, date_de_modification=?, eboueur_charge=? WHERE donation_id=?;");
			ps.setString(1,donation.getType());
			ps.setString(2,donation.getQuantite());
			ps.setDate(3,donation.getDateDeRamassage());
			ps.setDate(4,donation.getDateDeModification());
			ps.setLong(5,donation.getEboueurCharge());
			ps.setLong(6, donation.getDonationId());
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
	
	
	//delete donation
	
	public boolean deleteDonation(Donation donation) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("DELETE `donation` WHERE donation_id=?;");
			ps.setLong(1, donation.getDonationId());
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
