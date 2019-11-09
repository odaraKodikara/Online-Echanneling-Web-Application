package managePayment;
import util.DBConnect;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


/**
 * Servlet implementation class payLater
 */
@WebServlet("/payLater")
public class payLater extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payLater() {
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
			
			String uName = request.getParameter("name");
			String uAddress = request.getParameter("address");
			String uPhone = request.getParameter("phoneNumber");
			String uMail = request.getParameter("email");
			String uType = request.getParameter("type");
			String uCard = request.getParameter("cardnum");
			String uMonth = request.getParameter("month");
			String uYear = request.getParameter("year");
			String uCVV = request.getParameter("cvv");
			
			//validation
			
			if(uName == "" || uAddress == "" || uPhone == "" || uType == "" || uCard == "" || uMonth == "" || uYear == "" || uCVV == "")
			{
				JOptionPane.showMessageDialog(null, "You need to fill all the fields..");
				response.sendRedirect("payLater.jsp");
			}	
			else
			{
				DBConnect db = new DBConnect();
				db.st.executeUpdate("INSERT INTO payLater(name,address,phone,type,cardNumber,expMonth,expYear,cvv,email)VALUES('"+uName+"','"+uAddress+"','"+uPhone+"','"+uType+"','"+uCard+"','"+uMonth+"','"+uYear+"','"+uCVV+"','"+uMail+"')");
				JOptionPane.showMessageDialog(null, "Successfully Added to PayLater");
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
