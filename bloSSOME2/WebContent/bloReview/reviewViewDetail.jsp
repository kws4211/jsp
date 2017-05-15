<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="blossome.vo.ReviewVO" %>
<%
	// 1. 해당 게시물의 게시글번호값을 얻어온다
	ReviewVO vo = (ReviewVO)request.getAttribute("vo");
%>    
<!DOCTYPE html>
<html>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <link href="/bloSSOME4/bloAppeal/css/detail.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">>
	$(function(){
		$("#delBtn").click(function(){
			var result = confirm("정말로 삭제하시겠습니까?");
			
			if(result){
				alert("삭제되었습니다.");
				$("#frm").attr("action","xx.review?cmd=revdelete");
				$("#frm").submit();
			}else{
				
			}
			
		});
	});
	</script>
	  </head>

	  <body>
	  <jsp:include page="../bloMain/mainHeader.jsp" flush="false"/>
		
		<div class="container">
		<div>
			<h3>Review Board</h3>
		</div>
			
			<div class="card">
				<div class="container-fliud">
					<div class="wrapper row">
						<div class="preview col-md-6">
							
							<div class="preview-pic tab-content">
							  <div class="tab-pane active" id="pic-1"><img src="/bloSSOME2/bloAppeal/img/hyeuntae.jpg" /></div>
							  <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
							  <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
							  <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
							  <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
							</div>
	<!-- 						<ul class="preview-thumbnail nav nav-tabs">
							  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
							  <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
							  <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
							  <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
							  <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
							</ul>
	 -->						
						</div>
						<div class="details col-md-6">
							<h3 class="product-title"><%=vo.getRevTitle() %></h3>
							<div class="rating">
								<!-- <div class="stars">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div> -->
								<span class="review-no"><%=vo.getRevCount()%> reviews</span>
							</div>
							<p class="product-description"><%=vo.getRevContent() %></p>
							<!-- <h4 class="price">current price: <span>$180</span></h4>
							<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
							<h5 class="sizes">sizes:
								<span class="size" data-toggle="tooltip" title="small">s</span>
								<span class="size" data-toggle="tooltip" title="medium">m</span>
								<span class="size" data-toggle="tooltip" title="large">l</span>
								<span class="size" data-toggle="tooltip" title="xtra large">xl</span>
							</h5>
							<h5 class="colors">colors:
								<span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
								<span class="color green"></span>
								<span class="color blue"></span>
							</h5> -->
							<div class="action">
							    <button class="add-to-cart btn btn-default" type="button" onclick="location.href='xx.review?cmd=reviewView' ">뒤로가기</button>
								<button class="add-to-cart btn btn-default" type="button"  onclick="location.href='xx.review?cmd=revmodi&revId=<%=vo.getMemId()%>' ">수정하기</button>
								<button class="add-to-cart btn btn-default" type="button" id="delBtn" name="delBtn" >삭제하기</button>
								<form method="post" id="frm">
								<input type="hidden" name="revId" id="revId" value="<%=vo.getRevNum() %>" />
								</form>
								<!-- <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../bloMain/footer.jsp" flush="false"/>
	  </body>
	</html>