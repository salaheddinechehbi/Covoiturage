
<%@page import="beans.User"%>
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
                                                            <th data-field="name">Nom</th>
                                                            <th data-field="email">Email</th>
                                                            <th data-field="phone">Phone</th>
                                                            <th data-field="number">Etat</th>
                                                            <th>Supprimer</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="table2">
                                                        <%
                                                            for (User u : us.findAll()) {
                                                        %>
                                                        <tr>
                                                            <td><%= u.getNom()%></td>
                                                            <td><%= u.getEmail()%></td>
                                                            <td><%= u.getTel()%></td>
                                                            <%
                                                                String active="";
                                                                if(u.getActive()==0){active="Non Active";}else if(u.getActive()==1){active="Active";}
                                                                %>
                                                            <td><%= active %></td>
                                                            <td><button id="deleteU" class="btn btn-custon-four btn-danger" data="<%= u.getId()%>" >
                                                                    <span class="adminpro-icon adminpro-danger-error"></span>Supprimer</button></td>
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
            <%@include file="includes/footer.jsp" %> %>
            <!-- Footer End-->
            <%@include file="includes/footerScripts.jsp" %> 
            <script src="scripts/user.js" type="text/javascript"></script>
    </body>
</html>
