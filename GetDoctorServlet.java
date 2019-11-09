package search;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.ServletContext;

import search.Doctor;
//import com.doctor.DocSe;

/**
 * Servlet implementation class GetDoctorServlet
 */
@WebServlet("/GetDoctorServlet")
public class GetDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDoctorServlet() {
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
		response.setContentType("text/html");
		
		String docName = (String) request.getParameter("docName");
		String specialization = (String) request.getParameter("specialization");
		String hosName = (String) request.getParameter("hosName");
		
		Doctor d1 = new Doctor();
		
		d1.setDocName(docName);
		d1.setSpecialization(specialization);
		d1.setHosName(hosName);
		
		
		
		//if(Doctor.getDoctor(d1)) {
		
		if(d1.getDoctor(docName, specialization, hosName)==true) {
			
			response.sendRedirect("searchResult.jsp");
			String name = (String) request.getParameter("docName");
			//String dName = docName;
			HttpSession session = request.getSession();
			session.setAttribute("dName", name);
		}
		
		else {
			String error = "\"<i class=\\\"fas fa-exclamation-circle\\\"></i>Incorrect Input";
			//request.setAttribute("error", error);
			request.getRequestDispatcher("searchResult.jsp").forward(request, response);
		}
			
		
		
//		// TODO Auto-generated method stub
//		doGet(request, response);
	}

}
