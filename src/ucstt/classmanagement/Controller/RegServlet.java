
package ucstt.classmanagement.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import ucstt.classmanagement.DAO.userDAO;
import ucstt.classmanagement.Model.User;
import java.io.IOException;

/**
 * Servlet implementation class RegServlet
 */
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String email=request.getParameter("email");
		String name=request.getParameter("fname");
		String address=request.getParameter("locality");
		String password=request.getParameter("password");
		String gender=request.getParameter("sex");
		String role=request.getParameter("role");
		String phone=request.getParameter("phone");
		
		User user=new User();
		userDAO obj=new userDAO();
		String maxId=obj.getMaxid();
		if(maxId==null)
			maxId="uid000";
		String [] arrOfStr=maxId.split("uid",2);
		int a=Integer.parseInt(arrOfStr[1]);
		a+=1;
		String aa=String.format("%03d", a);
		String ss="uid"+aa;
		System.out.println(ss);
		user.setId(ss);
		user.setAddress(address);
		user.setEmail(email);
		user.setGender(gender);
		user.setPassword(password);
		user.setRole(role);
		user.setUsername(name);
		user.setPhone(phone);
		user.setCreation_by("a");
		user.setCreation_timestamp(null);
		
		user.setDel_flag(null);
		user.setUpdatation_timestamp(null);
		user.setUpdate_by("adminstrator");
		
		
		
		
		boolean flag=obj.insertion(user);
		if(flag==true) {
			response.sendRedirect("Login.jsp");
		}
		else {
			HttpSession session=request.getSession();
			String msg="Authentication fail";
			session.setAttribute("error",msg);
			response.sendRedirect("Registration.jsp");
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