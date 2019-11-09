package manageRefund;
import util.DBConnect;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class RefundControllerServlet
 */
@WebServlet("/RefundControllerServlet")
public class RefundControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private refundDbUtil RefundDbUtil;
	
	@Resource(name="jdbc/Myproject")
	private DataSource datasource;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			RefundDbUtil = new refundDbUtil(datasource);
		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//read the "command" parameter
			
			String theCommand = request.getParameter("command");
			
			//If the command is missing, then default 
			
			if(theCommand == null) {
				theCommand = "LIST";
				
				switch(theCommand) {
				
				case "LIST":
					listRefunds(request,response);
					break;
					
				case "ADD":
					addRefunds(request,response);
					break;	
					
				case "LOAD":
					loadRefunds(request,response);
					break;
				
				case "UPDATE":
					updateRefunds(request,response);
					break;
				
				case "DELETE":
					deleteRefunds(request,response);
					break;
					
				default: 
					listRefunds(request,response);
				
				}
			}
			
			listRefunds(request, response);
		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}
	}
		

	private void deleteRefunds(HttpServletRequest request, HttpServletResponse response)
	 throws Exception{
		
		String theBankId = request.getParameter("bid");
		
		RefundDbUtil.deleteRefund(theBankId);
		
		listRefunds(request,response);
		
	}

	private void updateRefunds(HttpServletRequest request, HttpServletResponse response)
	throws Exception{
		
		int bid = Integer.parseInt(request.getParameter("bid"));
		String  accHolderName = request.getParameter("accHolderName");
		String  accNo = request.getParameter("accNo");
		String  bankName = request.getParameter("bankName");
		String  branchName = request.getParameter("branchName");
		
		refund theRefund = new refund(bid,accHolderName,accNo,bankName,branchName);
		
		RefundDbUtil.updateRefund(theRefund);
		
		listRefunds(request,response);
	}

	private void loadRefunds(HttpServletRequest request, HttpServletResponse response)
		throws Exception {
			
			String theBankId = request.getParameter("bid");
			
			refund theRefund = RefundDbUtil.getRefund(theBankId);
			
			request.setAttribute("THE_REFUND", theRefund);
			
			RequestDispatcher dispatcher =
					request.getRequestDispatcher("/update-refund-form");
			dispatcher.forward(request,response);
			
		
	}

	private void addRefunds(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String accHolderName = request.getParameter("accHolderName");
		String accNo = request.getParameter("accNo");
		String bankName = request.getParameter("bankName");
		String branchName = request.getParameter("branchName");
		
		//creating a new object
		
		refund theRefund = new refund(accHolderName,accNo,bankName,branchName);
		
		//adding to the database
		
		RefundDbUtil.addRefund(theRefund);
		
		//back to list-refunds
		
		listRefunds(request,response);
	}

	private void listRefunds(HttpServletRequest request, HttpServletResponse response)
		throws Exception{
		// TODO Auto-generated method stub
		
		List<refund> refunds = RefundDbUtil.getRefunds();
		
		request.setAttribute("REFUND_LIST",refunds);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/list-refunds.jsp");
		dispatcher.forward(request, response);
	}

}
