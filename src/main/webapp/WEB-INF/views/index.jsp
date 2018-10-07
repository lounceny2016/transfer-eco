<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Tr@nsferEco</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="resources/website/img/favicon.png" rel="icon">
    <link href="resources/website/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="resources/website/css/google-font.css" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="resources/website/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="resources/website/lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
    <link href="resources/website/lib/owlcarousel/owl.carousel.css" rel="stylesheet">
    <link href="resources/website/lib/owlcarousel/owl.transitions.css" rel="stylesheet">
    <link href="resources/website/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/website/lib/animate/animate.min.css" rel="stylesheet">
    <link href="resources/website/lib/venobox/venobox.css" rel="stylesheet">

    <!-- Nivo Slider Theme -->
    <link href="resources/website/css/nivo-slider-theme.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="resources/website/css/style.css" rel="stylesheet">

    <!-- Responsive Stylesheet File -->
    <link href="resources/website/css/responsive.css" rel="stylesheet">

    <!-- =======================================================
      Theme Name: eBusiness
      Theme URL: https://bootstrapmade.com/ebusiness-bootstrap-corporate-template/
      Author: BootstrapMade.com
      License: https://bootstrapmade.com/license/
    ======================================================= -->
</head>

<body data-spy="scroll" data-target="#navbar-example" onload="index.initPage()">

<div id="preloader"></div>

<header>
    <!-- header-area start -->
    <div id="sticker" class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">

                    <!-- Navigation -->
                    <nav class="navbar navbar-default">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!-- Brand -->
                            <a class="navbar-brand page-scroll sticky-logo pull-left" href="${contextPath}/home?userId=${user.id}">
                                <h1><span></span>Tr@nsferEco</h1>
                                <!-- Uncomment below if you prefer to use an image logo -->
                                <!-- <img src="img/logo.png" alt="" title=""> -->
                            </a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="active">
                                    <a class="page-scroll" href="#home">Acceil</a>
                                </li>
                                <li>
                                    <a class="page-scroll" href="#about">Comment ça marche</a>
                                </li>
                                <li>
                                    <a class="page-scroll" href="#services">Mon compte</a>
                                </li>
                            </ul>
                        </div>
                        <!-- navbar-collapse -->
                    </nav>
                    <!-- END: Navigation -->
                </div>
            </div>
        </div>
    </div>
    <!-- header-area end -->
</header>
<!-- header end -->

<!-- Start Slider Area -->
<div id="home" class="slider-area">
    <div class="bend niceties preview-2">
        <div id="ensign-nivoslider" class="slides">
            <img src="resources/website/img/slider/slider1.jpg" alt="" title="#slider-direction-1" />
            <img src="resources/website/img/slider/slider2.jpg" alt="" title="#slider-direction-2" />
            <img src="resources/website/img/slider/slider3.jpg" alt="" title="#slider-direction-3" />
        </div>

        <!-- direction 1 -->
        <div id="slider-direction-1" class="slider-direction slider-one">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="slider-content">
                            <!-- layer 1 -->
                            <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                                <h2 class="title1"></h2>
                            </div>
                            <!-- layer 2 -->
                            <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                <h1 class="title2">En 3 clics, envoyez des bonds d'achats à vos proches. Rapide et sécurisé. 24h/24 & 7j/7.</h1>
                            </div>
                            <!-- layer 3 -->
                            <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                <!--<a class="ready-btn right-btn page-scroll" href="#services">See Services</a>-->
                                <!--<a class="ready-btn page-scroll" href="#about">Learn More</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- direction 2 -->
        <div id="slider-direction-2" class="slider-direction slider-two">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="slider-content text-center">
                            <!-- layer 1 -->
                            <div class="layer-1-1 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                <h2 class="title1"></h2>
                            </div>
                            <!-- layer 2 -->
                            <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                <h1 class="title2">En 3 clics, envoyez des bonds d'achats à vos proches. Rapide et sécurisé. 24h/24 & 7j/7.</h1>
                            </div>
                            <!-- layer 3 -->
                            <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                <!--<a class="ready-btn right-btn page-scroll" href="#services">See Services</a>-->
                                <!--<a class="ready-btn page-scroll" href="#about">Learn More</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- direction 3 -->
        <div id="slider-direction-3" class="slider-direction slider-two">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="slider-content">
                            <!-- layer 1 -->
                            <div class="layer-1-1 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                <h2 class="title1"></h2>
                            </div>
                            <!-- layer 2 -->
                            <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                <h1 class="title2">En 3 clics, envoyez des bonds d'achats à vos proches. Rapide et sécurisé. 24h/24 & 7j/7.</h1>
                            </div>
                            <!-- layer 3 -->
                            <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                <!--<a class="ready-btn right-btn page-scroll" href="#services">See Services</a>-->
                                <!--<a class="ready-btn page-scroll" href="#about">Learn More</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Slider Area -->

