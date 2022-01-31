package controllers;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Manager;
import services.LoginService;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginService loginService;
	
	public LoginController() {
		this.loginService = new LoginService();
	}
    
    protected void doPost( HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
    	System.out.println(request.getParameter("email"));
    	System.out.println(request.getParameter("password"));
    	Manager _manager = loginService.login(request.getParameter("email"), request.getParameter("password"));
    	if(_manager == null) {
	   	     PrintWriter printWriter = response.getWriter();
	   	     printWriter.print("Email or password incorrect...");
    		 response.sendRedirect("http://localhost:8080/CleanUp/error.jsp");
    	} else {
	   	     PrintWriter printWriter = response.getWriter();
	   	     printWriter.print("Logged In!");
    		response.sendRedirect("http://localhost:8080/CleanUp/admin/index.jsp");
    	}
    }
	

}
