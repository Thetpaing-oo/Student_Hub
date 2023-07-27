package ucstt.classmanagement.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ucstt.classmanagement.DAO.AttandanceDAO;

/**
 * Servlet implementation class Acknowledge
 */
@WebServlet("/Acknowledge")
public class Acknowledge extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Acknowledge() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String numberOfStudent=request.getParameter("totalCount");
		String subjectCode=request.getParameter("subjectCode");
		int index=Integer.parseInt(numberOfStudent);
		int result=0;
		AttandanceDAO attandanceDAO=new AttandanceDAO();
		for(int i=1;i<=index;i++){
			String paramName="studID"+i;
			String studentID=request.getParameter(paramName);
			String paramNameCheckBox="checked"+i;
			String isChecked=request.getParameter(paramNameCheckBox);
			if(isChecked==null){
				continue;
			}
			result=attandanceDAO.attendanceDataInsertion(studentID, subjectCode);
		}
		if(result>0){
			request.getRequestDispatcher("TR_Attandance.jsp").include(request, response);
		}
		request.getRequestDispatcher("TR_Attandance.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String numberOfStudent=request.getParameter("totalCount");
		String subjectCode=request.getParameter("subjectCode");
		int index=Integer.parseInt(numberOfStudent);
		int result=0;
		AttandanceDAO attandanceDAO=new AttandanceDAO();
		for(int i=1;i<=index;i++){
			String paramName="studID"+i;
			String studentID=request.getParameter(paramName);
			String paramNameCheckBox="checked"+i;
			String isChecked=request.getParameter(paramNameCheckBox);
			if(isChecked==null){
				continue;
			}
			result=attandanceDAO.attendanceDataInsertion(studentID, subjectCode);
		}
		if(result>0){
			request.getRequestDispatcher("TR_Attandance.jsp").include(request, response);
		}
		request.getRequestDispatcher("TR_Attandance.jsp").include(request, response);
	}

}
