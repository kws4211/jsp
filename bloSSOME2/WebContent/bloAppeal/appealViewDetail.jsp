<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="blossome.vo.AppealVO" %>
<%
	// 1. 해당 게시물의 게시글번호값을 얻어온다
	AppealVO vo = (AppealVO)request.getAttribute("vo");
String id = (String)session.getAttribute("id");
int result = 0;
Object obj = request.getAttribute("result");
if(obj != null){
	result = 1;
}else{
	result=0;
}

int resultDel = 0;
Object obj2 = request.getAttribute("resultDel");
if(obj2 != null){
	resultDel = 1;
}else{
	resultDel=0;
}

// result = Integer.parseInt(request.getAttribute("result").toString());
%>    
<!DOCTYPE html>
<html lang="en">
  <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>eCommerce Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <link href="/bloSSOME2/bloAppeal/css/detail.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#tukCan").hide();
		if("<%=result%>" == 1){
			$("#tuk").hide();
			$("#tukCan").show();
		}
		if("<%=resultDel%>" == 1){
			$("#tuk").show();
			$("#tukCan").hide();
		}
		$("#delBtn").click(function(){
			var result = confirm("정말로 삭제하시겠습니까?");
			
			if(result){
				alert("삭제되었습니다.");
				$("#frm").attr("action","xx.appeal?cmd=appdelete");
				$("#frm").submit();
			}else{
				
			}
			
		});
		
		$("#tuk").click(function(){
			$("#tukfrm").attr("action","xx.appeal?cmd=tuk-insert");
			$("#tukfrm").submit();
		});
		
		$("#tukCan").click(function(){
			$("#tukfrm").attr("action","xx.appeal?cmd=tuk-delete");
			$("#tukfrm").submit();
		});
	});
</script>
  </head>

  <body>
  <jsp:include page="../bloMain/mainHeader.jsp" flush="false"/>
	
	<div class="container">
	<div>
		<h3>Appeal Board</h3>
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
						<h3 class="product-title"><%=vo.getAppTitle() %></h3>
						<div class="rating">
							<!-- <div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div> -->
							<span class="review-no"><%=vo.getAppCount()%> reviews</span>
						</div>
						<p class="product-description"><%=vo.getAppContent() %></p>
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
						<%if(id.equals(vo.getMemId())){ %>
							<button class="add-to-cart btn btn-default" type="button"  onclick="location.href='xx.appeal?cmd=appmodi&appId=<%=vo.getMemId()%>' ">수정하기</button>
							<button class="add-to-cart btn btn-default" type="button" id="delBtn" name="delBtn" >삭제하기</button>
							<%}else{ %>
						    <button class="add-to-cart btn btn-default" type="button" onclick="location.href='xx.appeal?cmd=appealView' ">뒤로가기</button>
							
							<button class="add-to-cart btn btn-default" type="button" id="tukCan">★툭취소</button>
							<button class="add-to-cart btn btn-default" type="button" id="tuk">★툭하기</button>
				<%} %>
							<form method="post" id="frm">
							<input type="hidden" name="appId" id="appId" value="<%=vo.getAppNum() %>" />
							<input type="hidden" name="choiceId" id="choiceId" value="<%=vo.getMemId() %>" />
							</form>
							
							<form method="post" id="tukfrm">
							<input type="hidden" name="memId" id="memId" value="<%=vo.getMemId() %>"/>
							<input type="hidden" name="appId" id="appId" value="<%=vo.getAppNum() %>" />
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