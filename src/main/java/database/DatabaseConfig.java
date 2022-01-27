package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConfig {
	public static Connection loadDatabase() {
		Connection cn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cleanup","root","");
			System.out.println("connected");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cn;
	}
}
