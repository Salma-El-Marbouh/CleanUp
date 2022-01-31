package database;

import java.sql.Connection;
import java.sql.Date;
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
	
	
	//get manager 
	
	public Manager getManager( String email1 ) {
		
		Manager manager = null;
		
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM manager WHERE email=? ;");
			ps.setString(1, email1 );
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String email = rs.getString("email");
				String password = rs.getString("password");
				String nom = rs.getString("nom");
				Date date_de_naissance = rs.getDate("date_de_naissance");
				String sexe = rs.getString("sexe");
				String telephone = rs.getString("telephone");
				String adresse = rs.getString("adresse");
				String entreprise = rs.getString("entreprise");
				System.out.println("we got it !");
				manager = new Manager(email, password, nom, date_de_naissance, sexe, telephone, adresse, entreprise);
				System.out.println("we got it 2 !");
								
			}
			
			System.out.println("hahouma!");
			
		}catch(Exception e) {
			System.out.println("mabghawch y3tiwna koulchi :( !");
			e.printStackTrace();	
		}
		return manager;
		
	}
		
	
	
	//update manager
	
	public boolean updateManager(Manager manager ) {
			
		try {
			PreparedStatement ps = cnx.prepareStatement("UPDATE manager SET password=?, nom=?, date_de_naissance=?, sexe=?, telephone=?, adresse=?, entreprise=?  WHERE email=?;");
			ps.setString(1, manager.getPassword());
			ps.setString(2, manager.getNom());
			ps.setDate(3, manager.getDateDeNaissance());
			ps.setString(4, manager.getSexe());
			ps.setString(5, manager.getAdresse());
			ps.setString(6, manager.getEntreprise());
			ps.setString(7, manager.getEmail());
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
	
}
