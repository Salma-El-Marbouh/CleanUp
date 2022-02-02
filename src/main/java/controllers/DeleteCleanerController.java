package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.CleanerService;

@WebServlet("/deleteCleaner")

public class DeleteCleanerController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private CleanerService cleanerService;
	
	public DeleteCleanerController() {
		this.cleanerService = new CleanerService();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		    int id = Integer.parseInt(request.getParameter("cleaner_id"));
		    System.out.println(id);
	        boolean deleteCleaner = cleanerService.deleteCleaner(id);
	        System.out.println(deleteCleaner);
	        if(deleteCleaner == true) {
	        	response.sendRedirect("http://localhost:8080/CleanUp/admin/cleaner/read.jsp");
	        }
	}

}
