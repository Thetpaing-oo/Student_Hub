<%@page import="ucstt.classmanagement.Model.Posts"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ucstt.classmanagement.DAO.userDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Student Home Page</title>

<!-- Fontfaces CSS-->
<link href="css/font-face.css" rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all">

<!-- Vendor CSS-->
<link href="vendor/animsition/animsition.min.css" rel="stylesheet"
	media="all">
<link
	href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="vendor/wow/animate.css" rel="stylesheet" media="all">
<link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet"
	media="all">
<link href="vendor/slick/slick.css" rel="stylesheet" media="all">
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">
<link href="vendor/vector-map/jqvmap.min.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/theme.css" rel="stylesheet" media="all">

</head>
<style>
/* Full-width input fields */
.text_input_job {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #8dc5d0;
	box-sizing: border-box;
}

/* Set a style for all buttons */
.job_button {
	background-color: #5cacbc;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 25px;
	cursor: pointer;
	width: 100%;
}

.job_button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

.avatar {
	width: 40%;
	border-radius: 50%;
}

.job_container {
	padding: 16px;
}

.detail_container {
	padding: 16px;
}

.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.job_modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 10; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

.detail_modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 10; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.job_modal-content {
	background-color: #fefefe;
	margin: 5% 15% 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 3px solid #8dc5d0;
	border-radius: 15px;
	width: 50%; /* Could be more or less, depending on screen size */
}

