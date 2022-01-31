package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Message;

public class MessageConnector {

	private Connection cnx;
	
	public MessageConnector() {
		this.cnx = DatabaseConfig.loadDatabase();
	}
	
	
	//create message 
	
	public boolean createMessage (Message message) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO `message` (`nom`, `email`,`message`) VALUES (?,?,?,?)");
			ps.setString(1,message.getNom());
			ps.setString(2,message.getEmail());
			ps.setString(3,message.getMessage());
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
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM `message` WHERE message_id=? ;");
			ps.setInt(1, id );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String nom = rs.getString("nom");
				String email = rs.getString("email");
				String message1 = rs.getString("message");
				System.out.println("we got it !");
				message = new Message(nom, email, message1);
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
			PreparedStatement ps = cnx.prepareStatement("select * from `message`");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Message e = new Message();
	        	e.setNom(rs.getString("nom"));
	            e.setEmail(rs.getString("email"));
	            e.setMessage( rs.getString("message"));
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
			PreparedStatement ps = cnx.prepareStatement("UPDATE `message` SET nom=?, email=?, message=? WHERE message_id=?;");
			ps.setString(1, message.getNom());
			ps.setString(2, message.getEmail());
			ps.setString(3, message.getMessage());
			ps.setInt(4, message.getMessageId());
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
	
	public boolean deleteMessage(Message message) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("DELETE `message` WHERE message_id=?;");
			ps.setLong(1, message.getMessageId());
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


