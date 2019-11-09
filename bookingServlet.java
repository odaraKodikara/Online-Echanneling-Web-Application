package manageBooking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import util.DBConnect;

/**
 * Servlet implementation class bookingServlet
 */
@WebServlet("/bookingServlet")
public class bookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookingServlet() {
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
		// TODO Auto-generated method stub
		try
		{
			//getting values
			
			String docName = request.getParameter("dname");
			String speciality = request.getParameter("specialization");
			String patname = request.getParameter("pname");
			String conNo = request.getParameter("cno");
			String hosName = request.getParameter("hname");
			
			//validation
			
			if(docName == "" || speciality == "" || patname == "" || conNo == "" || hosName == "")
			{
				JOptionPane.showMessageDialog(null, "You need to fill all the fields..");
				response.sendRedirect("bookingForm.jsp");
			}			
			else
			{
				DBConnect db = new DBConnect();
				db.st.executeUpdate("INSERT INTO booking(dname,specialization,pName,cNo,hName,date)VALUES('"+docName+"','"+speciality+"','"+patname+"','"+conNo+"','"+hosName+"',getDate())");
				JOptionPane.showMessageDialog(null, "Successfully Booked");
				response.sendRedirect("paymentMethod.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		doGet(request, response);
	}

}
