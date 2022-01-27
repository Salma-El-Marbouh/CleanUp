package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Position;
public class PositionConnector {
	
	private Connection cnx;
	
	public PositionConnector() {
		this.cnx = DatabaseConfig.loadDatabase();
	}
	
	
	//create position 
	
	public boolean createPosition (Position position) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO position VALUES (?);");
			ps.setLong(1,position.getId());
			ps.setString(2,position.getVille());
			ps.setString(3,position.getQuartier());
			ps.setString(4,position.getLocalisation());
			ps.setString(5,position.getEboueurCharge());
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
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM position WHERE id=? ;");
			ps.setLong(1, id1 );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String ville = rs.getString("ville");
				String quartier = rs.getString("quartier");
				String localisation = rs.getString("localisation");
				String eboueurCharge = rs.getString("eboueurCharge");
				System.out.println("we got it !");
				position = new Position(id, ville, quartier, localisation, eboueurCharge);
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
			PreparedStatement ps = cnx.prepareStatement("select * from Position");
			ResultSet st = ps.executeQuery();
			while(st.next()) {
				Position e = new Position();
				e.setId(st.getInt("id"));
	        	e.setVille(st.getString("ville"));
	            e.setQuartier(st.getString("quartier"));
	            e.setLocalisation( st.getString("localisation"));
	            e.setEboueurCharge(st.getString("eboueurCharge"));
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
			PreparedStatement ps = cnx.prepareStatement("UPDATE position SET ville=?, quartier=?, localisation=?, eboueurCharge=? WHERE id=?;");
			ps.setString(1, position.getVille());
			ps.setString(2, position.getQuartier());
			ps.setString(2, position.getLocalisation());
			ps.setString(2, position.getEboueurCharge());
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
	
	public boolean deletePosition(Position position) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("DELETE position WHERE id=?;");
			ps.setLong(1, position.getId());
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
