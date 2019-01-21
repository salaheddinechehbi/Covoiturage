<%@page import="beans.Ville"%>
<%@page import="service.VilleService"%>
<%@page import="beans.Trajet"%>
<%@page import="service.TrajetService"%>
<!DOCTYPE html>
<!--[if IE 7]>                  <html class="ie7 no-js" lang="en">     <![endif]-->
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
    <head>

        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>My ride - Rides</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Styles -->

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Forms -->
        <link href="css/jquery.idealforms.css" rel="stylesheet">
        <!-- Select  -->
        <link href="css/jquery.idealselect.css" rel="stylesheet">
        <!-- Slicknav  -->
        <link href="css/slicknav.css" rel="stylesheet">
        <!-- Main style -->
        <link href="css/style.css" rel="stylesheet">

        <!-- Modernizr -->
        <script src="js/modernizr.js"></script>

        <!-- Fonts -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <header class="header">
            <%@include file="includes/TopMenu.jsp" %>
            <!-- end .top-menu -->

            <div class="main-baner">

                <div class="background parallax clearfix" style="background-image:url('img/tumblr_n7yhhvUQtx1st5lhmo1_1280.jpg');" data-img-width="1600" data-img-height="1064">

                    <div class="main-parallax-content">

                        <div class="second-parallax-content">
                            <%@include file="includes/header.jsp" %>
                            <!-- end .container -->

                            <div class="col-md-12 col-sm-12 col-xs-12">

                                <div class="search-content">

                                    <form action="" novalidate autocomplete="off" class="idealforms searchtours">

                                        <div class="row">

                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <div class="field">
                                                    <select id="villeD" name="villeD">
                                                        <option value="default">De</option>
                                                        <%VilleService vs = new VilleService();
                                                            for (Ville v : vs.findAll()) {
                                                        %>
                                                        <option value="<%=v.getId()%>"><%=v.getNom()%></option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>

                                                </div>
                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                    <select id="villeA" name="villeA">
                                                        <option value="default">A</option>
                                                        <%for (Ville v : vs.findAll()) {
                                                        %>
                                                        <option value="<%=v.getId()%>"><%=v.getNom()%></option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>
                                                </div>

                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                    <input name="event" type="text" placeholder="Date" class="datepicker">
                                                </div>
                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                    <select id="destination" name="destination">
                                                        <option value="default">Nembre des places</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                    </select>
                                                </div>

                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field buttons">
                                                    <button type="button" class="btn btn-lg green-color" onclick="recherche()">Rechercher</button>
                                                </div>

                                            </div>
                                        </div>


                                    </form>

                                </div><!-- end .search-content -->

                            </div><!-- end .col-sm-12 -->

                        </div><!-- end .second-parallax-content -->

                    </div><!-- end .main-parallax-content -->

                </div><!-- end .background .parallax -->

            </div><!-- end .main-baner -->

        </header><!-- end .header -->

        <section class="main-content">

            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12 col-xs-12">

                        <div class="page-sub-title textcenter">
                            <h2>All rides</h2>
                            <div class="line"></div>
                        </div><!-- end .page-sub-title -->

                    </div><!-- end .col-md-12 col-sm-12 col-xs-12 -->

                    <!-- articles
                                <div class="col-md-12 col-sm-12 col-xs-12">

                        <div class="page-content">

                            <div class="rides-list" id="articles" >

                    <% TrajetService ts = new TrajetService();
                                    for (Trajet t : ts.findAll()) {%>

                    <article class="ride-box clearfix">

                        <div class="ride-content" >
                            <a href="#">De <b><%= t.getVilleDepart().getNom()%></b> A <b><%= t.getVilleArriver().getNom()%></b></a> creer par <a href="#"><b><%= t.getUser().getNom()%></b></a>
                        </div>

                        <ul class="ride-meta">

                            <li class="ride-date">
                                <a href="#" class="tooltip-link" data-original-title="Date" data-toggle="tooltip">
                                    <i class="fa fa-calendar"></i>
                    <%= t.getDateDepart()%> at <%= t.getHeureDepart()%>
                </a>
            </li>

            <li class="ride-people">
                <a href="#" class="tooltip-link" data-original-title="Number of seats" data-toggle="tooltip">
                    <i class="fa fa-user"></i>
                    <%= t.getNbrPlace()%>
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="fa fa-file"></i>
                    Read more
                </a>
            </li>

        </ul>

    </article>
                    <%}%>

                    <div class="clearfix"></div>

                    <div class="post-pagination pagination-margin clearfix">

                        <div class="next pull-right">
                            <a href="#">
                                Next
                                <i class="fa fa-chevron-right"></i>
                            </a>
                        </div>

                    </div>

                </div>

            </div>

        </div>
        
        
        
                    -->

                    <!-- nouveau tableau-->
                    <table class="table">
                        <thead id="tablehead" class="thead-dark">
                            <tr>
                                <th scope="col"></th>
                                <th scope="col">Ville de Depart</th>
                                <th scope="col">Ville D'Arrive</th>
                                <th scope="col">Postuleur</th>
                                <th scope="col">Date depart</th>
                                <th scope="col">Date Arrive</th>
                                <th scope="col">Nembre des places</th>
                            </tr>
                        </thead>
                        <tbody id="tableBody">
                            <% for (Trajet t : ts.findAll()) {%>
                            <tr>
                                <td></td>
                                <td><%= t.getVilleDepart().getNom()%></td>
                                <td><%= t.getVilleArriver().getNom()%></td>
                                <td><%= t.getUser().getNom()%></td>
                                <td><%= t.getDateDepart()%></td>
                                <td><%= t.getDateArriver()%></td>
                                <td><%= t.getDateArriver()%></td>
                                <td></td>
                                
                            </tr>
                            
                            
                                    <%}%>

                        </tbody>
                    </table>

                </div><!-- end .row -->
            </div><!-- end .container -->

        </section><!-- end .main-content -->
        <%@include file="includes/Footer.jsp" %>
        <!-- end #footer -->

        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div><!-- end .modal-header -->

                    <div class="modal-body">
                        <form action="" novalidate autocomplete="off" class="idealforms login">

                            <div class="log-header">
                                <span class="log-in">Log in</span>
                            </div>

                            <div class="field">
                                <input name="username" type="text" placeholder="Username">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input type="password" name="password" placeholder="Password">
                                <span class="error"></span>
                            </div>

                            <div class="field buttons">
                                <button type="submit" class="submit btn green-color">Log in</button>
                            </div>

                            <a href="#" class="log-twitter twitter"><i class="fa fa-twitter"></i>Twitter</a>
                            <a href="#" class="log-facebook facebook"><i class="fa fa-facebook"></i>Facebook</a>

                            <div class="clearfix"></div>

                        </form><!-- end .login -->
                    </div><!-- end .modal-body -->

                </div><!-- end .modal-content -->
            </div><!-- end .modal-dialog -->
        </div><!-- end .modal -->

        <div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <%@include file="includes/inscription.jsp" %>
                    <!-- end .modal-body -->

                </div><!-- end .modal-content -->
            </div><!-- end .modal-dialog -->
        </div><!-- end .modal -->

        <!-- Javascript -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- Main jQuery -->
        <script type="text/javascript" src="js/jquery.main.js"></script>
        <!-- Form -->
        <script type="text/javascript" src="js/jquery.idealforms.min.js"></script>
        <script type="text/javascript" src="js/jquery.idealselect.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <!-- Menu -->
        <script type="text/javascript" src="js/hoverIntent.js"></script>
        <script type="text/javascript" src="js/superfish.js"></script>
        <!-- Counter-Up  -->
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
        <script type="text/javascript" src="js/jquery.counterup.min.js"></script>
        <!-- Rating  -->
        <script type="text/javascript" src="js/bootstrap-rating-input.min.js"></script>
        <!-- Slicknav  -->
        <script type="text/javascript" src="js/jquery.slicknav.min.js"></script>
        <!-- recherche Trajet Script  -->
        <script src="script/rechercheTrajet.js" type="text/javascript"></script>
    </body>
</html>
