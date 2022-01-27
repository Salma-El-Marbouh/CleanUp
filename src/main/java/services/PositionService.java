package services;

import database.PositionConnector;
import models.Position;

public class PositionService {
	
	private PositionConnector positionConnector ;
	
	public PositionService() {
		this.positionConnector = new PositionConnector();
	}
	
	public boolean createPosition(Position _position) {
		return positionConnector.createPosition(_position);	
	}
	
}
