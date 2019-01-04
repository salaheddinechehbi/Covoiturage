
<%@page import="beans.Paye"%>
<%@page import="service.PayeService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma", "no-cache");//HTTP 1.0
    response.setHeader("Expires", "0");
    
    if(session.getAttribute("email")==null){
        response.sendRedirect("../index.jsp");
    }
    
    PayeService ps = new PayeService();
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Payes</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@include file="includes/headerScripts.jsp"%>
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
                                                <h1>Ajouter Paye</h1>
                                                <div class="sparkline8-outline-icon">
                                                    <span class="sparkline8-collapse-link"><i class="fa fa-chevron-up"></i></span>
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
                                                                <input type="text" class="form-control" id="nomPaye" name="nomPaye" />
                                                            </div>

                                                            <div class="login-btn-inner">
                                                                <div class="inline-remember-me">
                                                                    <input type="button" value="Ajouter" id="ajouter" class="btn btn-success"/>
                                                                    <input type="hidden" name="paye" id="paye" value="">
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
                                                            <th data-field="Modifier" >Modifier</th>
                                                            <th data-field="Suprimer" >Suprimer</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="table2">
                                                        <% 
                                                                for(Paye p:ps.findAll())
                                                                {
                                                        %>
                                                        <tr>
                                                            <td><%= p.getNom()%></td>
                                                            <td><button class="btn btn-warning" onclick="updatePaye(<%=p.getId()%>,'<%= p.getNom() %>')"> Modifier</button></td>
                                                            <td><button class="btn btn-danger" id="deleteP" data="<%=p.getId()%>">Suprimer</button></td>
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
        </div>
    </div>
    <!-- Footer Start-->
            <!-- Footer Start-->
            <%@include file="includes/footer.jsp" %> %>
            <!-- Footer End-->
            <%@include file="includes/footerScripts.jsp" %> 
            <script src="scripts/paye.js" type="text/javascript"></script>
</body>
</html>
