package services;

import java.util.List;

import database.FeedbackConnector;
import models.Feedback;

public class FeedbackService {
	private FeedbackConnector feedbackConnector ;
	
	public FeedbackService() {
		this.feedbackConnector = new FeedbackConnector();
	}
	
	public boolean createFeedback(Feedback _feedback) {
		return feedbackConnector.createFeedback(_feedback);
	}
	
	public List<Feedback> readAllFeedbacks() {
		return feedbackConnector.getAllFeedbacks();
	}
	
	public Feedback readFeedback(int id) {
		return feedbackConnector.getFeedback(id);
	}
	
	public boolean updateFeedback(Feedback _feedback) {
		return feedbackConnector.updateFeedback(_feedback);
	}

}
