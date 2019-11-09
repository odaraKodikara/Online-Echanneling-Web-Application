package search;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import util.DBConnect;
//import com.connection.myConn;

public class Doctor {
	
	protected String docName;
	private String specialization;
	private String hosName;
	
	public Doctor() {
		super();
	}
	
	public Doctor(String docName, String specialization, String hosName) {
		super();
		this.docName = docName;
		this.specialization = specialization;
		this.hosName = hosName;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

	public String getHosName() {
		return hosName;
	}

	public void setHosName(String hosName) {
		this.hosName = hosName;
	}
	
	
	//public static boolean getDoctor(Doctor d) {
	
		//String name = docName;
		//String spec = specialization;
		//String hos = hosName;
	public boolean getDoctor(String name,String spec,String hos) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		
		try {
			//con = Conn.getConn();
			
			String dbdname = null;
			String dbspecialization = null;
			String dbhId=null;
			String dbhospital = null;
			
			
			//and hosName = '"+hos+"'"
				// Create and execute SQL statement.
				String checkDocQuery = "SELECT * FROM Doctor WHERE dName = '"+name+"'and speciality = '"+spec+"' and hosName = '"+hos+"'";
				//stmt = con.createStatement();
				//rs = stmt.executeQuery(checkDocQuery);
				
				DBConnect dbPass = new DBConnect();
				dbPass.rs = dbPass.st.executeQuery(checkDocQuery);

				
				while(dbPass.rs.next()) {
					dbdname = dbPass.rs.getString(1);
					dbspecialization = dbPass.rs.getString(2);
					dbhId=dbPass.rs.getString(3);
					dbhospital = dbPass.rs.getString(4);
					System.out.println(dbdname+" "+dbspecialization+" "+dbhId+" "+dbhospital);
				}
				
				if(dbdname.equals(name) && dbspecialization.equals(spec) && dbhospital.equals(hos)) {
					return true;
				}
				else
					return false;
				
		}	catch(SQLException | ClassNotFoundException sqle) {
			
			sqle.printStackTrace();
		}
		
		return false;
		
	}
	
	
	
	
}
