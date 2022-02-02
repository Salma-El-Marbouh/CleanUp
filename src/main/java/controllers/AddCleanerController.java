package controllers;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Cleaner;
import services.CleanerService;

@WebServlet("/addCleaner")

public class AddCleanerController {
	private CleanerService cleanerService;
	
	public AddCleanerController() {
		this.cleanerService = new CleanerService();
	}
	
	protected void doPost( HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException{
		    	System.out.println(request.getParameter("nom"));
		    	System.out.println(request.getParameter("prenom"));
		    	System.out.println(request.getParameter("date_de_naissance"));
		    	System.out.println(request.getParameter("sexe"));
		    	System.out.println(request.getParameter("telephone"));
		    	System.out.println(request.getParameter("email"));
		    	System.out.println(request.getParameter("mot_de_passe"));
		    	System.out.println(request.getParameter("date_emploi"));
		    	System.out.println(request.getParameter("adresses_de_ramassage"));
		    	
		    	Date date_de_naissance = Date.parse(String.valueOf(request.getParameter("date_de_naissance")));
		    	Date date_emploi = Date.parse(String.valueOf(request.getParameter("date_emploi")));
		    	
		    	Cleaner cleaner = new Cleaner(request.getParameter("nom"), request.getParameter("prenom"), date_de_naissance, request.getParameter("sexe"), request.getParameter("telephone"), request.getParameter("email"), request.getParameter("mot_de_passe"), date_emploi, Integer.parseInt(request.getParameter("adresses_de_ramassage")));
		    	
		    			    	
		    	boolean _cleaner = cleanerService.createCleaner(cleaner);
		    	if(_cleaner == true) {
		    		response.sendRedirect("http://localhost:8080/CleanUp/admin/cleaner/create.jsp");
		    	} else {
		    		response.sendRedirect("http://localhost:8080/CleanUp/error.jsp");
		    	}
		    }
	
	

}
