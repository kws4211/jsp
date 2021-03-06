<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.ReviewVO" %>
<%
   // list를 가져옴
   List<ReviewVO> list = (List<ReviewVO>)request.getAttribute("list");
%> 
<% int totalpage = (int)request.getAttribute("totalPage"); %>
<% String isnull = ""; %>
<% String state = ""; %>
<!DOCTYPE html>
<html>
<head>
      <link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	 <link href="/bloSSOME2/bloReview/css/review.css" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css?family=Arima+Madurai:100,200,300,400,500,700,800,900" rel="stylesheet">
     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <script src="/bloSSOME2/bloReview/js/review.js"></script>

    
</head>

<body>
	<jsp:include page="../bloMain/mainHeader.jsp"></jsp:include>
	<div id="aside"></div>
<h2>Review board</h2>
<div class="container">
    
    <div class="row">
    <% for( ReviewVO vo : list) { %>
     <div class="col-sm-10 col-sm-offset-1">
        <div class="col-md-4 col-sm-6">
             <div class="card-container manual-flip">
                <div class="card"> 
                    <div class="front">
                        <div class="user">
                            <img class="img-circle" src="/bloSSOME2/bloReview/img/hyeuntae2.jpg"/>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h3 class="name"><%=vo.getMemName() %></h3>
                                <p class="text-center"><%=vo.getRevTitle() %></p>
                            </div>
                            <div class="footer2">
                            <button class="add-to-cart btn btn-default" type="button" onclick="location.href='xxxxx.review?cmd=revdetail&revId=<%=vo.getRevNum()%>' ">상세보기</button>
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->

        </div> <!-- end col-sm-10 -->
        <%} %>
        <button><a href="xxxxx.review?cmd=revinsert">글쓰기</a></button>
    </div> <!-- end row -->
    <div class="space-200"></div>
    <div align="center">
    	<!-- 페이지 번호 들어가는 곳 -->
    	<% if(totalpage !=0){ %>
    		<%for(int i = 1 ; i <= totalpage ; i++){ %>
				<a href="index.review?cmd=reviewView&pnum=<%=i %>">&#171;<%=i %>&#187;</a>
    		<%} %>
    	<%}else{ %>
    	1 2 3 4 5
    	<%} %>
    </div>
</div>
<jsp:include page="../bloMain/footer.jsp" flush="false"/>
</body>
</html>
