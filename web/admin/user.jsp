
<%@page import="beans.User"%>
<%@page import="service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserService us = new UserService();
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Users</title>
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
            <!-- Static Table Start -->
            <div class="data-table-area mg-b-15">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sparkline13-list shadow-reset">
                                <div class="sparkline13-hd">
                                    <div class="main-sparkline13-hd">
                                        <h1>Users <span class="table-project-n">Data</span> Table</h1>
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
                                                    <th data-field="name">Nom</th>
                                                    <th data-field="email">Email</th>
                                                    <th data-field="phone">Phone</th>
                                                    <th data-field="number">Etat</th>
                                                    <th>Supprimer</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    for(User u : us.FindAll()){
                                                %>
                                                <tr>
                                                    <td><%= u.getNom()%></td>
                                                    <td><%= u.getEmail()%></td>
                                                    <td><%= u.getTel()%></td>
                                                    <td><%= u.getActive()%></td>
                                                    <td><button id="deleteU" type="button" class="btn btn-custon-four btn-danger" data="<%= u.getId()%>" >
                                                            <span class="adminpro-icon adminpro-danger-error"></span>
                                                            Supprimer</button></td>
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
            <!-- Static Table End -->
        </div>
    </div>
    <!-- Footer Start-->
        <%@include file="includes/footer.jsp" %> %>
        <!-- Footer End-->
        <%@include file="includes/footerScripts.jsp" %> 
        
        <script src="scripts/user.js" type="text/javascript"></script>
</body>
</html>
