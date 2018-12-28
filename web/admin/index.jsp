<%-- 
    Document   : index
    Created on : 28 déc. 2018, 10:17:47
    Author     : salah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i,800" rel="stylesheet">
        <!-- Bootstrap CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/bootstrap.min.css">
        <!-- Bootstrap CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/font-awesome.min.css">
        <!-- adminpro icon CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/adminpro-custon-icon.css">
        <!-- meanmenu icon CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/meanmenu.min.css">
        <!-- mCustomScrollbar CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/jquery.mCustomScrollbar.min.css">
        <!-- animate CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/animate.css">
        <!-- jvectormap CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/jvectormap/jquery-jvectormap-2.0.3.css">
        <!-- normalize CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/data-table/bootstrap-table.css">
        <link rel="stylesheet" href="vendor/css/data-table/bootstrap-editable.css">
        <!-- normalize CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/normalize.css">
        <!-- charts CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/c3.min.css">
        <!-- style CSS============================================ -->
        <link rel="stylesheet" href="vendor/style.css">
        <!-- responsive CSS============================================ -->
        <link rel="stylesheet" href="vendor/css/responsive.css">
        <!-- modernizr JS============================================ -->
        <script src="vendor/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body class="materialdesign">
        <div class="wrapper-pro">
            
            <%@include file="includes/sideBar.jsp"%>
            
            <div class="content-inner-all">
                
                <%@include file="includes/header.jsp"%>
                
                <!-- income order visit user Start -->
                <div class="income-order-visit-user-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="income-dashone-total shadow-reset nt-mg-b-30">
                                    <div class="income-title">
                                        <div class="main-income-head">
                                            <h2>Income</h2>
                                            <div class="main-income-phara">
                                                <p>Monthly</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="income-dashone-pro">
                                        <div class="income-rate-total">
                                            <div class="price-adminpro-rate">
                                                <h3><span>$</span><span class="counter">60888200</span></h3>
                                            </div>
                                            <div class="price-graph">
                                                <span id="sparkline1"></span>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="income-dashone-total shadow-reset nt-mg-b-30">
                                    <div class="income-title">
                                        <div class="main-income-head">
                                            <h2>Orders</h2>
                                            <div class="main-income-phara order-cl">
                                                <p>Annual</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="income-dashone-pro">
                                        <div class="income-rate-total">
                                            <div class="price-adminpro-rate">
                                                <h3><span class="counter">72320</span></h3>
                                            </div>
                                            <div class="price-graph">
                                                <span id="sparkline6"></span>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="income-dashone-total shadow-reset nt-mg-b-30">
                                    <div class="income-title">
                                        <div class="main-income-head">
                                            <h2>Visitor</h2>
                                            <div class="main-income-phara visitor-cl">
                                                <p>Today</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="income-dashone-pro">
                                        <div class="income-rate-total">
                                            <div class="price-adminpro-rate">
                                                <h3><span class="counter">888200</span></h3>
                                            </div>
                                            <div class="price-graph">
                                                <span id="sparkline2"></span>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="income-dashone-total shadow-reset nt-mg-b-30">
                                    <div class="income-title">
                                        <div class="main-income-head">
                                            <h2>User activity</h2>
                                            <div class="main-income-phara low-value-cl">
                                                <p>Low Value</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="income-dashone-pro">
                                        <div class="income-rate-total">
                                            <div class="price-adminpro-rate">
                                                <h3><span class="counter">88200</span></h3>
                                            </div>
                                            <div class="price-graph">
                                                <span id="sparkline5"></span>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="feed-mesage-project-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="sparkline11-list shadow-reset mg-tb-30">
                                    <div class="sparkline11-hd">
                                        <div class="main-sparkline11-hd">
                                            <h1>Your daily feed</h1>
                                            <div class="sparkline11-outline-icon">
                                                <span class="sparkline11-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                                <span><i class="fa fa-wrench"></i></span>
                                                <span class="sparkline11-collapse-close"><i class="fa fa-times"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sparkline11-graph dashone-comment dashtwo-comment comment-scrollbar">
                                        <div class="daily-feed-list">
                                            <div class="daily-feed-img">
                                                <a href="#"><img src="vendor/img/notification/1.jpg" alt="" />
                                                </a>
                                            </div>
                                            <div class="daily-feed-content">
                                                <h4><span class="feed-author">Monica Smith</span> posted blog on <span class="feed-author">John Smith</span>.</h4>
                                                <p class="res-ds-n-t">Today 5:60 pm - 12.06.2014</p>
                                                <span class="feed-ago">1m ago</span>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                        <div class="daily-feed-list">
                                            <div class="daily-feed-img">
                                                <a href="#"><img src="vendor/img/notification/2.jpg" alt="" />
                                                </a>
                                            </div>
                                            <div class="daily-feed-content">
                                                <h4><span class="feed-author">Joy Khan</span> posted message on <span class="feed-author">Joli Ray</span>.</h4>
                                                <p class="res-ds-n-t">Today 5:60 pm - 12.06.2014</p>
                                                <span class="feed-ago">5m ago</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="sparkline8-list shadow-reset mg-tb-30">
                                    <div class="sparkline8-hd">
                                        <div class="main-sparkline8-hd">
                                            <h1>Messages</h1>
                                            <div class="sparkline8-outline-icon">
                                                <span class="sparkline8-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                                <span><i class="fa fa-wrench"></i></span>
                                                <span class="sparkline8-collapse-close"><i class="fa fa-times"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sparkline8-graph dashone-comment messages-scrollbar dashtwo-messages">
                                        <div class="comment-phara">
                                            <div class="comment-adminpr">
                                                <a class="dashtwo-messsage-title" href="#">Toman Alva</a>
                                                <p class="comment-content">Start each day with a prayer and end your day with a prayer and thank God for a another day.</p>
                                            </div>
                                            <div class="admin-comment-month">
                                                <p class="comment-clock"><i class="fa fa-clock-o"></i> 1 minuts ago</p>
                                                <button class="comment-setting" data-toggle="collapse" data-target="#adminpro-demo1">...</button>
                                                <ul id="adminpro-demo1" class="comment-action-st collapse">
                                                    <li><a href="#">Hide Message</a>
                                                    </li>
                                                    <li><a href="#">Turn on Message</a>
                                                    </li>
                                                    <li><a href="#">Turn off Message</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Start-->
        <%@include file="includes/footer.jsp" %> %>
        <!-- Footer End-->
        <!-- jquery============================================ -->
        <script src="vendor/js/vendor/jquery-1.11.3.min.js"></script>
        <!-- bootstrap JS============================================ -->
        <script src="vendor/js/bootstrap.min.js"></script>
        <!-- meanmenu JS============================================ -->
        <script src="vendor/js/jquery.meanmenu.js"></script>
        <!-- mCustomScrollbar JS============================================ -->
        <script src="vendor/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <!-- sticky JS============================================ -->
        <script src="vendor/js/jquery.sticky.js"></script>
        <!-- scrollUp JS============================================ -->
        <script src="vendor/js/jquery.scrollUp.min.js"></script>
        <!-- scrollUp JS============================================ -->
        <script src="vendor/js/wow/wow.min.js"></script>
        <!-- counterup JS============================================ -->
        <script src="vendor/js/counterup/jquery.counterup.min.js"></script>
        <script src="vendor/js/counterup/waypoints.min.js"></script>
        <script src="vendor/js/counterup/counterup-active.js"></script>
        <!-- jvectormap JS============================================ -->
        <script src="vendor/js/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="vendor/js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="vendor/js/jvectormap/jvectormap-active.js"></script>
        <!-- peity JS============================================ -->
        <script src="vendor/js/peity/jquery.peity.min.js"></script>
        <script src="vendor/js/peity/peity-active.js"></script>
        <!-- sparkline JS============================================ -->
        <script src="vendor/js/sparkline/jquery.sparkline.min.js"></script>
        <script src="vendor/js/sparkline/sparkline-active.js"></script>
        <!-- flot JS============================================ -->
        <script src="vendor/js/flot/jquery.flot.js"></script>
        <script src="vendor/js/flot/jquery.flot.tooltip.min.js"></script>
        <script src="vendor/js/flot/jquery.flot.spline.js"></script>
        <script src="vendor/js/flot/jquery.flot.resize.js"></script>
        <script src="vendor/js/flot/jquery.flot.pie.js"></script>
        <script src="vendor/js/flot/jquery.flot.symbol.js"></script>
        <script src="vendor/js/flot/jquery.flot.time.js"></script>
        <script src="vendor/js/flot/dashtwo-flot-active.js"></script>
        <!-- data table JS=========================================== -->
        <script src="vendor/js/data-table/bootstrap-table.js"></script>
        <script src="vendor/js/data-table/tableExport.js"></script>
        <script src="vendor/js/data-table/data-table-active.js"></script>
        <script src="vendor/js/data-table/bootstrap-table-editable.js"></script>
        <script src="vendor/js/data-table/bootstrap-editable.js"></script>
        <script src="vendor/js/data-table/bootstrap-table-resizable.js"></script>
        <script src="vendor/js/data-table/colResizable-1.5.source.js"></script>
        <script src="vendor/js/data-table/bootstrap-table-export.js"></script>
        <!-- main JS============================================ -->
        <script src="vendor/js/main.js"></script>
    </body>

</html>
