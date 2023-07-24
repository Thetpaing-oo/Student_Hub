package ucstt.classmanagement.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ucstt.classmanagement.DAO.ClassDAO;
import ucstt.classmanagement.Model.ClassData;

/**
 * Servlet implementation class FetchClasssID
 */
@WebServlet("/FetchClassID")
public class FetchClassID extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchClassID() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ClassDAO classDAO=new ClassDAO();
		List<ClassData> classDataList=classDAO.Retrieval();
		List<String> classNoList=new ArrayList<>();
		for(ClassData classData : classDataList){
			classNoList.add(classData.getClassNo());
		}
		request.getServletContext().setAttribute("classNoList", classNoList);
		request.getRequestDispatcher("TR_Attandance.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
