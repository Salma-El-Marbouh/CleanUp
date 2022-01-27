<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@page import="jakarta.servlet.http.HttpServletResponse"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<title>Modifcation</title>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous">
	
</script>

</head>

<body>


	<div class="content-container">
		<!-- Le body ou on va faire le dashboard -->
		<div class="container-fluid">
			<div class="col-lg-12"></div>
			<%
			String driver = "com.mysql.jdbc.Driver";
			String con = "jdbc:mysql://localhost:3306/cleanup";
			String take = "select nom,dateN,sexe,telephone,email,mdp,adresse from eboueur where id=?";
			String update = "UPDATE eboueur set nom=?,dateN=?,sexe=?,telephone=?,email=?,mdp=?,adresse=? where id=?";
			try {
				Class.forName(driver);

				// étape 2: créer l'objet de connexion
				Connection conn = DriverManager.getConnection(con, "root", "");
				PreparedStatement stmt = conn.prepareStatement(take);
				PreparedStatement stsmts = conn.prepareStatement(update);
				stmt.setString(1, request.getParameter("id"));
				ResultSet res = stmt.executeQuery();

				if (res.next()) {
					String nom = res.getString("nom");
					request.setAttribute("nom", nom);
					String dateN = res.getString("dateN");
					request.setAttribute("dateN", dateN);
					String sexe = res.getString("sexe");
					request.setAttribute("sexe", sexe);
					String telephone = res.getString("telephone");
					request.setAttribute("telephone", telephone);
					String email = res.getString("email");
					request.setAttribute("email", email);
					String mdp = res.getString("mdp");
					request.setAttribute("mdp", mdp);
					String adresse = res.getString("adresse");
					request.setAttribute("adresse", adresse);

					if (request.getParameter("submit") != null) {

				stsmts.setString(1, request.getParameter("nom"));
				stsmts.setString(2, request.getParameter("dateN"));
				stsmts.setString(3, request.getParameter("sexe"));
				stsmts.setString(4, request.getParameter("telephone"));
				stsmts.setString(5, request.getParameter("email"));

				stsmts.setString(6, request.getParameter("mdp"));
				stsmts.setString(7, request.getParameter("adresse"));
				stsmts.setString(8, request.getParameter("id"));

				stsmts.executeUpdate();
				response.sendRedirect("afficher.jsp");
					}

				}

				conn.close();

			} catch (Exception e) {
				out.print(e);
			}
			%>

			<div class="content-container">

				<div class="card" style="width: 40%; margin: auto">
					<!-- style="width :40%; margin-left: 29%; margin-top:5%;" -->
					<div class="card-header">
						<center>Informations</center>
					</div>
					<div class="card-body">
						<div class="bodyPage">

							<div class="info_compte">
								<form action="" method="post">

									<div class="form-group row">
										<label for="id" class="col-4 col-form-label">ID</label>
										<div class="col-8">
											<input type="text" class="form-control" name="id"
												value="<%=request.getParameter("id")%>" readonly>
										</div>
									</div>
									<div class="form-group row">
										<label for="nom" class="col-4 col-form-label">Nom</label>
										<div class="col-8">
											<input type="text" class="form-control" name="nom"
												value="<%=request.getAttribute("nom")%>" required>
										</div>
									</div>
									<div class="form-group row">
										<label for="dateN " class="col-4 col-form-label">date
											de naissance</label>
										<div class="col-8">
											<input type="text" class="form-control" name="dateN"
												value="<%=request.getAttribute("dateN")%>" required>
										</div>
									</div>
									<div class="form-group row">
										<label for="sexe" class="col-4 col-form-label">sexe</label>
										<div class="col-8">
											<input type="text" class="form-control" name="sexe"
												value="<%=request.getAttribute("sexe")%>" required>
										</div>
									</div>
									<div class="form-group row">
										<label for="telephone" class="col-4 col-form-label">telephone</label>
										<div class="col-8">
											<input type="text" class="form-control" name="telephone"
												value="<%=request.getAttribute("telephone")%>" required>
										</div>
									</div>
									<div class="form-group row">
										<label for="email" class="col-4 col-form-label">Email</label>
										<div class="col-8">
											<input type="email" class="form-control" name="email"
												value="<%=request.getAttribute("email")%>" required>
										</div>
									</div>
									<div class="form-group row">
										<label for="mdp" class="col-4 col-form-label">Mot de
											passe</label>
										<div class="col-8">
											<input type="password" class="form-control" name="mdp"
												value="<%=request.getAttribute("mdp")%>" required>
										</div>
									</div>
									<div class="form-group row">
										<label for="adresse" class="col-4 col-form-label">adresse</label>
										<div class="col-8">
											<input type="text" class="form-control" name="adresse"
												value="<%=request.getAttribute("adresse")%>" required>
										</div>
									</div>
									<div class="form-group row">
										<div class="offset-4 col-8">
											<button type="submit" class="btn btn-primary" name="submit">Modifier</button>
											<button type="reset" class="btn btn-danger">Annuler</button>
										</div>
									</div>

								</form>
								<center>
									<a href="afficher.jsp" class="btn btn-success p-3 btn-sm"
										style="">Revenir à la page d'acceuil</a>
								</center>
							</div>
						</div>
					</div>
				</div>
</body>
</html>