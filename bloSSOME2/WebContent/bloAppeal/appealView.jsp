<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.AppealVO" %>
<%
   // list를 가져옴
   List<AppealVO> list = (List<AppealVO>)request.getAttribute("list");
%>
<% int totalpage = (int)request.getAttribute("totalPage"); %>
<% String isnull = ""; %>
<% String state = ""; %>
 
<!DOCTYPE html>
<html>
<head>
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	 <link href="/bloSSOME4/bloAppeal/css/appeal.css" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css?family=Arima+Madurai:100,200,300,400,500,700,800,900" rel="stylesheet">
     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <script src="/bloSSOME4/bloAppeal/js/appeal.js"></script>

    
</head>

<body>
<jsp:include page="../bloMain/header.jsp" flush="false"/>
<jsp:include page="../bloMain/asidemenu.jsp" flush="false" />
<div class="container">
<h2>Appeal board</h2>
	
    <div class="row">
    <button><a href="xxxxx.appeal?cmd=appinsert">글쓰기</a></button>
    <%if(list.size() > 0 && session.getAttribute("id") != null){ %>
    <% for( AppealVO vo : list) { %>
     <div class="col-sm-10 col-sm-offset-1">
        <div class="col-md-4 col-sm-6">
             <div class="card-container manual-flip">
                <div class="card"> 
                    <div class="front">
                        <div class="user">
                            <img class="img-circle" src="/bloSSOME2/bloAppeal/img/hyeuntae2.jpg"/>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h3 class="name"><%=vo.getMemName() %></h3>
                                <p class="profession"><%=vo.getMemJob() %></p>
                                <p class="text-center"><%=vo.getAppTitle() %></p>
                            </div>
                            <div class="footer2">
                            <button class="add-to-cart btn btn-default" type="button" onclick="location.href='xxxxx.appeal?cmd=appdetail&appId=<%=vo.getAppNum()%>' ">상세보기</button>
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->

        </div> <!-- end col-sm-10 -->
        <%} %>
        <%} %>
    </div> <!-- end row -->
    <div class="space-200"></div>
    <div align="center">
    	<!-- 페이지 번호 들어가는 곳 -->
    	<% if(totalpage !=0){ %>
    		<%for(int i = 1 ; i <= totalpage ; i++){ %>
				<a href="index.appeal?cmd=appealView&pnum=<%=i %>">&#171;<%=i %>&#187;</a>
    		<%} %>
    	<%}else{ %>
    	1 2 3 4 5
    	<%} %>
    </div>
</div>
<jsp:include page="../bloMain/footer.jsp" flush="false"/>
</body>
</html>
