<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

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

<style type="text/css">
td{white-space: nowrap;}
.my-custom-scrollbar {
position: relative;
height: 500px;
overflow: auto;
}
.table-wrapper-scroll-y {
display: block;
}
.table-wrapper-scroll-x {
display: block;
}
</style>
</head>

<body>
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
                    <a href="#">Sign out</a>
                </div>
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a class="js-arrow" href="AdminHomePage.jsp">
                                <i class="fas fa-tachometer-alt"></i>Home
                            </a>
                        </li>
                        <li>
                            <a href="ADM_UserManage.jsp">
                                <i class="fas fa-chart-bar"></i>User Managing</a>
                        </li>
                        <li>
                            <a href="ADM_TimetableManage.jsp">
                                <i class="fas fa-shopping-basket"></i>Timetable Managing</a>
                        </li>
                        <li>
                            <a href="ADM_ClassManage.jsp">
                                <i class="fas fa-shopping-basket"></i>Class Managing</a>
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
                                    <a href="login.html">
                                        <i class="fas fa-sign-in-alt"></i>Logout</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">
                                        <i class="fas fa-unlock-alt"></i>Change Password</a>
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
                    <a href="#">
                        <img src="images/icon/logo-white.png" alt="Cool Admin" />
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
            <!-- STATISTIC-->
            <section class="statistic">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row m-t-25">
                            <div class="row">
                                <div class="col">
                                    <div class="row w-100"><div class="col" style="float:left;"><h2 class="title-1 m-b-25">Managing Application Users</h2></div><div class="col" style="position:absolute;left:100%;"><Button class="btn btn-primary btn-sm"><i class="fa fa-plus" style="color:white;"></i>&nbsp;ADD</Button></div></div>
                                    <div class="table-responsive table--no-card table-wrapper-scroll-x table-wrapper-scroll-y my-custom-scrollbar m-b-20 w-auto">
                                        <table class="table table-borderless table-hover">
                                            <thead style="background-color: deepskyblue;color:aliceblue;">
                                                <tr>
                                                    <th style="text-align: center;">#</th>
                                                    <th>User Name</th>
                                                    <th>Email</th>
                                                    <th class="text-right">Phone No</th>
                                                    <th class="text-right">Address</th>
                                                    <th class="text-right">Gender</th>
                                                    <th class="text-right">Role</th>
                                                    <th class="text-right">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2018-09-29 05:57</td>
                                                    <td>100398</td>
                                                    <td>iPhone X 64Gb Grey</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">Male</td>
                                                    <td class="text-right"><a href="#" class="btn btn-outline-primary btn-sm">Edit</a>&nbsp;<a href="#" class="btn btn-outline-primary btn-sm">Cancel</a></td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-28 01:22</td>
                                                    <td>100397</td>
                                                    <td>Samsung S8 Black</td>
                                                    <td class="text-right">$756.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$756.00</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-27 02:12</td>
                                                    <td>100396</td>
                                                    <td>Game Console Controller</td>
                                                    <td class="text-right">$22.00</td>
                                                    <td class="text-right">2</td>
                                                    <td class="text-right">$44.00</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-26 23:06</td>
                                                    <td>100395</td>
                                                    <td>iPhone X 256Gb Black</td>
                                                    <td class="text-right">$1199.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$1199.00</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-25 19:03</td>
                                                    <td>100393</td>
                                                    <td>USB 3.0 Cable</td>
                                                    <td class="text-right">$10.00</td>
                                                    <td class="text-right">3</td>
                                                    <td class="text-right">$30.00</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-29 05:57</td>
                                                    <td>100392</td>
                                                    <td>Smartwatch 4.0 LTE Wifi</td>
                                                    <td class="text-right">$199.00</td>
                                                    <td class="text-right">6</td>
                                                    <td class="text-right">$1494.00</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-29 05:57</td>
                                                    <td>100398</td>
                                                    <td>iPhone X 64Gb Grey</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">Male</td>
                                                    <td class="text-right"><a href="#" class="btn btn-outline-primary btn-sm">Edit</a>&nbsp;<a href="#" class="btn btn-outline-primary btn-sm">Cancel</a></td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-29 05:57</td>
                                                    <td>100398</td>
                                                    <td>iPhone X 64Gb Grey</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">Male</td>
                                                    <td class="text-right"><a href="#" class="btn btn-outline-primary btn-sm">Edit</a>&nbsp;<a href="#" class="btn btn-outline-primary btn-sm">Cancel</a></td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-29 05:57</td>
                                                    <td>100398</td>
                                                    <td>iPhone X 64Gb Grey</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">Male</td>
                                                    <td class="text-right"><a href="#" class="btn btn-outline-primary btn-sm">Edit</a>&nbsp;<a href="#" class="btn btn-outline-primary btn-sm">Cancel</a></td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-29 05:57</td>
                                                    <td>100398</td>
                                                    <td>iPhone X 64Gb Grey</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">Male</td>
                                                    <td class="text-right"><a href="#" class="btn btn-outline-primary btn-sm">Edit</a>&nbsp;<a href="#" class="btn btn-outline-primary btn-sm">Cancel</a></td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-29 05:57</td>
                                                    <td>100398</td>
                                                    <td>iPhone X 64Gb Grey</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">Male</td>
                                                    <td class="text-right"><a href="#" class="btn btn-outline-primary btn-sm">Edit</a>&nbsp;<a href="#" class="btn btn-outline-primary btn-sm">Cancel</a></td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-29 05:57</td>
                                                    <td>100398</td>
                                                    <td>iPhone X 64Gb Grey</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$999.00</td>
                                                    <td class="text-right">Male</td>
                                                    <td class="text-right"><a href="#" class="btn btn-outline-primary btn-sm">Edit</a>&nbsp;<a href="#" class="btn btn-outline-primary btn-sm">Cancel</a></td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-24 19:10</td>
                                                    <td>100391</td>
                                                    <td>Camera C430W 4k</td>
                                                    <td class="text-right">$699.00</td>
                                                    <td class="text-right">1</td>
                                                    <td class="text-right">$699.00</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>100393</td>
                                                    <td>USB 3.0 Cable</td>
                                                    <td class="text-right">$10.00</td>
                                                    <td class="text-right">3</td>
                                                    <td class="text-right">$30.00</td>
                                                </tr>
                                            </tbody>
                                        </table>
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
<!-- end document-->