package ucstt.classmanagement.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ucstt.classmanagement.DAO.userDAO;

import java.io.IOException;
import java.security.Timestamp;

/**
 * Servlet implementation class Post_Upload
 */
public class Post_Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Post_Upload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String caption=request.getParameter("caption");
		String abst=request.getParameter("abstract");
		String affair=request.getParameter("affair");
		String date=request.getParameter("date");
		userDAO obj=new userDAO();
		String query="insert into x_school_activity (`caption`,`creation_timestamp`,`updatation_timestamp`,`abstract`,`affair`)values('"+caption+"','"+date+"','"+date+"','"+abst+"','"+affair+"')";
		
		if(obj.postUpload(query)) {
			response.sendRedirect("AdminHomePage.jsp");
		}else {
			System.out.println("error in post upload");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}