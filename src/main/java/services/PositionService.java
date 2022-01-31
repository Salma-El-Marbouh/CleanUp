package services;

import java.util.List;

import models.Cleaner;
import database.CleanerConnector;
import database.PositionConnector;
import models.Position;

public class PositionService {
	
	private PositionConnector positionConnector ;
	private CleanerConnector cleanerConnector ;
	
	public PositionService() {
		this.positionConnector = new PositionConnector();
		this.cleanerConnector = new CleanerConnector();
	}
	
	public boolean createPosition(Position _position) {
		return positionConnector.createPosition(_position);	
	}
	
	public List<Position> readAllPositions() {
		return positionConnector.getAllPositions();
	}
	
	public Position readPosition(int id) {
		return positionConnector.getPosition(id);
	}
	
	public boolean updatePosition(Position _position) {
		return positionConnector.updatePosition(_position);
	}
	
	public boolean deletePosition(Position _position) {
		return positionConnector.deletePosition(_position);
	}
	
	public List<Cleaner> getAllCleaners(){
		return cleanerConnector.getAllCleaners();
	}
	
	public Cleaner getOneCleaner(int id) {
		return cleanerConnector.getCleaner(id);
	}
	
}
