
<%@page import="beans.Paye"%>
<%@page import="service.payeServices"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Pays</title>
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
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- Header top area start-->
        <div class="wrapper-pro">
            <div class="wrapper-pro">

                <%@include file="includes/sideBar.jsp"%>

                <div class="content-inner-all">

                    <%@include file="includes/header.jsp"%>

                    <!-- Forme -->
                    <div class="basic-form-area mg-b-15">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="sparkline8-list basic-res-b-30 shadow-reset">
                                        <div class="sparkline8-hd">
                                            <div class="main-sparkline8-hd">
                                                <h1>Forme</h1>
                                                <div class="sparkline8-outline-icon">
                                                    <span class="sparkline8-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                                    <span><i class="fa fa-wrench"></i></span>
                                                    <span class="sparkline8-collapse-close"><i class="fa fa-times"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sparkline8-graph">
                                            <div class="basic-login-form-ad">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="basic-login-inner">
                                                            <div class="form-group-inner">
                                                                <label>Nom :</label>
                                                                <input type="text" class="form-control" placeholder="Enter Nom" id="nom" name="nom" />
                                                            </div>

                                                            <div class="login-btn-inner">
                                                                <div class="inline-remember-me">
                                                                    <input type="button" value="ajouter" id="ajouter" name="ajouter" onclick="addPaye()" class="btn btn-success"/>
                                                                    <input type="hidden" name="payehiden" id="payehiden" value="">
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
                        </div>
                    </div>
                    <!-- End of forme-->

                    <div class="basic-form-area mg-b-15">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="sparkline13-list shadow-reset">
                                        <div class="sparkline13-hd">
                                            <div class="main-sparkline13-hd">
                                                <h1>Table <span class="table-project-n">Des</span> Donnés</h1>
                                                <div class="sparkline13-outline-icon">
                                                    <span class="sparkline13-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                                    <span><i class="fa fa-wrench"></i></span>
                                                    <span class="sparkline13-collapse-close"><i class="fa fa-times"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sparkline13-graph">
                                            <div class="datatable-dashv1-list custom-datatable-overright">
                                                <div id="toolbar">
                                                    <select class="form-control">
                                                        <option value="">Export Basic</option>
                                                        <option value="all">Export All</option>
                                                        <option value="selected">Export Selected</option>
                                                    </select>
                                                </div>
                                                <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true" data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                    <thead>
                                                        <tr>
                                                            <th data-field="state" data-checkbox="true"></th>
                                                            <th data-field="Id">ID</th>
                                                            <th data-field="Nom" data-editable="true">Nom</th>
                                                            <th data-field="Modifier" data-editable="true">Modifier</th>
                                                            <th data-field="Suprimer" data-editable="true">Suprimer</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="table">
                                                        <% payeServices ps=new payeServices();
                                                                for(Paye p:ps.findAll())
                                                                {
                                                        %>
                                                        <tr>
                                                            <td></td>
                                                            <td><%= p.getId()%></td>
                                                            <td><%= p.getNom()%></td>
                                                            <td><button class="btn btn-warning" onclick="updatePaye(<%=p.getId()%>,'<%= p.getNom() %>')"> Modifier</button></td>
                                        <td><button class="btn btn-danger" onclick="deletePaye(<%=p.getId()%>)">Suprimer</button></td>
                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
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

                    <!-- Paye script-->
                    <script src="scripts/paye.js" type="text/javascript"></script>
                    </body>
                    </html>
