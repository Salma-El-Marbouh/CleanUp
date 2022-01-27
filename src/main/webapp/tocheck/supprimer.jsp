<!DOCTYPE html>
<html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<head>
    <meta charset="ISO-8859-1">
</head>

<body>
    <%
	String driver = "com.mysql.jdbc.Driver";
	String con = "jdbc:mysql://localhost:3306/cleanup";
	String req = "DELETE FROM  eboueur where id=?";

	// compteur
	try {
		// étape 1: charger la classe de driver
		Class.forName(driver);

		// étape 2: créer l'objet de connexion
		Connection conn = DriverManager.getConnection(con, "root", "");

		// étape 3: créer l'objet statement

		PreparedStatement stmt = conn.prepareStatement(req);

		// étape 4: exécuter la requête

		if (!request.getParameter("id").equals(null)) {
			stmt.setString(1, request.getParameter("id"));
			stmt.executeUpdate();
			response.sendRedirect("afficher.jsp");

		}

		// étape 5: fermez l'objet de connexion

		conn.close();
	} catch (Exception e) {
		System.out.println(e);
	}
	%>
</body>

</html>