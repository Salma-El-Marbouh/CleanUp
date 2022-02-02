package controllers;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Cleaner;
import services.CleanerService;

@WebServlet("/updateCleaner")

public class UpdateCleanerController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	CleanerService cleanerService ;
	
	public UpdateCleanerController() {
		this.cleanerService = new CleanerService();
	}
	
	protected void doPost( HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException{
		        System.out.print(request.getParameter("cleaner_id"));
		    	System.out.println(request.getParameter("nom"));
		    	System.out.println(request.getParameter("prenom"));
		    	System.out.println(request.getParameter("date_de_naissance"));
		    	System.out.println(request.getParameter("sexe"));
		    	System.out.println(request.getParameter("telephone"));
		    	System.out.println(request.getParameter("email"));
		    	System.out.println(request.getParameter("mot_de_passe"));
		    	System.out.println(request.getParameter("date_emploi"));
		    	System.out.println(request.getParameter("adresses_de_ramassage"));
		    	
		    	SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		        java.util.Date date_de_naissance = null;
		        java.util.Date date_emploi = null;
				try {
					date_de_naissance = format.parse(request.getParameter("date_de_naissance"));
					date_emploi = format.parse(request.getParameter("date_emploi"));
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		        java.sql.Date date_de_naissance_sql = new java.sql.Date(date_de_naissance.getTime());		        
				java.sql.Date date_emploi_sql = new java.sql.Date(date_emploi.getTime());
		    	
		    	Cleaner cleaner = new Cleaner(Integer.parseInt(request.getParameter("cleaner_id")), request.getParameter("nom"),request.getParameter("prenom"),
		    			                        date_de_naissance_sql, request.getParameter("sexe"), request.getParameter("telephone"), request.getParameter("email"), request.getParameter("mot_de_passe"),
		    			                        date_emploi_sql,Integer.parseInt(request.getParameter("adressew_de_ramassage")));
		    	
		    	boolean _cleaner = cleanerService.updateCleaner(cleaner);
		    	if(_cleaner == true) {
		    		response.sendRedirect("http://localhost:8080/CleanUp/admin/cleaner/create.jsp");
		    	} else {
		    		response.sendRedirect("http://localhost:8080/CleanUp/error.jsp");
		    	}
		    }

}
