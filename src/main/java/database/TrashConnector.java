package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Trash;

public class TrashConnector {
	
	private Connection cnx;
	
	public TrashConnector() {
		this.cnx = DatabaseConfig.loadDatabase();
	}
	
	
	//create trash
	
	public boolean createTrash (Trash trash) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO `trash` (`type`, `quantite`, `date_de_ramassage`, `date_de_ramassage`, `eboueur_charge` ) VALUES (?,?,?,?,?)");
			ps.setString(1,trash.getType());
			ps.setString(2,trash.getQuantite());
			ps.setDate(3,trash.getDateDeRamassage());
			ps.setDate(4,trash.getDateDeModification());
			ps.setLong(5,trash.getEboueurCharge());
			ps.executeUpdate();	
			System.out.println("creation succeeded !");
			return true;
		}catch(Exception e) {
			System.out.println("creation failed !");
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
	//get one trash 
	
	public Trash getTrash( int id ) {
		
		Trash trash = null;
		
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM `trash` WHERE trash_id=? ;");
			ps.setInt(1, id );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String type = rs.getString("type");
				String quantite = rs.getString("quantite");
				Date date_de_ramassage = rs.getDate("date_de_ramassage");
				Date date_de_modification = rs.getDate("date_de_modification");
				int eboueur_charge = rs.getInt("eboueur_charge");
				System.out.println("we got it !");
				trash = new Trash(type, quantite, date_de_ramassage,date_de_modification, eboueur_charge);
				System.out.println("we got it 2 !");
								
			}
			
			System.out.println("hahouma!");
			
		}catch(Exception e) {
			System.out.println("mabghawch y3tiwna koulchi :( !");
			e.printStackTrace();	
		}
		return trash;
		
	}
	
	//get all trashes 
	
	
		
	public List<Trash> getAllTrashes(){
		
		ArrayList<Trash> list_Trashes = new ArrayList<Trash>();
		try {
			PreparedStatement ps = cnx.prepareStatement("select * from `trash`");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Trash e = new Trash();
				e.setType(rs.getString("type"));
				e.setQuantite(rs.getString("quantite"));
				e.setDateDeRamassage(rs.getDate("date_de_ramassage"));
				e.setDateDeModification(rs.getDate("date_de_modification"));
				e.setEboueurCharge(rs.getInt("eboueur_charge"));
	            list_Trashes.add(e);
			}
			cnx.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	return list_Trashes;	
	}
	
	
	
	//update trash
	
	public boolean updateTrash(Trash trash ) {
			
		try {
			PreparedStatement ps = cnx.prepareStatement("UPDATE `trash` SET type=?, quantite=?, date_de_ramassage=?, date_de_modification=?, eboueur_charge=? WHERE trash_id=?;");
			ps.setString(1,trash.getType());
			ps.setString(2,trash.getQuantite());
			ps.setDate(3,trash.getDateDeRamassage());
			ps.setDate(4,trash.getDateDeModification());
			ps.setLong(5,trash.getEboueurCharge());
			ps.setLong(6, trash.getTrashId());
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
	
	
	//delete trash
	
	public boolean deleteTrash(Trash trash) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("DELETE `trash` WHERE trash_id=?;");
			ps.setLong(1, trash.getTrashId());
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
