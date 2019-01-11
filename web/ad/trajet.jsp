
<%@page import="service.TrajetService"%>
<%@page import="service.UserService"%>
<%@page import="service.VilleService"%>
<%@page import="service.PayeService"%>
<%@page import="beans.Paye"%>
<%@page import="beans.Ville"%>
<%@page import="beans.User"%>
<%@page import="beans.Trajet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma", "no-cache");//HTTP 1.0
    response.setHeader("Expires", "0");

    if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    }
    PayeService ps = new PayeService();
    VilleService vs = new VilleService();
    TrajetService ts = new TrajetService();
    UserService us = new UserService();
    int id = Integer.parseInt(session.getAttribute("id").toString());
    User u = us.findById(id);
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Trajets</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@include file="includes/headerScripts.jsp"%>
        <style>
            #map {
                height: 400px;  /* The height is 400 pixels */
                width: 100%;  /* The width is the width of the web page */
            }
        </style>
    </head>
    <body class="materialdesign">
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
                                                <h1>Ajouter Trajet</h1>
                                                <div class="sparkline8-outline-icon">
                                                    <span class="sparkline8-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sparkline8-graph">
                                            <div class="basic-login-form-ad">
                                                <div class="row col-md-12">
                                                    <div class="form-group-inner col-md-3">
                                                        <label>Ville Départ :</label>
                                                        <select class="form-control custom-select-value" id="villeD">
                                                            <option value="0">Choisir Une Ville !</option>
                                                            <%
                                                                for (Ville v : vs.findAll()) {
                                                            %>
                                                            <option value="<%=v.getId()%>"><%=v.getNom()%></option>

                                                            <%}%>
                                                        </select>
                                                    </div>
                                                    <div class="form-group-inner col-md-3">
                                                        <label>Ville D'Arriver :</label>
                                                        <select class="form-control custom-select-value" id="villeA">
                                                            <option value="0">Choisir Une Ville !</option>
                                                            <%
                                                                for (Ville v : vs.findAll()) {
                                                            %>
                                                            <option value="<%=v.getId()%>"><%=v.getNom()%></option>

                                                            <%}%>
                                                        </select>
                                                    </div>
                                                    <div class="form-group-inner col-md-3">
                                                        <label>Date Départ :</label>
                                                        <input type="date" class="form-control" id="dateD"/>
                                                    </div>
                                                    <div class="form-group-inner col-md-3">

                                                        <label>Heure Départ :</label>
                                                        <select class="form-control custom-select-value" id="heureD">
                                                            <option value="0">Choisir Une Heure !</option>
                                                            <option value="00:00">00:00</option><option value="01:00">01:00</option><option value="02:00">02:00</option><option value="03:00">03:00</option><option value="04:00">04:00</option><option value="05:00">05:00</option><option value="06:00">06:00</option><option value="07:00">07:00</option><option value="08:00">08:00</option><option value="09:00">09:00</option><option value="10:00">10:00</option><option value="11:00">11:00</option><option value="12:00">12:00</option><option value="13:00">13:00</option><option value="14:00">14:00</option><option value="15:00">15:00</option><option value="16:00">16:00</option><option value="17:00">17:00</option><option value="18:00">18:00</option><option value="19:00">19:00</option><option value="20:00">20:00</option><option value="21:00">21:00</option><option value="22:00">22:00</option><option value="23:00">23:00</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row col-md-12">
                                                   <div class="form-group-inner col-md-3">
                                                        <label>Date D'Arrivé :</label>
                                                        <input type="date" class="form-control"id="dateA"/>
                                                    </div>
                                                     <div class="form-group-inner col-md-3">
                                                        <label>Heure D'Arriver :</label>
                                                        <select class="form-control custom-select-value" id="heureD">
                                                            <option value="0">Choisir Une Heure !</option>
                                                            <option value="00:00">00:00</option><option value="01:00">01:00</option><option value="02:00">02:00</option><option value="03:00">03:00</option><option value="04:00">04:00</option><option value="05:00">05:00</option><option value="06:00">06:00</option><option value="07:00">07:00</option><option value="08:00">08:00</option><option value="09:00">09:00</option><option value="10:00">10:00</option><option value="11:00">11:00</option><option value="12:00">12:00</option><option value="13:00">13:00</option><option value="14:00">14:00</option><option value="15:00">15:00</option><option value="16:00">16:00</option><option value="17:00">17:00</option><option value="18:00">18:00</option><option value="19:00">19:00</option><option value="20:00">20:00</option><option value="21:00">21:00</option><option value="22:00">22:00</option><option value="23:00">23:00</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group-inner col-md-6">
                                                        <label>Commentaire :</label>
                                                        <textarea style="width: 400px" id="commentaire"></textarea>
                                                    </div>
                                                </div>
                                                <div class="row col-md-12">
                                                   <div class="form-group-inner col-md-3">
                                                        <label>Nombre de Places :</label>
                                                        <input type="number" class="form-control"id="nbrplace"/>
                                                    </div>
                                                     <div class="form-group-inner col-md-3">
                                                        <label>Route :</label>
                                                        <select class="form-control custom-select-value" id="route">
                                                            <option value="0">Choisir Une Route !</option>
                                                            <option value="1">Autoroute</option>
                                                            <option value="2">National</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="login-btn-inner">
                                                <div class="inline-remember-me">
                                                    </br>
                                                    <input type="button" value="Ajouter" id="ajouter" class="btn btn-success"/>
                                                    <input type="hidden" id="user" value="<%= u.getId() %>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>           
                        </div>
                    </div>
                    <!-- End of forme-->

                    <!-- Static Table Start -->
                    <div class="data-table-area mg-b-15">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="sparkline13-list shadow-reset">
                                        <div class="sparkline13-hd">
                                            <div class="main-sparkline13-hd">
                                                <h1>Projects <span class="table-project-n">Data</span> Table</h1>
                                                <div class="sparkline13-outline-icon">
                                                    <span class="sparkline13-collapse-link"><i class="fa fa-chevron-up"></i></span>
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
                                                            <th data-field="nom">User</th>
                                                            <th data-field="villeD">Ville Départ</th>
                                                            <th data-field="villeA">Ville Arrivé</th>
                                                            <th data-field="dateD">Date Départ</th>
                                                            <th data-field="heureD">Heure Arrivé</th>
                                                            <th data-field="route">Route</th>
                                                            <th data-field="ShowMap" >Trajet</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% 
                                                            for(Trajet t : ts.findAll()){
                                                               String r= "Autoroute";
                                                               if(t.getRoute()==1){r= "Autoroute";}else if(t.getRoute()==2){ r= "National";}
                                                        %>
                                                        <tr>
                                                            <td><%= t.getUser().getNom() %></td>
                                                            <td><%= t.getVilleDepart().getNom() %></td>
                                                            <td><%= t.getVilleArriver().getNom() %></td>
                                                            <td><%= t.getDateDepart() %></td>
                                                            <td><%= t.getHeureDepart() %></td>
                                                            <td><%= r %></td>
                                                            <td><button class="btn btn-primary" id="showMap" latD-data="<%= t.getVilleDepart().getLat() %>" lngD-data="<%= t.getVilleDepart().getLng() %>" latA-data="<%= t.getVilleArriver().getLat() %>" lngA-data="<%= t.getVilleArriver().getLng() %>">Show Map</button></td>
                                                        </tr>
                                                        <% } %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Static Table End -->
                    <!-- Map-->
                    <div class="basic-form-area mg-b-15">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="sparkline13-list shadow-reset">
                                        <div class="sparkline13-hd">
                                            <div class="main-sparkline13-hd">
                                                <h1>Map</h1>
                                                <div class="sparkline13-outline-icon">
                                                    <span class="sparkline13-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sparkline13-graph">
                                            <div id="map"></div>
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
            <%@include file="includes/footerScripts.jsp" %> 
            <script src="scripts/trajet.js" type="text/javascript"></script>
            <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDcklBUKYo2EW1eijb_ww252I4EI4vSPPI">
        </script>
    </body>
</html>
