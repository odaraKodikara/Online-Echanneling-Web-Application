package manageRefund;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import util.DBConnect;

/**
 * Servlet implementation class addRefund
 */
@WebServlet("/addRefund")
public class addRefund extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addRefund() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			//getting values
			
			String pid = request.getParameter("payid");
			String uName = request.getParameter("name");
			String uNo = request.getParameter("accno");
			String uBank = request.getParameter("bank");
			String uBranch = request.getParameter("branch");
			
			//validation
			
			if(pid=="" || uName == "" || uNo == "" || uBank == "" || uBranch == "" )
			{
				JOptionPane.showMessageDialog(null, "You need to fill all the fields..");
				response.sendRedirect("refund.jsp");
			}
			else
			{
				DBConnect db = new DBConnect();
				db.st.executeUpdate("INSERT INTO refund(aname,aNo,bank,branch,paymentId)VALUES('"+uName+"','"+uNo+"','"+uBank+"','"+uBranch+"','"+pid+"')");
				JOptionPane.showMessageDialog(null, "Successfully Refunded");
				response.sendRedirect("home.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		doGet(request, response);
	}

}
