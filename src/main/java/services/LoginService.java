package services;

import database.ManagerConnector;
import database.SessionConnector;
import models.Manager;

public class LoginService {
	private ManagerConnector managerConnector;
	private SessionConnector sessionConnector;
	
	public LoginService() {
		this.managerConnector = new ManagerConnector();
		this.sessionConnector = new SessionConnector();		
	}
	
	public Manager login(String email, String password) {
		Manager _manager = managerConnector.findByEmailAndPassword(email, password);
		
		if(_manager == null) {
			return null;
		}else {
			sessionConnector.saveSession(_manager);
			return _manager;			
		}	
	}
	
	public Manager logout(Manager manager) {		
		if(!sessionConnector.getSession(manager)) {
			return null;
		}else {
			sessionConnector.deleteSession(manager);
			return manager;			
		}	
	}
}