.detail_modal-content {
	background-color: #fefefe;
	margin: 5% 15% 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 3px solid #8dc5d0;
	border-radius: 15px;
	width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.job_animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

.detail_animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
<body>
	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
	<div class="page-wrapper">
		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar2">
		<div class="logo">
			<a href="#"> <!--<img src="images/icon/logo-white.png" alt="Cool Admin" />-->
				<h1 style="color: aliceblue;">Stu-Hub</h1>
			</a>
		</div>
		<div class="menu-sidebar2__content js-scrollbar1">
			<div class="account2">
				<div class="image img-cir img-120">
					<img src="images/icon/avatar-big-01.jpg" alt="John Doe" />
				</div>
				<h4 class="name">john doe</h4>
				<a href="#">Administrator</a>
			</div>
			<nav class="navbar-sidebar2">
			<ul class="list-unstyled navbar__list">
				<li class="active has-sub"><a class="js-arrow"
					href="AdminHomePage.jsp"> <i class="fas fa-tachometer-alt"></i>Home
				</a></li>
				<li><a href="ADM_UserManage.jsp"> <i
						class="fas fa-chart-bar"></i>User Managing
				</a></li>
				<li><a href="ADM_TimetableManage.jsp"> <i
						class="fas fa-shopping-basket"></i>Timetable Managing
				</a></li>
				<li><a href="ADM_ClassManage.jsp"> <i
						class="fas fa-shopping-basket"></i>Class Managing
				</a></li>
				<li class="has-sub"><a class="js-arrow" href="#"> <i
						class="fas fa-copy"></i>Setting <span class="arrow"> <i
							class="fas fa-angle-down"></i>
					</span>
				</a>
					<ul class="list-unstyled navbar__sub-list js-sub-list">
						<li><a href="login.html"> <i class="fas fa-sign-in-alt"></i>Logout
						</a></li>
						<li><a href="forget-pass.html"> <i
								class="fas fa-unlock-alt"></i>Change Password
						</a></li>
					</ul></li>
			</ul>
			</nav>
		</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container2">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop2">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="header-wrap2">
						<h4 style="color: aliceblue;">Class Management Application</h4>
						<div style="margin-left: 100px;"></div>
						<div class="header-button2">
							<!--<div class="header-button-item js-item-menu">
                                    <i class="zmdi zmdi-search"></i>
                                    <div class="search-dropdown js-dropdown">
                                        <form action="">
                                            <input class="au-input au-input--full au-input--h65" type="text" placeholder="Search for datas &amp; reports..." />
                                            <span class="search-dropdown__icon">
                                                <i class="zmdi zmdi-search"></i>
                                            </span>
                                        </form>
                                    </div>
                                </div>-->
						</div>
					</div>
				</div>
			</div>
			</header>
			<aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
			<div class="logo">
				<a href="#"> <img src="images/icon/logo-white.png"
					alt="Cool Admin" />
				</a>
			</div>
			<div class="menu-sidebar2__content js-scrollbar2">
				<div class="account2">
					<div class="image img-cir img-120">
						<img src="images/icon/avatar-big-01.jpg" alt="John Doe" />
					</div>
					<h4 class="name">Administrator</h4>
				</div>

			</div>
			</aside>
			<!-- END HEADER DESKTOP-->

			<!-- BREADCRUMB-->
			<section class="au-breadcrumb m-t-75">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="overview-wrap">
								<h2 class="title-1">Campus Activities</h2>
								<button class="au-btn au-btn-icon au-btn--blue"
									onclick="document.getElementById('id01').style.display='block'"
									style="width: auto;">
									<i class="zmdi zmdi-plus"></i>Post
								</button>
							</div>
						</div>
					</div>

				</div>
			</div>
			</section>
			<!-- END BREADCRUMB-->
			<div id="id01" class="detail_modal">

				<form action="Post_Upload" class="detail_modal-content detail_animate" method="post">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('id01').style.display='none'"
							class="close" title="Close Modal">&times;</span>
						<h2>Campus Activity</h2>
					</div>

					<div class="detail_container">
						<center>
							<table cellspacing="30" cellpadding="30">
								<tr>
									<td><label for="caption"><b>Caption</b></label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
										placeholder="Enter caption" name="caption"
										class="text_input_job"></td>
								</tr>
								<tr>
									<td><label for="caption"><b>Abstract</b></label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
										placeholder="Enter affair astraction" name="abstract"
										class="text_input_job"></td>
								</tr>
								<tr>
									<td><label for="affair"><b>Affair</b></label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="affair"
											class="text_input_job">description...</textarea></td>
								</tr>
								<tr>
									<td><label for="date"><b>Happening
												Date&nbsp;</b></label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="date"
										type="date" class="text_input_job"></td>
								</tr>
								
								<tr>
									<td><label for="image"><b>input Image
												&nbsp;</b></label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="image"
										type="file" class="text_input_job"></td>
								</tr>
								
								<tr>
									<td><label for="image2"><b>input Image2
												&nbsp;</b></label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="image2"
										type="file" class="text_input_job"></td>
								</tr>
							</table>
						</center>
						<button type="submit"
							onclick="document.getElementById('id01').style.display='none'"
							class="job_button">Upload</button>
					</div>
				</form>
			</div>
			<!-- Compus Activity Detail -->
			<%
			userDAO obj=new userDAO();
			ResultSet rs=obj.getPosts();
			 
			while(rs.next()){
				String date =rs.getString("creation_timestamp");
				String [] arrOfStr=date.split(" ",2);
				String d=arrOfStr[0];
				%>
				<div id="<%= rs.getString("id") %>" class="job_modal">

				<form class="job_modal-content job_animate" method="post">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('<%= rs.getString("id") %>').style.display='none'"
							class="close" title="Close Modal">&times;</span>
						<h2>Campus Activity</h2>
					</div>

					<div class="job_container">
						<center>
							<div class="card w-100" style="width: 18rem;">
								<!--   <img class="card-img-top" src="skin.jpg" alt="Card image cap"> -->
								<div class="card-body">
									<h5 class="card-title"><%= rs.getString("caption") %></h5>
									<p class="card-text">
										<b><%= rs.getString("abstract") %></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
											src="skin.jpg"
											width="300px" height="300px;">
									</p>
									<ul class="list-group list-group-flush">
										<li class="list-group-item"><small><%= d %></small></li>
										<li class="list-group-item"><div class="row">
												<div class="col-md-6">
													<img src="skin.jpg"
														width="500px" height="800px;">
												</div>
												<div class="col-md-6">
													<i><%= rs.getString("affair") %></i>
												</div>
											</div></li>
									</ul>
								</div>
							</div>
						</center>
					</div>
				</form>
			</div>
				<%
			}
			%>
			<!-- STATISTIC-->
			
			<%
			ResultSet rs2=obj.getPosts();
			int n=0;
			int row=0;
			while(rs2.next())
				n++;
			if(n>4){
				if(n%4==0){
					row=n/4;
				}else{
					row=(n/4)+1;
				}
			}
			System.out.print(n);
			System.out.print(row);
			if(n<=4){
				%>
				<section class="statistic">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row m-t-25">
						<%
						ResultSet rs4=obj.getPosts();
						while(rs4.next()){ %>
						<div class="col-sm-6 col-lg-3">
							<div class="overview-item overview-item--c1">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										
										<div class="text">
											<h2><%= rs4.getString("caption") %></h2>
											
											
											<span>members online</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart1"></canvas>
									</div>
								</div>
							</div>
						</div>
						<% } %>
					</div>
					<div style="margin-top: -50px;">
						<div class="row">
						
						<% ResultSet rs3=obj.getPosts();
						while(rs3.next()){ 
							String date =rs3.getString("creation_timestamp");
							String [] arrOfStr=date.split(" ",2);
							String dd=arrOfStr[0];
						%>
						
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item">
									<h4 class="number"><%= rs3.getString("abstract") %></h4>
									<span class="desc"><%= dd%></span><br /> <span
										class="btn btn-outline-primary btn-sm"
										onclick="document.getElementById('<%= rs3.getString("id") %>').style.display='block'">Detail
										>></span>
									<div class="icon">
										<i class="zmdi zmdi-account-o"></i>
									</div>
								</div>
							</div>
							<% } %>
						</div>
					</div>
				</div>
			</div>
			</section>
				<%
			}else{
				int a=0, b=4;
				for(int i=0; i<row; i++){
					userDAO obj2=new userDAO();
					ArrayList<Posts> posts=(ArrayList<Posts>)obj2.getAllPosts();
					
					
					%>
					
					<section class="statistic">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row m-t-25">
						<%
						for(int ii=a; ii<b; ii++ ){
							%>
							<div class="col-sm-6 col-lg-3">
							<div class="overview-item overview-item--c1">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										
										<div class="text">
											<h2><%= posts.get(ii).getCaption() %></h2>
											<span>members online</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart1"></canvas>
									</div>
								</div>
							</div>
						</div>
							<% 
						}
						
						%>
						
						
						
					</div>
					<div style="margin-top: -50px;">
						<div class="row">
							<%
							
							for(int iii=a;iii<b; iii++){
								String date =posts.get(iii).getcreationTimestamp();
								String [] arrOfStr=date.split(" ",2);
								String ddd=arrOfStr[0];
								%>
								<div class="col-md-6 col-lg-3">
								<div class="statistic__item">
									<h4 class="number"><%= posts.get(iii).getAbst() %></h4>
									<span class="desc"><%= ddd %></span><br /> <span
										class="btn btn-outline-primary btn-sm"
										onclick="document.getElementById('<%= posts.get(iii).getId() %>').style.display='block'">Detail
										>></span>
									<div class="icon">
										<i class="zmdi zmdi-account-o"></i>
									</div>
								</div>
							</div>
								<% 
							}
							
							%>
							
							
							

						</div>
					</div>
				</div>
			</div>
			</section>
					
					<%
					
					if(i==row-2){
						a=b; 
						if(n%4==0){
							b+=4;
						}else{
							b+=(n%4);
						}
					}else{
						a=b; b+=4;
					}
				}
				
				
				
			}
			
			
			%>
			<!-- END STATISTIC-->

			<section>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="copyright">
							<p>Copyright © 2023 Stu-Hub. All rights reserved.</p>
						</div>
					</div>
				</div>
			</div>
			</section>
			<!-- END PAGE CONTAINER-->
		</div>

	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script src="vendor/bootstrap-4.1/popper.min.js"></script>
	<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script src="vendor/slick/slick.min.js">
    </script>
	<script src="vendor/wow/wow.min.js"></script>
	<script src="vendor/animsition/animsition.min.js"></script>
	<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
	<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
	<script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
	<script src="vendor/circle-progress/circle-progress.min.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="vendor/chartjs/Chart.bundle.min.js"></script>
	<script src="vendor/select2/select2.min.js">
    </script>
	<script src="vendor/vector-map/jquery.vmap.js"></script>
	<script src="vendor/vector-map/jquery.vmap.min.js"></script>
	<script src="vendor/vector-map/jquery.vmap.sampledata.js"></script>
	<script src="vendor/vector-map/jquery.vmap.world.js"></script>

	<!-- Main JS-->
	<script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
