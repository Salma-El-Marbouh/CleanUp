package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.PositionService;

@WebServlet("/deletePosition")

public class DeletePositionController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private PositionService positionService;
	
	public DeletePositionController() {
		this.positionService = new PositionService();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		    int id = Integer.parseInt(request.getParameter("position_id"));
	        boolean deletePosition = positionService.deletePosition(id);
	        if(deletePosition == true) {
	        	response.sendRedirect("http://localhost:8080/CleanUp/admin/position/read.jsp");
	        }
	}

}
