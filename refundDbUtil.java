package manageRefund;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import util.DBConnect;

public class refundDbUtil {
	
	private DataSource datasource;
	
	public refundDbUtil (DataSource theDataSource){
		
		datasource = theDataSource;
	}
	
	public List<refund> getRefunds() throws Exception{
		
		List<refund> refunds = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try{
			
			// get a connection
			myConn = datasource.getConnection();
			
			// create sql statement
			String sql = "select * from refund";
					
			myStmt = myConn.createStatement();
			
			// execute query
			myRs = myStmt.executeQuery(sql);
			
			// process result set
			while(myRs.next()) {
				//retrieve data
				int bid = myRs.getInt("rid");
				String accHolderName = myRs.getString("aName");
				String accNo = myRs.getString("aNo");
				String bankName = myRs.getString("bank");
				String branchName = myRs.getString("branch");
				
				//create new object
				refund tempRefund = new refund(bid,accHolderName,accNo,bankName,branchName);
				
				//adding to a list
				refunds.add(tempRefund);
			}
			
			return refunds;
			
		   }
		
		 finally{
			 
			 close(myConn,myStmt,myRs );
		 }
	}
	
		private void close(Connection myConn, Statement myStmt, ResultSet myRs ) {
			
			try {
				if(myRs != null ) {
					myRs.close();
				}
				
				if(myStmt != null) {
					myStmt.close();
				}
				
				if(myConn != null) {
					myConn.close();
				}
			}
			catch(Exception exc) {
				exc.printStackTrace();
			}
		}

		public void addRefund(refund theRefund)throws Exception {
			// TODO Auto-generated method stub
			
			//insert sql values
			
			Connection myConn = null;
			PreparedStatement myStmt = null;
			
			try{
				myConn = datasource.getConnection();
				
				
			}
			finally {
				close(myConn, myStmt, null);
			}
		}

		public refund getRefund(String theBankId) throws Exception {
		
			refund theRefund = null;
			
			Connection myConn = null;
			PreparedStatement myStmt = null;
			ResultSet myRs = null;
			int bid;
			
			try {
				
				bid = Integer.parseInt(theBankId);
				myConn = datasource.getConnection();
				String sql = "select * from refund where id = bid";
				
				//myStmt = myConn.prepareStatement(sql);
				
				//myStmt.setInt(1,bid);
				 
				//myRs = myStmt.executeQuery();
				
				DBConnect dbPass = new DBConnect();
				dbPass.rs = dbPass.st.executeQuery(sql);
				
				if(dbPass.rs.next()) {
					String accHolderName = dbPass.rs.getString("aName");
					String accNo  = dbPass.rs.getString("aNo");
					String bankName = dbPass.rs.getString("bank");
					String branchName = dbPass.rs.getString("branch");
					
					theRefund = new refund(bid,accHolderName,accNo,bankName,branchName);
				}
				else {
					throw new Exception("Could not find the bank id : " +bid);
				}
				
			return theRefund;
			}
			finally {
				close(myConn,myStmt,myRs);
			}
			
		}

		public void updateRefund(refund theRefund)throws Exception {
			// TODO Auto-generated method stub
			Connection myConn = null;
			PreparedStatement myStmt = null;
			
			try {
				
			myConn = datasource.getConnection();
			
			String sql = "update refund"
						+"set database column names hr"
						+"where id=?";
						
			myStmt = myConn.prepareStatement(sql);
			
			myStmt.setString(1, theRefund.getAccHolderName());
			myStmt.setString(2, theRefund.getAccNo());
			myStmt.setString(3, theRefund.getBankName());
			myStmt.setString(4, theRefund.getBranchName());
			myStmt.setInt(5, theRefund.getBid());
			
			myStmt.execute();
		}
			finally {
				close(myConn, myStmt, null);
			}
			
		}

		public void deleteRefund(String theBankId) throws Exception {
			
			Connection myConn = null;
			PreparedStatement myStmt = null;
			
		try{
			int bid = Integer .parseInt(theBankId);
			
			myConn = datasource.getConnection();
			
			String sql = "delete from refund where id=?";
			
			myStmt = myConn.prepareStatement(sql);
			
			myStmt.setInt(1,bid);
			
			myStmt.execute();
			
		}	
		finally {
			close(myConn,myStmt, null );
		}
		        
		}
		
}

