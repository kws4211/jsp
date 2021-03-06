<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String name = (String)request.getAttribute("re"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Unika - Responsive One Page HTML5 Template</title>
		<meta name="description" content="Unika - Responsive One Page HTML5 Template">
		<meta name="keywords" content="HTML5, Bootsrtrap, One Page, Responsive, Template, Portfolio" />
		<meta name="author" content="imransdesign.com">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Google Fonts  -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet' type='text/css'> <!-- Body font -->
		<link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'> <!-- Navbar font -->

		<!-- Libs and Plugins CSS -->
		<link rel="stylesheet" href="/bloSSOME2/bloMain/inc/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/bloSSOME2/bloMain/inc/animations/css/animate.min.css">
		<link rel="stylesheet" href="/bloSSOME2/bloMain/inc/font-awesome/css/font-awesome.min.css"> <!-- Font Icons -->
		<link rel="stylesheet" href="/bloSSOME2/bloMain/inc/owl-carousel/css/owl.carousel.css">
		<link rel="stylesheet" href="/bloSSOME2/bloMain/inc/owl-carousel/css/owl.theme.css">

		<!-- Theme CSS -->
        <link rel="stylesheet" href="/bloSSOME2/bloMain/css/reset.css">
		<link rel="stylesheet" href="/bloSSOME2/bloMain/css/style.css">
		<link rel="stylesheet" href="/bloSSOME2/bloMain/css/mobile.css">

		<!-- Skin CSS -->
		<link rel="stylesheet" href="/bloSSOME2/bloMain/css/skin/cool-gray.css">
        <!-- <link rel="stylesheet" href="css/skin/ice-blue.css"> -->
        <!-- <link rel="stylesheet" href="css/skin/summer-orange.css"> -->
        <!-- <link rel="stylesheet" href="css/skin/fresh-lime.css"> -->
        <!-- <link rel="stylesheet" href="css/skin/night-purple.css"> -->

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body data-spy="scroll" data-target="#main-navbar">
        <div class="page-loader"></div>  <!-- Display loading image while page loads -->
    	<div class="body">
        
            <!--========== BEGIN HEADER ==========-->
            <header id="header" class="header-main">

                <!-- Begin Navbar -->
                <nav id="main-navbar" class="navbar navbar-default navbar-fixed-top" role="navigation"> <!-- Classes: navbar-default, navbar-inverse, navbar-fixed-top, navbar-fixed-bottom, navbar-transparent. Note: If you use non-transparent navbar, set "height: 98px;" to #header -->

                  <div class="container">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand page-scroll" href="index.html">bloSSOME</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a class="page-scroll" href="index.blossom">Home</a></li>
                            <li><a class="page-scroll" href="index.login">login</a></li>
                            <li><a class="page-scroll" href="index.find">이상형찾기</a></li>
                            <li><a class="page-scroll" href="index.appeal">어필게시판</a></li>
                            <li><a class="page-scroll" href="#portfolio-section">채팅</a></li>
                            <li><a class="page-scroll" href="#team-section">후기</a></li>                            
                            <li><a class="page-scroll" href="#prices-section">이상형월드컵</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container -->
                </nav>
                <!-- End Navbar -->

            </header>
            <!-- ========= END HEADER =========-->

        
        <!-- Plugins JS -->
		<script src="/bloSSOME2/bloMain/inc/jquery/jquery-1.11.1.min.js"></script>
		<script src="/bloSSOME2/bloMain/inc/bootstrap/js/bootstrap.min.js"></script>
		<script src="/bloSSOME2/bloMain/inc/owl-carousel/js/owl.carousel.min.js"></script>
		<script src="/bloSSOME2/bloMain/inc/stellar/js/jquery.stellar.min.js"></script>
		<script src="/bloSSOME2/bloMain/inc/animations/js/wow.min.js"></script>
        <script src="/bloSSOME2/bloMain/inc/waypoints.min.js"></script>
		<script src="/bloSSOME2/bloMain/inc/isotope.pkgd.min.js"></script>
		<script src="/bloSSOME2/bloMain/inc/classie.js"></script>
		<script src="/bloSSOME2/bloMain/inc/jquery.easing.min.js"></script>
		<script src="/bloSSOME2/bloMain/inc/jquery.counterup.min.js"></script>
		<script src="/bloSSOME2/bloMain/inc/smoothscroll.js"></script>

		<!-- Theme JS -->
		<script src="/bloSSOME2/bloMain/js/theme.js"></script>

    </body> 
</html>