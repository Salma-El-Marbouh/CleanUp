package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Feedback;
import services.FeedbackService;

@WebServlet("/addFeedback")

public class AddFeedbackController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
    private FeedbackService feedbackService;
	
	public AddFeedbackController() {
		this.feedbackService = new FeedbackService();
	}
	
	protected void doPost( HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException{
		    	System.out.println(request.getParameter("nom"));
		    	System.out.println(request.getParameter("email"));
		    	System.out.println(request.getParameter("note"));
		    	
		    	Feedback feedback = new Feedback(request.getParameter("nom"),request.getParameter("email"),Integer.parseInt(request.getParameter("note")));
		    	
		    	boolean _feedback = feedbackService.createFeedback(feedback);
		    	if(_feedback == true) {
		    		response.sendRedirect("http://localhost:8080/CleanUp/home.jsp");
		    	} else {
		    		response.sendRedirect("http://localhost:8080/CleanUp/error.jsp");
		    	}
		    }

}
