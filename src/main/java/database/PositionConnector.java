package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Position;
public class PositionConnector {
	
	//create position 
	
	public boolean createPosition (Position position) {
				
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO `position` (`ville`, `quartier`,`localisation`) VALUES (?,?,?)");
			ps.setString(1,position.getVille());
			ps.setString(2,position.getQuartier());
			ps.setString(3,position.getLocalisation());
			ps.executeUpdate();	
			System.out.println("creation succeeded !");
			return true;
		}catch(Exception e) {
			System.out.println("creation failed !");
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
	//get one position 
	
	public Position getPosition( int id1 ) {
		
		Position position = null;
		
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM `position` WHERE position_id=? ;");
			ps.setLong(1, id1 );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int position_id = rs.getInt("position_id");
				String ville = rs.getString("ville");
				String quartier = rs.getString("quartier");
				String localisation = rs.getString("localisation");
				System.out.println("we got it !");
				position = new Position(position_id, ville, quartier, localisation);
				System.out.println("we got it 2 !");
								
			}
			
			System.out.println("hahouma!");
			
		}catch(Exception e) {
			System.out.println("mabghawch y3tiwna koulchi :( !");
			e.printStackTrace();	
		}
		return position;
		
	}
	
	//get all positions 
	
	
		
	public List<Position> getAllPositions(){
		
		ArrayList<Position> list_Positions = new ArrayList<Position>();
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("select * from `position`");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Position e = new Position();
				e.setId(rs.getInt("position_id"));
	        	e.setVille(rs.getString("ville"));
	            e.setQuartier(rs.getString("quartier"));
	            e.setLocalisation(rs.getString("localisation"));
	            list_Positions.add(e);
			}
			cnx.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	return list_Positions;	
	}
	
	
	
	//update position
	
	public boolean updatePosition(Position position ) {
			
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("UPDATE `position` SET ville=?, quartier=?, localisation=?, eboueur_charge=? WHERE position_id=?;");
			ps.setString(1, position.getVille());
			ps.setString(2, position.getQuartier());
			ps.setString(3, position.getLocalisation());
			ps.setLong(5, position.getId());
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
	
	
	//delete position
	
	public boolean deletePosition(int id) {
		
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("DELETE FROM `position` WHERE position_id=?;");
			ps.setLong(1, id);
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
	
	public String getTheCleaner(int id) {
		String theCleaner=null;
		
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("Select nom,prenom from `cleaner` WHERE adresses_de_ramassage=?;");
			ps.setLong(1, id);
			
            ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String nom = rs.getString("nom");
				String prenom = rs.getString("prenom");
				System.out.println("we got it !");
				theCleaner= nom+"_"+prenom ;
			}
			System.out.println( theCleaner ); 
			return theCleaner;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
}
