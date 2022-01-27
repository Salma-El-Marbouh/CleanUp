package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import models.Manager;
public class SessionConnector {
	
	private Connection cnx;
	
	public SessionConnector() {
		this.cnx = DatabaseConfig.loadDatabase();
	}
	
	public String saveSession(Manager manager) {
	
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO session VALUES (?)");
			ps.setString(1,manager.getEmail());
			ps.executeUpdate();			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return manager.getEmail();
	}
	
	public String deleteSession(Manager manager) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("DELETE FROM session WHERE email=?");
			ps.setString(1,manager.getEmail());
			ps.executeQuery();			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return manager.getEmail();
	}
	
	public boolean getSession(Manager manager) {
		
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM session WHERE email = ?");
			ps.setString(1,manager.getEmail());
			ResultSet st = ps.executeQuery();

			while(st.next()) {
				if(manager.getEmail().equals(st.getString("email"))) {
						return true;                          
			}}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
		}
