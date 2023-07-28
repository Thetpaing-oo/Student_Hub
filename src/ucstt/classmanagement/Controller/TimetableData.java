package ucstt.classmanagement.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ucstt.classmanagement.DAO.TimetableDAO;
import ucstt.classmanagement.Model.Timetable;
import ucstt.classmanagement.Utility.DBUtility;

/**
 * Servlet implementation class TimetableData
 */
@WebServlet("/TimetableData")
public class TimetableData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimetableData() {
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
		HttpSession session=request.getSession();
		session.setAttribute("studentID", "stud011");
		String studentID=(String) session.getAttribute("studentID");
		TimetableDAO dao=new TimetableDAO();
		List<Timetable> timetableList=dao.getTimetableData(studentID);

		request.getServletContext().setAttribute("TimetableList", timetableList);
		request.getServletContext().setAttribute("ClassCodeNo", timetableList.get(0).getClassNo());
		request.getRequestDispatcher("Stud_Timetable.jsp").include(request, response);
	}

}
