package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Message;
import services.MessageService;

@WebServlet("/addMessage")

public class AddMessageController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
    private MessageService messageService;
	
	public AddMessageController() {
		this.messageService = new MessageService();
	}
	
	protected void doPost( HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException{
		    	System.out.println(request.getParameter("nom"));
		    	System.out.println(request.getParameter("email"));
		    	System.out.println(request.getParameter("message"));
		    	System.out.println(request.getParameter("categorie"));
		    	
		    	Message message = new Message(request.getParameter("nom"),request.getParameter("email"), request.getParameter("message"), request.getParameter("categorie"));
		    	
		    	boolean message1 = messageService.createMessage(message);
		    	if(message1 == true) {
		    		response.sendRedirect("http://localhost:8080/CleanUp/home.jsp");
		    	} else {
		    		response.sendRedirect("http://localhost:8080/CleanUp/error.jsp");
		    	}
		    }

}
