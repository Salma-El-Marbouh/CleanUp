
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjoutOffre
 */
@WebServlet("/Ajouter")
public class Ajouter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String dateN = request.getParameter("dateN");
		String sexe = request.getParameter("sexe");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String mdp = request.getParameter("mdp");
		String dateE = request.getParameter("dateE");
		String adresse = request.getParameter("adresse");
		
		String driver = "com.mysql.jdbc.Driver";
		String con = "jdbc:mysql://localhost:3306/cleanup";
		String req = "insert into eboueur (nom,prenom,dateN,sexe,telephone,email,mdp,dateE,adresse) values(?,?,?,?,?,?,?,?,?)";

		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(con, "root", "");
			PreparedStatement st = conn.prepareStatement(req);
			//if (request.getParameter("submit") != null) {
			st.setString(1, nom);
			st.setString(2, prenom);
			st.setString(3, dateN);
			st.setString(4, sexe);
			st.setString(5, telephone);
			st.setString(6, email);
			st.setString(7, mdp);
			st.setString(8, dateE);
			st.setString(9, adresse);
			
			
		
			st.executeUpdate();
			//}
			System.out.println("L'insertion est bien fait !! ");
			response.sendRedirect("afficher.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			
		
		}

		
	}
}

