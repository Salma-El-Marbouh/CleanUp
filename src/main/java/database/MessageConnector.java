package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Message;

public class MessageConnector {

	
	
	//create message 
	
	public boolean createMessage (Message message) {
		
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO `messages` (`nom`, `email`,`message`,`categorie`) VALUES (?,?,?,?);");
			ps.setString(1,message.getNom());
			ps.setString(2,message.getEmail());
			ps.setString(3,message.getMessage());
			ps.setString(4,message.getCategorie());
			ps.executeUpdate();	
			System.out.println("creation succeeded !");
			return true;
		}catch(Exception e) {
			System.out.println("creation failed !");
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
	//get one message 
	
	public Message getMessage( int id ) {
		
		Message message = null;
		
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM `messages` WHERE message_id=? ;");
			ps.setInt(1, id );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int message_id = rs.getInt("message_id");
				String nom = rs.getString("nom");
				String email = rs.getString("email");
				String message1 = rs.getString("message");
				String categorie = rs.getString("categorie");
				String etat = rs.getString("etat");
				System.out.println("we got it !");
				message = new Message(message_id, nom, email, message1, categorie, etat);
				System.out.println("we got it 2 !");
								
			}
			
			System.out.println("hahouma!");
			
		}catch(Exception e) {
			System.out.println("mabghawch y3tiwna koulchi :( !");
			e.printStackTrace();	
		}
		return message;
		
	}
	
	//get all messages 
	
	
		
	public List<Message> getAllMessages(){
		
		ArrayList<Message> list_Messages = new ArrayList<Message>();
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("select * from `messages`");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Message e = new Message();
				e.setMessageId(rs.getInt("message_id"));
	        	e.setNom(rs.getString("nom"));
	            e.setEmail(rs.getString("email"));
	            e.setMessage( rs.getString("message"));
	            e.setCategorie(rs.getString("categorie"));
	            e.setEtat(rs.getString("etat"));
	            list_Messages.add(e);
			}
			cnx.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	return list_Messages;	
	}
	
	
	
	//update message
	
	public boolean updateMessage(Message message ) {
			
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("UPDATE `messages` SET nom=?, email=?, message=?, categorie=?, etat=? WHERE message_id=?;");
			ps.setString(1, message.getNom());
			ps.setString(2, message.getEmail());
			ps.setString(3, message.getMessage());
			ps.setString(4, message.getCategorie());
			ps.setString(5, message.getEtat());
			ps.setInt(6, message.getMessageId());
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
	
	
	//delete message
	
	public boolean deleteMessage(int id) {
		
		try {
			Connection cnx = DatabaseConfig.loadDatabase();
			PreparedStatement ps = cnx.prepareStatement("DELETE FROM `messages` WHERE message_id=?;");
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
}


