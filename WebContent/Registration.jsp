<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Fontfaces CSS -->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS -->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS -->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">

    <!-- Main CSS -->
    <link href="css/theme.css" rel="stylesheet" media="all">
    <link href="css/register.css" rel="stylesheet" media="all">
</head>
<body>
	<% HttpSession s=request.getSession();
		s.getAttribute("error");
		String msg=(String) s.getValue("error");
		if(msg!=null){
			%>
			<h1><%= msg %></h1>
		<%
		s.removeValue("error");
		s.invalidate();
		}
	%>
    <div class="container mt-3">
        <form name="f1">
            <div class="row jumbotron box8">
                <div class="col-sm-12 mx-t3 mb-4">
                    <h2 class="text-center text-info">Registration</h2>
                    <div style="height:3px;background-color:#3B9C9C;margin-top:10px;"></div>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f">First Name</label><sup style="color:red;">*</sup>
                    <input type="text" class="form-control" name="fname" id="name-f" placeholder="Enter your first name." required>
                </div>

                <div class="col-sm-6 form-group">
                    <label for="email">Email</label><sup style="color:red;">*</sup>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email." required>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="address-1">Address</label><sup style="color:red;">*</sup>
                    <input type="address" class="form-control" name="locality" id="address-1" placeholder="Locality/House/Street no." required>
                </div>

                <div class="col-sm-6 form-group">
                    <label for="sex">Gender</label><sup style="color:red;">*</sup>
                    <select id="sex" class="form-control browser-default custom-select" name="sex">
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="unspecified">Unspecified</option>
                    </select>
                </div>

                <div class="col-sm-6 form-group">
                    <label for="tel">Phone</label><sup style="color:red;">*</sup>
                    <input type="tel" name="phone" class="form-control" id="tel" placeholder="Enter Your Contact Number." required>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="pass">Password</label><sup style="color:red;">*</sup>
                    <input type="password" name="password" class="form-control" id="pass" placeholder="Enter your password." required>
                </div>

                <div class="col-sm-6 form-group">
                    <label for="role">Role</label><sup style="color:red;">*</sup>
                    <select id="role" class="form-control browser-default custom-select" name="role" required>
                        <option value=""></option>
                        <option value="admin">Administrator</option>
                        <option value="student">Student</option>
                        <option value="teacher">Teacher</option>
                    </select>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="pass2">Confirm Password</label><sup style="color:red;">*</sup>
                    <input type="password" name="cnf-password" class="form-control" id="pass2" placeholder="Re-enter your password." required>
                </div>
                

                <div class="col-sm-12 form-group mb-0">
                    <div class="row">
                        <div class="col-md-10"></div>
                        <div class="modal fade left" id="ModalWarning" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-notify modal-warning modal-side modal-top-left" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <div style="width:5px;background-color:green;">&nbsp;</div>
                                        <p class="heading">&nbsp;&nbsp;&nbsp;Successfully registered.</p>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text" style="color:red;">&times;</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="modal-body"><h4></h4></div>
                            </div>
                        </div>
                        <div class="modal fade left" id="PassNotMatch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-notify modal-warning modal-side modal-top-left" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <div style="width:5px;background-color:green;">&nbsp;</div>
                                        <p class="heading">&nbsp;&nbsp;&nbsp;Password doesn't match.</p>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" class="white-text" style="color:red;">&times;</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="modal-body"><h4></h4></div>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <button id="text" class="btn btn-primary float-right" formaction="RegServlet" formmethod="get" data-toggle="modal">Submit</button>
                        </div>
                        <div class="col-md-1">
                            <button class="btn btn-primary float-right" formaction="" formmethod="get" type="button">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <script type="text/javascript">
    
    var pattern=/[a-zA-Z0-9]{2,}@gmail\.com/;
    var emailvalue;
    const email=document.getElementById('email');
    email.addEventListener('input', function() {
         emailvalue = email.value;
      });
    
    var patternPhone=/09[0-9]{9}/;
    var phoneValue;
    const phone=document.getElementById('tel');
    phone.addEventListener('input', function() {
         phoneValue= phone.value;
      });
    
    
    const passwordInput = document.getElementById('pass');
    const confirmPasswordInput = document.getElementById('pass2');
  
    var text = document.getElementById('text');

    confirmPasswordInput.addEventListener('input', function() {
      const password = passwordInput.value;
      const confirmPassword = confirmPasswordInput.value;
      if (password == confirmPassword&&pattern.test(emailvalue)&&patternPhone.test(phoneValue)) {
    	  text.setAttribute('formaction', 'RegServlet');
      } else {
    	  
    	  text.removeAttribute('formaction');
      }
    });
    
    

    </script>

    <!-- JavaScript Libraries -->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <script src="vendor/slick/slick.min.js"></script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js"></script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/vector-map/jquery.vmap.js"></script>
    <script src="vendor/vector-map/jquery.vmap.min.js"></script>
    <script src="vendor/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="vendor/vector-map/jquery.vmap.world.js"></script>

    <!-- Main JS -->
    <script src="js/main.js"></script>
</body>
</html>

