
<%@page import="service.PayeService"%>
<%@page import="beans.Paye"%>
<%@page import="beans.Ville"%>
<%@page import="service.VilleService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma", "no-cache");//HTTP 1.0
    response.setHeader("Expires", "0");

    if (session.getAttribute("email") == null) {
        response.sendRedirect("../index.jsp");
    }
    PayeService ps = new PayeService();
    VilleService vs = new VilleService();
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Villes</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@include file="includes/headerScripts.jsp"%>
        <style>
            #map {
                height: 400px;  /* The height is 400 pixels */
                width: 100%;  /* The width is the width of the web page */
            }
            #map2 {
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
                                                <h1>Forme</h1>
                                                <div class="sparkline8-outline-icon">
                                                    <span class="sparkline8-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sparkline8-graph">
                                            <div class="basic-login-form-ad">
                                                <div class="row col-md-12">
                                                    <div class="form-group-inner col-md-3">
                                                        <label>Nom :</label>
                                                        <input type="text" class="form-control" id="nomVille"/>
                                                    </div>
                                                    <div class="form-group-inner col-md-3">
                                                        <label>L'athitude:</label>
                                                        <input type="text" class="form-control" id="lat"/>
                                                    </div>
                                                    <div class="form-group-inner col-md-3">
                                                        <label>Langitude:</label>
                                                        <input type="text" class="form-control"id="lang"/>
                                                        <input type="hidden" id="ville" value="">
                                                    </div>

                                                    <div class="form-group-inner col-md-3">
                                                        <label>Paye :</label>
                                                        <select class="form-control custom-select-value" id="paye">
                                                            <option value="0">Choisir Un Paye !</option>
                                                            <%
                                                                for (Paye p : ps.findAll()) {
                                                            %>
                                                            <option value="<%=p.getId()%>"><%=p.getNom()%></option>

                                                            <%}%>
                                                        </select>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="login-btn-inner">
                                                <div class="inline-remember-me">
                                                    </br>
                                                    <input type="button" value="Ajouter" id="ajouter" class="btn btn-success"/>
                                                    <input type="hidden" id="ville" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>           
                        </div>
                    </div>
                    <!-- End of forme-->
                    <!-- Table-->
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
                                                            <th data-field="Nom" data-editable="true">Nom</th>
                                                            <th data-field="Paye" data-editable="true">Paye</th>
                                                            <th data-field="Lang" data-editable="true">Langitude</th>
                                                            <th data-field="Lat" data-editable="true">Lathitude</th>
                                                            <th data-field="Modifier" >Modifier</th>
                                                            <th data-field="Suprimer" >Suprimer</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="table2">
                                                        <%
                                                            for (Ville v : vs.findAll()) {
                                                        %>
                                                        <tr>
                                                            <td><%=v.getNom()%></td>
                                                            <td><%=v.getPaye().getNom()%></td>
                                                            <td><%=v.getLng()%></td>
                                                            <td><%=v.getLat()%></td>
                                                            <td><button class="btn btn-warning" id="updateV" data="<%=v.getId()%>"> Modifier</button></td>
                                                            <td><button class="btn btn-danger" id="deleteV" data="<%=v.getId()%>">Suprimer</button></td>
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
                    <!-- End of Table-->

                    <!-- Table-->
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
                    <!-- End of Table-->
                    <!-- Table-->
                    <select id="sel">
                        <option value="#">jhkj</option>
                        <option value="-6.83255,34.01325">Rabat</option>
                        <option value="-5.79975,35.76727">Tanger</option>
                        <option value="-8.0343503,31.5988796">Kech</option>
                    </select>
                    <div class="basic-form-area mg-b-15">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="sparkline13-list shadow-reset">
                                        <div class="sparkline13-hd">
                                            <div class="main-sparkline13-hd">
                                                <h1>Map</h1><button id="get">alller</button>
                                                <div class="sparkline13-outline-icon">
                                                    <span class="sparkline13-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sparkline13-graph">
                                            <div id="map2"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End of Table-->
                </div>

            </div>
            <!-- Static Table End -->

        </div>

        <!-- Footer Start-->
        <%@include file="includes/footer.jsp" %> %>
        <!-- Footer End-->
        <%@include file="includes/footerScripts.jsp" %> 
        <script src="scripts/ville.js" type="text/javascript"></script>
        <script>

            function initMap2() {
                var directionsService = new google.maps.DirectionsService();
                var directionsDisplay = new google.maps.DirectionsRenderer();
                var casa = new google.maps.LatLng(33.58831, -7.61138);
                var kech = new google.maps.LatLng(31.5988796, -8.0343503);
                //var map2;
                var optionsDi = {
                    zoom: 9,
                    center: kech
                };
                var map2 = new google.maps.Map(document.getElementById('map2'), optionsDi);
                directionsDisplay.setMap(map2);

                function calculateRoute() {
                    //var d = [];
                    //d = des.split(",");
                    
                    //var tot = new google.maps.LatLng(d[1], d[0]);
                    var request = {
                        origin: kech,
                        destination: casa,
                        travelMode: 'DRIVING'
                    };
                    directionsService.route(request, function (result, status) {
                        console.log(result, status);
                        if(status='OK'){
                            directionsDisplay.setDirections(result);
                        }
                    });
                }
                document.getElementById('get').onclick = function () {
                    calculateRoute();
                };
                
                document.getElementById('sel').onclick = function (){
                    var val = document.getElementById('sel').value;
                    console.log(val);
                    calculateRoute(val);
                };
            }

            // Initialize and add the map
            function initMap() {
                // The location of Uluru
                var casa = new google.maps.LatLng(33.58831, -7.61138);
                var kech = new google.maps.LatLng(31.5988796, -8.0343503);
                var options = {zoom: 5, center: kech}
                // The map, centered at Uluru
                var map = new google.maps.Map(document.getElementById('map'), options);
                // The marker, positioned at Uluru
                var marker = new google.maps.Marker({position: kech, map: map});
                var marker1 = new google.maps.Marker({position: casa, map: map});
            }



        </script>
        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBUdTNV5AiadBEbprvloo3OCjrV_c3kYCo&callback=initMap2">
        </script>
    </body>
</html>
