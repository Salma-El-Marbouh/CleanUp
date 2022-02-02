package services;

import java.util.List;

import database.CleanerConnector;
import database.PositionConnector;
import models.Cleaner;
import models.Position;

public class CleanerService {
	
	private CleanerConnector cleanerConnector ;
	private PositionConnector  positionConnector ;
	
	public CleanerService() {
		this.cleanerConnector = new CleanerConnector();
		this.positionConnector = new PositionConnector();
	}
	
	public boolean createCleaner(Cleaner _cleaner) {
		return cleanerConnector.createCleaner(_cleaner);	
	}
	
	public List<Cleaner> readAllCleaners() {
		return cleanerConnector.getAllCleaners();
	}
	
	public Cleaner readCleaner(int id) {
		return cleanerConnector.getCleaner(id);
	}
	
	public boolean updateCleaner(Cleaner _cleaner) {
		return cleanerConnector.updateCleaner(_cleaner);
	}
	
	public boolean deleteCleaner(Cleaner _cleaner) {
		return cleanerConnector.deleteCleaner(_cleaner);
	}
	
	public List<Position> getAllPositions(){
		return positionConnector.getAllPositions();
	}
	
	public Position getOnePosition(int id) {
		return positionConnector.getPosition(id);
	}


}
