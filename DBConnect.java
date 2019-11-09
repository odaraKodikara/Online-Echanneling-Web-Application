package util;

import java.sql.*;

public class DBConnect {

	public Statement st;
	public Connection con;
	public ResultSet rs;

	public ResultSet rs1;
	public Statement st1;

	public DBConnect() throws SQLException, ClassNotFoundException{

		try {

			String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
			String url = "jdbc:sqlserver://localhost:1433;databaseName=echanneling"; 
			String username = "odara";
			String password = "odara";
			Class.forName(driver);

			Connection con = DriverManager.getConnection(url, username, password);
			System.out.println("connected to database");
			st = con.createStatement();
			st1 = con.createStatement();

		} catch (Exception e) {
			System.out.println("ERROR" + e);
		}

	}

}