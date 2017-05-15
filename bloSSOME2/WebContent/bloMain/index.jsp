<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String name = (String)request.getAttribute("re"); %>
<% String st = (String)session.getAttribute("admin"); %>
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
                      <a class="navbar-brand page-scroll" href="index.html">Unika</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a class="page-scroll" href="index.blossom">Home</a></li>
                            <%if(session.getAttribute("id") == null) {%>
                            	<li><a class="page-scroll" href="index.login">Login</a></li>
                            <%}else{ %>
                            	<li><a class="page-scroll" href="index.login?cmd=logout">Logout</a></li>
                            <%} %>
                            
                            <%if(st != null && st.equals("admin")){ %>
                            	<li><a class="page-scroll" href="index.admin">관리자메뉴</a></li>
                            <%} %>
                            <li><a class="page-scroll" href="index.find">이상형찾기</a></li>
                            <li><a class="page-scroll" href="index.appeal">어필게시판</a></li>
                            <li><a class="page-scroll" href="#team-section">후기</a></li>                            
                            <li><a class="page-scroll" href="#prices-section">이상형월드컵</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container -->
                </nav>
                <!-- End Navbar -->

            </header>
            <!-- ========= END HEADER =========-->

                
            <!-- Begin Portfolio -->
            <section id="portfolio-section" class="page bg-style1">
            	<div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portfolio">
                                <!-- Begin page header-->
                                <div class="page-header-wrapper">
                                    <div class="container">
                                        <div class="page-header text-center wow fadeInDown" data-wow-delay="0.4s">
                                            <h2>Our Works</h2>
                                            <div class="devider"></div>
                                            <p class="subtitle">What we are proud of</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End page header-->
                                <div class="portfoloi_content_area" >
                                    
                                    <div class="portfolio_content">
                                        <div class="row"  id="portfolio">
                                            <div class="col-xs-12 col-sm-4 appsDevelopment">
                                                <div class="portfolio_single_content">
                                                    <img src="/bloSSOME2/bloMain/img/portfolio/p1.jpg" alt="title"/>
                                                    <div>
                                                        <a href="#">Skull Awesome</a>
                                                        <span>Subtitle</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 GraphicDesign">
                                                <div class="portfolio_single_content">
                                                    <img src="/bloSSOME2/bloMain/img/portfolio/p2.jpg" alt="title"/>
                                                    <div>
                                                        <a href=" main.appeal">어필게시판</a>
                                                        <span>어필 어필</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 responsive">
                                                <div class="portfolio_single_content">
                                                    <img src="/bloSSOME2/bloMain/img/portfolio/p3.jpg" alt="title"/>
                                                    <div>
                                                        <a href="main.find">이상형 찾기</a>
                                                        <span>찾기 찾기</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 webDesign websites">
                                                <div class="portfolio_single_content">
                                                    <img src="/bloSSOME2/bloMain/img/portfolio/p4.jpg" alt="title"/>
                                                    <div>
                                                        <a href="#">뭐넣어?</a>
                                                        <span>Subtitle</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 appsDevelopment websites">
                                                <div class="portfolio_single_content">
                                                    <img src="/bloSSOME2/bloMain/img//portfolio/p5.jpg" alt="title"/>
                                                    <div>
                                                        <a href="main.review">후기</a>
                                                        <span>Subtitle</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 GraphicDesign">
                                                <div class="portfolio_single_content">
                                                    <img src="/bloSSOME2/bloMain/img/portfolio/p6.jpg" alt="title"/>
                                                    <div>
                                                        <a href="#">Night Crawlers</a>
                                                        <span>Subtitle</span>
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
            </section>
            <!-- End portfolio -->
            
                
                
                
            <!-- Begin counter up -->
            <section id="counter-section">                					
				<div id="counter-up-trigger" class="counter-up text-white parallax" data-stellar-background-ratio="0.5" style="background-image: url(img/counter-bg.jpg);">
					<div class="cover"></div>
                    <!-- Begin page header-->
                    <div class="page-header-wrapper">
                        <div class="container">
                            <div class="page-header text-center wow fadeInDown" data-wow-delay="0.4s">
                                <h2>Some Fun Facts</h2>
                                <div class="devider"></div>
                                <p class="subtitle">Before anyone is not told</p>
                            </div>
                        </div>
                    </div>
                    <!-- End page header-->
					<div class="container">

						<div class="row">

							<div class="fact text-center col-md-3 col-sm-6">
								<div class="fact-inner">
									<i class="fa fa-users fa-3x"></i>
                                    <div class="extra-space-l"></div>
									<span class="counter">99999</span>
									<p class="lead">Clients Worked With</p>
								</div>
							</div>

							<div class="fact text-center col-md-3 col-sm-6">
								<div class="fact-inner">
									<i class="fa fa-leaf fa-3x"></i>
                                    <div class="extra-space-l"></div>
									<span class="counter">800</span>
									<p class="lead">Completed Projects</p>
								</div>
							</div>

							<div class="fact text-center col-md-3 col-sm-6">
								<div class="fact-inner">
									<i class="fa fa-trophy fa-3x"></i>
                                    <div class="extra-space-l"></div>
									<span class="counter">55</span>
									<p class="lead">Winning Awards</p>
								</div>
							</div>

							<div class="fact last text-center col-md-3 col-sm-6">
								<div class="fact-inner">
									<i class="fa fa-coffee fa-3x"></i>
                                    <div class="extra-space-l"></div>
									<span class="counter">1100</span>
									<p class="lead">Cups of coffee drinking</p>
								</div>
							</div>

						</div> <!-- /.row -->
					</div> <!-- /.container -->
				</div>
            </section>
			<!-- End counter up -->

                
            <!-- Begin footer -->
            <footer class="text-off-white">
   
                
                <div class="footer">
                    <div class="container text-center wow fadeIn" data-wow-delay="0.4s">
                        <p class="copyright">Copyright &copy; 2015 - Designed By <a href="https://www.behance.net/poljakova" class="theme-author">Veronika Poljakova</a> &amp; Developed by <a href="http://www.imransdesign.com/" class="theme-author">Imransdesign</a></p>
                    </div>
                </div>

            </footer>
            <!-- End footer -->

            <a href="#" class="scrolltotop"><i class="fa fa-arrow-up"></i></a> <!-- Scroll to top button -->
                                              
        </div><!-- body ends -->
        
        
        
        
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