package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import models.Manager;

public class ManagerConnector {
	
	private Connection cnx;
	
	public ManagerConnector() {
		this.cnx = DatabaseConfig.loadDatabase();
	}
	public Manager findByEmailAndPassword(String email, String password) {
	
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM manager");
			ResultSet st = ps.executeQuery();

			while(st.next()) {
				if(email.equals(st.getString("email"))) {
					if(password.equals(st.getString("password"))) {
						return new Manager(email, password);                          
					}
			}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
		}