<!-- Start About area -->
<div id="about" class="services-area area-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="section-headline services-head text-center">
                    <h2>Comment ça marche</h2>
                </div>
                <br/>
                <div class="services-head text-center">
                    <h3>En 3 clics, envoyez des bonds d'achats à vos proches.<br/> Rapide et sécurisé.<br/><p class="text-danger"> 24h/24 & 7j/7.</p></h3>
                </div>
            </div>
        </div>
        <br/>
        <div class="row">

            <%--transfer form div --%>
            <div class="col-sm-8">
                <form>

                    <div class="row col-sm-offset-5">
                        <img src="resources/website/img/laptop.png">
                    </div>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <div class="row">

                        <fieldset class="col-sm-6">
                            <div class="control-group">
                                <div class="controls">
                                    <input id="transferAmount" type="text" oninput="index.updateTransferFee()" name="transferAmount" class="form-control" placeholder="Saisissez la ici la valeur">
                                </div>
                            </div>
                        </fieldset>

                        <fieldset class="col-sm-6">
                            <div class="control-group">
                                <div class="controls">
                                    <input id="transferFee" type="text" name="transferFee" class="form-control" id="" placeholder="Total à payer" readonly>
                                </div>
                            </div>
                        </fieldset>

                    </div>

                </form>

            </div>

            <%--Exchange rate panel div --%>
            <div class="col-sm-4 pull-right">
                <div class="faq-details">
                    <div class="panel-group" id="accordion-4">
                        <!-- Panel Default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="check-title">
                                    <a data-toggle="collapse" class="active" data-parent="#accordion" href="#" aria-expanded="true">
                                        <span class=""></span>Bourse
                                    </a>
                                </h4>
                            </div>
                            <div id="check1-3" class="panel-collapse collapse in" aria-expanded="true" style="">
                                <div class="panel-body">
                                    <table class="table table-striped table-bordered bootstrap-datable datatable">
                                        <thead>
                                        <tr>
                                            <th>Monnaie étrangère</th>
                                            <th>Franc guinéen</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1 EUR</td>
                                            <td>10.471,44 GNF</td>
                                        </tr>
                                        <tr>
                                            <td>1 USD</td>
                                            <td>9.116,39 GNF</td>
                                        </tr>
                                        <tr>
                                            <td>1 GBP</td>
                                            <td>11.929,47 GNF</td>
                                        </tr>
                                        <tr>
                                            <td>1 FCFA</td>
                                            <td>16.0033 GNF</td>
                                        </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- End Panel Default -->
                        <!-- Panel Default -->
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- End About area -->

