package ucstt.classmanagement.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IntroServlet
 */
@WebServlet("/IntroServlet")
public class IntroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IntroServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//http://localhost:8080/IntroServlet?student=on

		PrintWriter out=response.getWriter();
		out.print("Playground");
		String student=request.getParameter("student");
		String teacher=request.getParameter("teacher");
		String admin=request.getParameter("admin");

		String flag=null;

		if(student=="on"){
			flag="student";
		}
		if(teacher=="on"){
			flag="teacher";
		}
		if(admin.equals("on")){
			flag="admin";
		}

		request.getServletContext().setAttribute("role", flag);
		String data=(String) request.getServletContext().getAttribute("role");
		System.out.println(data);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
