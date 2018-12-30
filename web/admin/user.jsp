
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
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sparkline13-graph">
                                            <div class="datatable-dashv1-list custom-datatable-overright" id="divtable">
                                                
                                                <table id="userTable">
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
                                                            for (User u : us.FindAll()) {
                                                        %>
                                                        <tr>
                                                            <td><%= u.getNom()%></td>
                                                            <td><%= u.getEmail()%></td>
                                                            <td><%= u.getTel()%></td>
                                                            <td><%= u.getActive()%></td>
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
