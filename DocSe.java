package search;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import search.GetDoctorServlet;
import search.Doctor;

import javax.servlet.http.HttpSession;

import util.DBConnect;

public class DocSe extends Doctor{

	public DocSe() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DocSe(String docName, String specialization, String hosName) {
		super(docName, specialization, hosName);
		// TODO Auto-generated constructor stub
	}
	
	public DocSe loadAndSetInstance(String name) {
		DocSe instanceUser = new DocSe();
		
		
				
				try {
					
					try {
						String ddname = null;
						String dspecialization =  null;
						String dhos = null;
						// Create and execute SQL statement.
						
						DBConnect dbPass = new DBConnect();
						dbPass.rs = dbPass.st.executeQuery("select * from Doctor where dName='" +docName+ "'  ");

						
						while(dbPass.rs.next()) {
							ddname = dbPass.rs.getString(1);	instanceUser.setDocName(ddname);
							dspecialization = dbPass.rs.getString(2); instanceUser.setSpecialization(dspecialization);
							dhos = dbPass.rs.getString(4); instanceUser.setHosName(dhos);
							
						}
					}
					catch(SQLException sqle) {
						System.out.println("INSIDE");
						sqle.printStackTrace();
					}
				}
				catch(Exception e) {
					System.out.println("OUTSIDE");
					e.printStackTrace();
				}
				return instanceUser;
		
	}

}
