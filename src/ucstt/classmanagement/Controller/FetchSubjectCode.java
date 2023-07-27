package ucstt.classmanagement.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ucstt.classmanagement.DAO.SubjectDAO;
import ucstt.classmanagement.Model.Subject;

/**
 * Servlet implementation class FetchSubjectCode
 */
@WebServlet("/FetchSubjectCode")
public class FetchSubjectCode extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchSubjectCode() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SubjectDAO subjectDAO=new SubjectDAO();
		List<Subject> subjectList=subjectDAO.getSubjectCode();
		List<String> subjectCodeList=new ArrayList<>();
		for(Subject subject:subjectList){
			subjectCodeList.add(subject.getSubjectCode());
		}
		request.getServletContext().setAttribute("subjectCodeList", subjectCodeList);
		request.getRequestDispatcher("TR_Attandance.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
