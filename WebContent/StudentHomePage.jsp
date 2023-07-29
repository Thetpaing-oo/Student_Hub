<%@ include file="userAuth.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8" content="">
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
<style>
	#clickimage{
	cursor: pointer;
	}
</style>
</head>
<body>
	<script type="text/javascript">
		try {
			var arrow = $('.js-arrow');
			arrow.each(function() {
				var that = $(this);
				that.on('click', function(e) {
					e.preventDefault();
					that.find(".arrow").toggleClass("up");
					that.toggleClass("open");
					that.parent().find('.js-sub-list').slideToggle("250");
				});
			});

		} catch (error) {
			console.log(error);
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
				<% if(userDetail!=null){
					if(userDetail.getProfile()!=null){
						%>
						<img id="clickimage" onclick="goTo('test.jsp')" src="ShowImage?id=<%=userDetail.getId() %>" alt="John Doe" />
						<% 
					}else{
						%>
						<img id="clickimage" onclick="goTo('test.jsp')" src="images/no image.jpg" alt="John Doe" />
						<%
					}
					
				}%>
					
				</div>
				<h4 class="name"><% if(userDetail!=null)out.print(userDetail.getUsername());%></h4>
				<a href="#">Student</a>
			</div>
			<nav class="navbar-sidebar2">
			<ul class="list-unstyled navbar__list">
				<li class="active has-sub"><a class="js-arrow"
					href="index2.html"> <i class="fas fa-tachometer-alt"></i>Home
				</a></li>
				<li><a href="inbox.html"> <i class="fas fa-chart-bar"></i>Timetables
				</a></li>
				<li><a href="#"> <i class="fas fa-shopping-basket"></i>Attendence
				</a></li>
				<li><a href="#"> <i class="fas fa-copy"></i>Setting
				</a></li>
				
				<li><a href="login.jsp"> <i class="fas fa-sign-in-alt"></i>Logout
						</a></li>
						
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
							<!-- <div class="header-button-item js-item-menu">
                                    <i class="zmdi zmdi-search"></i>
                                    <div class="search-dropdown js-dropdown">
                                        <form action="">
                                            <input class="au-input au-input--full au-input--h65" type="text" placeholder="Search for datas &amp; reports..." />
                                            <span class="search-dropdown__icon">
                                                <i class="zmdi zmdi-search"></i>
                                            </span>
                                        </form>
                                    </div>
                                </div> -->
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
					<h4 class="name">john doe</h4>
					<a href="#">Student</a>
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
								<h2 class="title-1">Compus Activities</h2>

							</div>
						</div>
					</div>

				</div>
			</div>
			</section>
			<!-- END BREADCRUMB-->

			<!-- STATISTIC-->
			<section class="statistic">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row m-t-25">
						<div class="col-sm-6 col-lg-3">
							<div class="overview-item overview-item--c1">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										<div class="icon">
											<i class="zmdi zmdi-account-o"></i>
										</div>
										<div class="text">
											<h2>Activities 1</h2>
											<span>members online</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart1"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg-3">
							<div class="overview-item overview-item--c2">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										<div class="icon">
											<i class="zmdi zmdi-shopping-cart"></i>
										</div>
										<div class="text">
											<h2>Activities 2</h2>
											<span>items solid</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart2"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg-3">
							<div class="overview-item overview-item--c3">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										<div class="icon">
											<i class="zmdi zmdi-calendar-note"></i>
										</div>
										<div class="text">
											<h2>Activities 3</h2>
											<span>this week</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart3"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg-3">
							<div class="overview-item overview-item--c4">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										<div class="icon">
											<i class="zmdi zmdi-money"></i>
										</div>
										<div class="text">
											<h2>Activities 4</h2>
											<span>total earnings</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart4"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style="margin-top: -50px;">
						<div class="row">
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item">
									<h2 class="number">Activities 1</h2>
									<span class="desc">members online</span>
									<div class="icon">
										<i class="zmdi zmdi-account-o"></i>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item">
									<h2 class="number">Activitie 2</h2>
									<span class="desc">items sold</span>
									<div class="icon">
										<i class="zmdi zmdi-shopping-cart"></i>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item">
									<h2 class="number">Activities 3</h2>
									<span class="desc">this week</span>
									<div class="icon">
										<i class="zmdi zmdi-calendar-note"></i>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item">
									<h2 class="number">Activities 4</h2>
									<span class="desc">total earnings</span>
									<div class="icon">
										<i class="zmdi zmdi-money"></i>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			</section>
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
	<script>
    function goTo(url) {
        window.location.href = url;
    }
</script>
	
	<!-- Jquery JS-->
	<script src="vendor/jquery-3.2.1.min.js" type="text/javascript"></script>
	<!-- Bootstrap JS-->
	<script src="vendor/bootstrap-4.1/popper.min.js" type="text/javascript"></script>
	<script src="vendor/bootstrap-4.1/bootstrap.min.js"
		type="text/javascript"></script>
	<!-- Vendor JS       -->
	<script src="vendor/slick/slick.min.js" type="text/javascript">
		
	</script>
	<script src="vendor/wow/wow.min.js" type="text/javascript"></script>
	<script src="vendor/animsition/animsition.min.js"
		type="text/javascript"></script>
	<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"
		type="text/javascript">
		
	</script>
	<script src="vendor/counter-up/jquery.waypoints.min.js"
		type="text/javascript"></script>
	<script src="vendor/counter-up/jquery.counterup.min.js"
		type="text/javascript">
		
	</script>
	<script src="vendor/circle-progress/circle-progress.min.js"
		type="text/javascript"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"
		type="text/javascript"></script>
	<script src="vendor/chartjs/Chart.bundle.min.js" type="text/javascript"></script>
	<script src="vendor/select2/select2.min.js" type="text/javascript">
		
	</script>
	<script src="vendor/vector-map/jquery.vmap.js" type="text/javascript"></script>
	<script src="vendor/vector-map/jquery.vmap.min.js"
		type="text/javascript"></script>
	<script src="vendor/vector-map/jquery.vmap.sampledata.js"
		type="text/javascript"></script>
	<script src="vendor/vector-map/jquery.vmap.world.js"
		type="text/javascript"></script>

	<!-- Main JS-->
	<script src="js/main.js" type="text/javascript"></script>

</body>
</html>
