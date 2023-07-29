<%@page import="ucstt.classmanagement.Model.User"%>
<% 
HttpSession AuthSession=request.getSession();
User userDetail=null;
if(AuthSession.getAttribute("user")==null){
	response.sendRedirect("Login.jsp");
}else{
	 userDetail=(User)AuthSession.getAttribute("user");
}
%>>