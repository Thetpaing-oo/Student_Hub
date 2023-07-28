<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Student Home Page</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.7.0.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <style>
    #singelBarChart {
  max-width: 650px;
  margin: 35px auto;
  max-height: 400px;
}
#bieChart{
max-width:650px;
margin:35px auto;
max-height: 400px;
}
    </style>
</head>
<body>
<%-- <c:set var="weeklyData" value="${weeklyDataSeries}"/>
<c:set var="monthlyData" value="${monthlyDataSeries}"/> --%>
<script type="text/javascript">
$(document).ready(function(){
	$.post('AttandanceReport');

	var weekArrayV2=[];

	<c:forEach items="${weeklyDataSeries}" var="data" varStatus="status">
	weekArrayV2[<c:out value="${status.index}" />]=<c:out value="${data}" />;
	</c:forEach>

	console.log(weekArrayV2);

	var monthArrayV2=[];

	<c:forEach items="${monthlyDataSeries}" var="data" varStatus="status">
	monthArrayV2[<c:out value="${status.index}" />]=<c:out value="${data}" />;
	</c:forEach>

	console.log(monthArrayV2);

	var options = {
			  chart: {
			    type: 'bar'
			  },
			  series: [{
			    name: 'times',
			    data: weekArrayV2
			  }],
			  xaxis: {
			    categories: ['Sun','Mon','Tue','Wed','Thu','Fri','Sat']
			  }
			}
	var bieOptions={
			chart: {
			      type: 'donut'
			    },
			    plotOptions: {
			        pie: {
			          customScale: 0.8
			        }
			      },
			 series: monthArrayV2,
			 labels: ['Present', 'Total All', 'Total due', 'Absent']
	}

			var chart = new ApexCharts(document.querySelector("#singelBarChart"), options);

			chart.render();

			/* var bieChart=new ApexCharts(document.querySelector("#bieChart"),bieOptions);

			bieChart.render(); */

			const chartData = {
					  series: monthArrayV2,
					  labels: ['Total Due : ${TotalDue} times', 'Total Attandance : ${TotalAttandance} times', 'Present', 'Absent'],
					};

					const chartOptions = {
					  chart: {
					    type: 'donut',
					  },
					  dataLabels: {
					    enabled: true,
					    formatter: function (val, opts) {
					    	var total = opts.w.globals.seriesTotals.reduce((a,b) => a + b, 0);

					        // Calculate the percentage from the data value (val)
					        var percentage = (val / total) * 100;

					        // Customize the percentage format, e.g., show two decimal places
					        return percentage.toFixed(2) + '%';
					    }
					  },
					  labels: chartData.labels,
					  series: chartData.series
					};

					const donutChart = new ApexCharts(document.querySelector("#bieChart"), chartOptions);
					donutChart.render();

});

</script>
 <div class="page-wrapper">
        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar2">
            <div class="logo">
                <a href="#">
                    <!--<img src="images/icon/logo-white.png" alt="Cool Admin" />-->
                    <h1 style="color:aliceblue;">Stu-Hub</h1>
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar1">
                <div class="account2">
                    <div class="image img-cir img-120">
                        <img src="images/icon/avatar-big-01.jpg" alt="John Doe" />
                    </div>
                    <h4 class="name">john doe</h4>
                    <a href="#">Student</a>
                </div>
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a class="js-arrow" href="index2.html">
                                <i class="fas fa-tachometer-alt"></i>Home
                            </a>
                        </li>
                        <li>
                            <a href="Stud_Timetable.jsp">
                                <i class="fas fa-chart-bar"></i>Timetables</a>
                        </li>
                        <li>
                            <a href="Stud_Attandance.jsp">
                                <i class="fas fa-shopping-basket"></i>Attandance</a>
                        </li>
                        <li class="has-sub">
                           <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Setting
                                <span class="arrow">
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="login.jsp">
                                        <i class="fas fa-sign-in-alt"></i>Logout</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">
                                        <i class="fas fa-unlock-alt"></i>Forget Password</a>
                                </li>
                            </ul>
                        </li>
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
                            <h4 style="color:aliceblue;">Class Management Application</h4>
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
                    <a href="#">
                        <img src="images/icon/logo-white.png" alt="Cool Admin" />
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
                                    <h2 class="title-1">Attandance</h2>

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
                            <div class="col-md-6">
                                <div class="au-card m-b-30">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 m-b-40">Weekly Attandance</h3>
                                        <div id="singelBarChart"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="au-card m-b-30">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 m-b-40">Monthly Attandance</h3>
                                        <h5>Total All : ${TotalDue} times</h5>
                                        <div id="bieChart"></div>
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