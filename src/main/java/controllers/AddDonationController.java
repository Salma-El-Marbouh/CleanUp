import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Donation;
import services.DonationService;

@WebServlet("addDonation")

public class AddDonationController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
    private DonationService donationService;
	
	public AddDonationController() {
		this.donationService = new DonationService();
	}
	
	protected void doPost( HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException{
		
		        System.out.println(request.getParameter("type"));
		    	System.out.println(request.getParameter("quantite"));
		    	System.out.println(request.getParameter("date_de_ramassage"));
		    	System.out.println(request.getParameter("eboueur_charge"));
		    	
		    	SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		        java.util.Date date_de_ramassage = null;
				try {
					date_de_ramassage= format.parse(request.getParameter("date_de_naissance"));
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		        java.sql.Date date_de_ramassage_sql = new java.sql.Date(date_de_ramassage.getTime());		        
		    	
		    	
		    	Donation donation = new Donation(request.getParameter("type"),request.getParameter("quantite"), date_de_ramassage_sql, Integer.parseInt(request.getParameter("eboueur_charge")));
		    	
		    	boolean donation1 = donationService.createDonation(donation);
		    	if(donation1 == true) {
		    		response.sendRedirect("http://localhost:8080/CleanUp/home.jsp");
		    	} else {
		    		response.sendRedirect("http://localhost:8080/CleanUp/error.jsp");
		    	}
		    }

}
