package ucstt.classmanagement.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ucstt.classmanagement.DAO.StudentDAO;
import ucstt.classmanagement.Model.Student;

/**
 * Servlet implementation class LoadAttandanceData
 */
@WebServlet("/LoadAttandanceData")
public class LoadAttandanceData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadAttandanceData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String classCode=request.getParameter("selectedOption");
		System.out.println("ClassCode : "+classCode);

		StudentDAO studentDAO=new StudentDAO();
		List<Student> studentList=studentDAO.getAttandanceData(classCode);

		request.getServletContext().setAttribute("studentList", studentList);
		request.getRequestDispatcher("TR_Attandance.jsp").include(request, response);
	}

}
