package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import models.Position;
import services.PositionService;

@WebServlet("/addPosition")

public class AddPositionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PositionService positionService;
	
	public AddPositionController() {
		this.positionService = new PositionService();
	}
	
	protected void doPost( HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException{
		    	System.out.println(request.getParameter("ville"));
		    	System.out.println(request.getParameter("quartier"));
		    	System.out.println(request.getParameter("localisation"));
		    	
		    	Position position = new Position(request.getParameter("ville"),request.getParameter("quartier"), request.getParameter("localisation") );
		    	
		    	boolean _position = positionService.createPosition(position);
		    	if(_position == true) {
		    		response.sendRedirect("http://localhost:8080/CleanUp/admin/position/create.jsp");
		    	} else {
		    		response.sendRedirect("http://localhost:8080/CleanUp/error.jsp");
		    	}
		    }
	
	

}
