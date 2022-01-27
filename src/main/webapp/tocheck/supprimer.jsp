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
		// �tape 1: charger la classe de driver
		Class.forName(driver);

		// �tape 2: cr�er l'objet de connexion
		Connection conn = DriverManager.getConnection(con, "root", "");

		// �tape 3: cr�er l'objet statement

		PreparedStatement stmt = conn.prepareStatement(req);

		// �tape 4: ex�cuter la requ�te

		if (!request.getParameter("id").equals(null)) {
			stmt.setString(1, request.getParameter("id"));
			stmt.executeUpdate();
			response.sendRedirect("afficher.jsp");

		}

		// �tape 5: fermez l'objet de connexion

		conn.close();
	} catch (Exception e) {
		System.out.println(e);
	}
	%>
</body>

</html>