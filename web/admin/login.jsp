
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Log In</title>
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
        <div class="wrapper-pro">
            <div class="wrapper-pro">
                <div class="content-inner-all">
                    <!-- login Start-->
                    <div class="login-form-area mg-t-30 mg-b-30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-2"></div>
                                <form id="adminpro-form" method="POST" class="adminpro-form" action="../Login"a>
                                    <div class="col-lg-6">
                                        <div class="login-bg">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="logo">
                                                        <a href="#"><img src="vendor/img/logo/logo.png" alt="" />
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="login-title">
                                                        <h1>Login Form</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="login-input-head">
                                                        <p>E-mail</p>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="login-input-area">
                                                        <input type="email" name="email" class="col-lg-8" />
                                                        <i class="fa fa-envelope login-user" aria-hidden="true"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="login-input-head">
                                                        <p>Password</p>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="login-input-area">
                                                        <input type="password" name="password" class="col-lg-8" />
                                                        <i class="fa fa-lock login-user"></i>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="forgot-password">
                                                                <a href="#">Forgot password?</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-lg-4">

                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="login-button-pro">
                                                        <button type="submit" class="login-button login-button-lg btn btn-default col-lg-8">Log in</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div class="col-lg-4"></div>
                            </div>
                        </div>
                    </div>
                    <!-- login End-->
                </div>
            </div>
            <!-- jquery============================================ -->
            <script src="vendor/js/vendor/jquery-1.11.3.min.js"></script>
            <!-- bootstrap JS============================================ -->
            <script src="vendor/js/bootstrap.min.js"></script>
    </body>
</html>
