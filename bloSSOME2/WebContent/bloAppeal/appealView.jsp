<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.AppealVO" %>
<%
   // list를 가져옴
   List<AppealVO> list = (List<AppealVO>)request.getAttribute("list");
%> 
<!DOCTYPE html>
<html>
<head>
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	 <link href="/bloSSOME2/bloAppeal/css/appeal.css" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css?family=Arima+Madurai:100,200,300,400,500,700,800,900" rel="stylesheet">
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <script src="/bloSSOME2/bloAppeal/js/appeal.js"></script>

    
</head>

<body>
<jsp:include page="../bloMain/header.jsp" flush="false"/>
<h2>Appeal board</h2>
<div class="container">
	
    <div class="row">
    <button><a href="xxxxx.appeal?cmd=appinsert">글쓰기</a></button>
    <% for( AppealVO vo : list) { %>
     <div class="col-sm-10 col-sm-offset-1">

        <div class="col-md-4 col-sm-6">
             <div class="card-container manual-flip">
                <div class="card">
                    <div class="front">
                        <div class="user">
                            <img class="img-circle" src="/bloSSOME2/bloAppeal/img/hyeuntae.jpg"/>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h3 class="name"><%=vo.getMemName() %></h3>
                                <p class="profession"><%=vo.getMemJob() %></p>
                                <p class="text-center"><%=vo.getAppTitle() %></p>
                            </div>
                            <div class="footer">
                            <div>
                                <a class="applink" href="xxxxx.appeal?cmd=appdetail&appId=<%=vo.getAppNum()%>">상세보기</a>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end front panel -->
<!--                     <div class="back">
                        <div class="header">
                            <h5 class="motto">"To be or not to be, this is my awesome motto!"</h5>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h4 class="text-center">Job Description</h4>
                                <p class="text-center">Web design, Adobe Photoshop, HTML5, CSS3, Corel and many others...</p>

                                <div class="stats-container">
                                    <div class="stats">
                                        <h4>235</h4>
                                        <p>
                                            Followers
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>114</h4>
                                        <p>
                                            Following
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>35</h4>
                                        <p>
                                            Projects
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="footer">
                            <button class="btn btn-simple" rel="tooltip" title="Flip Card" onclick="rotateCard(this)">
                                <i class="fa fa-reply"></i> Back
                            </button>
                            <div class="social-links text-center">
                                <a href="http://deepak646.blogspot.in/" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
                                <a href="http://deepak646.blogspot.in/" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
                                <a href="http://deepak646.blogspot.in/" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
                            </div>
                        </div>
                    </div> end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->
<!--         <div class="col-sm-1"></div> -->

        </div> <!-- end col-sm-10 -->
        <%} %>
    </div> <!-- end row -->
    <div class="space-200"></div>
</div>
<jsp:include page="../bloMain/footer.jsp" flush="false"/>
</body>
</html>
