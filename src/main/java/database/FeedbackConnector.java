package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Feedback;

public class FeedbackConnector {
	
	private Connection cnx;
	
	public FeedbackConnector() {
		this.cnx = DatabaseConfig.loadDatabase();
	}
	
	
	//create feedback 
	
	public boolean createFeedback (Feedback feedback) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO `feedback` (`nom`, `email`,`note`) VALUES (?,?,?,?)");
			ps.setString(1,feedback.getNom());
			ps.setString(2,feedback.getEmail());
			ps.setInt(3,feedback.getNote());
			ps.executeUpdate();	
			System.out.println("creation succeeded !");
			return true;
		}catch(Exception e) {
			System.out.println("creation failed !");
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
	//get one feedback 
	
	public Feedback getFeedback( int id ) {
		
		Feedback feedback = null;
		
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM `feedback` WHERE feedback_id=? ;");
			ps.setInt(1, id );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String nom = rs.getString("nom");
				String email = rs.getString("email");
				int note = rs.getInt("note");
				System.out.println("we got it !");
				feedback = new Feedback(nom, email, note);
				System.out.println("we got it 2 !");
								
			}
			
			System.out.println("hahouma!");
			
		}catch(Exception e) {
			System.out.println("mabghawch y3tiwna koulchi :( !");
			e.printStackTrace();	
		}
		return feedback;
		
	}
	
	//get all feedbacks 
	
	
		
	public List<Feedback> getAllFeedbacks(){
		
		ArrayList<Feedback> list_Feedbacks = new ArrayList<Feedback>();
		try {
			PreparedStatement ps = cnx.prepareStatement("select * from `feedback`");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Feedback e = new Feedback();
	        	e.setNom(rs.getString("nom"));
	            e.setEmail(rs.getString("email"));
	            e.setNote( rs.getInt("note"));
	            list_Feedbacks.add(e);
			}
			cnx.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	return list_Feedbacks;	
	}
	
	
	
	//update feedback
	
	public boolean updateFeedback(Feedback feedback ) {
			
		try {
			PreparedStatement ps = cnx.prepareStatement("UPDATE `feedback` SET nom=?, email=?, note=? WHERE feedback_id=?;");
			ps.setString(1, feedback.getNom());
			ps.setString(2, feedback.getEmail());
			ps.setInt(3, feedback.getNote());
			ps.setInt(4, feedback.getFeedbackId());
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
	
	
	//delete feedback
	
	public boolean deleteFeedback(Feedback feedback) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("DELETE `feedback` WHERE feedback_id=?;");
			ps.setLong(1, feedback.getFeedbackId());
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