<!-- Start Service area -->
<div id="services" class="services-area area-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="section-headline services-head text-center">
                    <h2>Mon compte</h2>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <div class="row">
            <div id="loader">
                <img class="center-block" id="loading-image" src="resources/website/img/preloader.gif" alt="Loading..." />
            </div>
            <div class="col-md-6 col-xs-12">
                <div class="faq-details">
                    <div class="panel-group" id="accordion-3">
                        <!-- Panel Default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="check-title">
                                    <a data-toggle="collapse" class="active" data-parent="#accordion" href="#" aria-expanded="true">
                                        <span class=""></span>Indentifiez vous
                                    </a>
                                </h4>
                            </div>
                            <div id="check3" class="panel-collapse collapse in" aria-expanded="true" style="">
                                <div class="panel-body">
                                    <div id="login-message-div"></div>
                                    <form id="loginForm" class="form-horizontal">
                                        <fieldset>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="email" name="loginEmail" class="form-control" id="loginEmail" placeholder="Votre e-mail">
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="password" name="loginPassword" class="form-control" id="loginPassword" placeholder="Votre mot de passe">
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="form-actions">
                                                <button type="button" class="btn btn-primary" onclick="index.login('${contextPath}')">Valider</button>
                                                <button type="button" class="btn col-sm-offset-1">Mot de passe oublié</button>
                                            </div>
                                            <br/>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- End Panel Default -->
                        <!-- Panel Default -->
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div class="faq-details">
                    <div class="panel-group" id="accordion">
                        <!-- Panel Default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="check-title">
                                    <a data-toggle="collapse" class="active" data-parent="#accordion" href="#" aria-expanded="true">
                                        <span class=""></span>Nouveau client
                                    </a>
                                </h4>
                            </div>
                            <div id="check1" class="panel-collapse collapse in" aria-expanded="true" style="">
                                <div class="panel-body">
                                    <div id="registration-message-div"></div>
                                    <form id="registrationForm" class="form-horizontal">
                                        <fieldset>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Votre nom">
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="text" name="firstName" class="form-control" id="firstName" placeholder="Votre prenom">
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="text" name="phone" class="form-control" id="phone" placeholder="Votre numero de telephone">
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="email" name="registrationEmail" class="form-control" id="registrationEmail" placeholder="Votre e-mail">
                                                </div>
                                            </div>
                                            <br/>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="password" name="registrationPassword" class="form-control" id="registrationPassword" placeholder="Votre mot de passe">
                                                </div>
                                            </div>
                                            <br/>
                                            <br/>
                                            <div class="form-actions">
                                                <button type="button" class="btn btn-primary" onclick="index.register('${contextPath}')">Valider</button>
                                            </div>
                                            <br/>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- End Panel Default -->
                        <!-- Panel Default -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start Footer bottom Area -->
<footer>
    <div class="footer-area">
        <div class="container">
        </div>
    </div>
    <div class="footer-area-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="copyright text-center">
                        <p>
                            &copy; Copyright <strong>Tr@nsferEco</strong>. Tous droits réservés
                        </p>
                    </div>
                    <div class="credits">
                        <!--
                          All the links in the footer should remain intact.
                          You can delete the links only if you purchased the pro version.
                          Licensing information: https://bootstrapmade.com/license/
                          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=eBusiness
                        -->
                        Designed by <a href="#">camtech consulting</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<!-- JavaScript Libraries -->
<script src="resources/website/lib/jquery/jquery.min.js"></script>
<script src="resources/website/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/website/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="resources/website/lib/venobox/venobox.min.js"></script>
<script src="resources/website/lib/knob/jquery.knob.js"></script>
<script src="resources/website/lib/wow/wow.min.js"></script>
<script src="resources/website/lib/parallax/parallax.js"></script>
<script src="resources/website/lib/easing/easing.min.js"></script>
<script src="resources/website/lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="resources/website/lib/appear/jquery.appear.js"></script>
<script src="resources/website/lib/isotope/isotope.pkgd.min.js"></script>
<!-- Uncomment below if you want to use dynamic Google Maps -->
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script> -->

<!-- Contact Form JavaScript File -->

<script src="resources/website/js/main.js"></script>
<script src="resources/website/js/index.js"></script>
</body>

</html>
