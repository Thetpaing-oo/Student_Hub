package ucstt.classmanagement.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import ucstt.classmanagement.DAO.userDAO;
import ucstt.classmanagement.Model.User;
import ucstt.classmanagement.Utility.DBUtility;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class Profile_Upload
 */
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
	    maxFileSize = 1024 * 1024 * 10,      // 10 MB
	    maxRequestSize = 1024 * 1024 * 100   // 100 MB
	)
public class Profile_Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile_Upload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession AuthSession=request.getSession();
		User userDetail=null;
		if(AuthSession.getAttribute("user")==null){
			response.sendRedirect("Login.jsp");
		}else{
			 userDetail=(User)AuthSession.getAttribute("user");
		}
		
		
		if(userDetail!=null) {
			System.out.println("userDetail is not null");}
		else {
			System.out.println("userDetail is null");}
		
			Part filePart = request.getPart("image");
		    InputStream imageInputStream = filePart.getInputStream();
		    String query=null;
		    if(userDetail!=null){
		    	
		    	     
		    	     query = "UPDATE m_user SET profile = (?) where id=(?)";
		    	
		    }
		    
		    PreparedStatement statement=DBUtility.getPreparedStatement(DBUtility.getConnection(), query);
		    try {
		    	if(userDetail!=null)
		    	statement.setString(2, userDetail.getId());
				statement.setBlob(1, imageInputStream);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    try {
				statement.executeUpdate();
				userDAO obj=new userDAO();
				userDetail=obj.getUser(userDetail);
				AuthSession.setAttribute("user", userDetail);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    response.sendRedirect("StudentHomePage.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

