<script>
    localStorage.setItem("id", "<%=session.getAttribute("id")%>");
</script>


<div class="top-menu">

    <section class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12">

                
                    <%if (null == session.getAttribute("nom")) {
                    %>
                    <div class="user-log btn-info">
                    <a data-toggle="modal" data-target="#loginModal">
                        Log in
                    </a> /
                    <a data-toggle="modal" data-target="#regModal">
                        Sign up
                    </a>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="user-log btn-danger">
                    User : <%=session.getAttribute("nom")%>
                    <a href="../Logout">
                        / Log out
                    </a>
                    </div>
                    <%
                        }

                    %>

                <!-- end .user-log -->
            </div><!-- end .col-sm-4 -->

            <div class="col-md-8 col-sm-8 col-xs-12">

                <ul class="social-icons">
                    <li>
                        <a class="facebook" href="#">
                            <i class="fa fa-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a class="twitter" href="#">
                            <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a class="google" href="#">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </li>
                </ul>

            </div><!-- end .col-sm-8 -->

        </div><!-- end .row -->
    </section><!-- end .container -->

</div>