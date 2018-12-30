
<%@page import="service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma", "no-cache");//HTTP 1.0
    response.setHeader("Expires", "0");
    
    if(session.getAttribute("email")==null){
        response.sendRedirect("../index.jsp");
    }
    UserService us = new UserService();
    int countUser = us.count();
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@include file="includes/headerScripts.jsp"%>
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
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="income-dashone-total shadow-reset nt-mg-b-30">
                                    <div class="income-title">
                                        <div class="main-income-head">
                                            <h2>Users</h2>
                                            <div class="main-income-phara low-value-cl">
                                                <p><%= countUser %></p>
                                            </div>
                                        </div>
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
        <%@include file="includes/footer.jsp" %>
        <!-- Footer End-->
        <%@include file="includes/footerScripts.jsp" %> 
    </body>

</html>
