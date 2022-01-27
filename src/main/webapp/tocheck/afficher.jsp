
<link
	href="https://fonts.googleapis.com/css?family=Righteous&display=swap"
	rel="stylesheet">

<link href="css/main.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css"
	integrity="sha512-T584yQ/tdRR5QwOpfvDfVQUidzfgc2339Lc8uBDtcp/wYu80d7jwBgAxbyMh0a9YM9F8N3tdErpFI8iaGx6x5g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>




<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<div style="max-height: 500px;overflow: scroll;">
    <table class="table  table-bordered table-hover" style="width: 95%; margin: auto; text-align: center;">
        <thead class="table-info">
            <tr>
                <th>ID</th>
                <th>nom </th>
                <th>date de naissance </th>
                <th>sexe </th>
                <th>telephone</th>
                <th>email</th>
                <th>mot de passe</th>
                <th>adresse</th>
                <th>Action</th>
                
                

            </tr>
        </thead>
        <tbody>
            <%
						String driver = "com.mysql.jdbc.Driver";
						String con = "jdbc:mysql://localhost:3306/cleanup";
						String req = "select id,nom,dateN,sexe,telephone,email,mdp,adresse from eboueur";
						try {
							// étape 1: charger la classe de driver
							Class.forName(driver);

							// étape 2: créer l'objet de connexion
							Connection conn = DriverManager.getConnection(con, "root", "");

							// étape 3: créer l'objet statement

							PreparedStatement stmt = conn.prepareStatement(req);

							ResultSet res = stmt.executeQuery();
							// étape 4: exécuter la requête
							if (res.next()) {

								do {
							System.out.println("La connexion a était bien établit!!");

							String id = res.getString(1);
							String nom = res.getString(2);
						
							String dateN = res.getString(3);
							String sexe = res.getString(4);
							String telephone = res.getString(5);
							String email = res.getString(6);
							String mdp = res.getString(7);
							
							String adresse = res.getString(8);
							
							

							out.print("<tr><td>" + id + "</td><td>" + nom + "</td>" + "<td>" + dateN + "</td>" + "<td>" + sexe
									+ "</td>" + "<td>" + telephone + "</td>" +"<td>" + email + "</td>"+"<td>" + mdp + "</td>"+"<td>" + adresse + "</td>"+ "<td>"
									+ "<a  class='btn btn-danger' name='submit' href=supprimer.jsp?id=" + id + ">Supprimer</a>"
									+ "<a  class='btn btn-warning' href=./modifier.jsp?id=" + id
													+ ">Modifier</a>" + "</td></tr>");

								} while (res.next());

							} else {
							}
							// étape 5: fermez l'objet de connexion
							conn.close();
						} catch (Exception e) {
							System.out.println(e);
						}
						%>

        </tbody>
    </table>
</div>