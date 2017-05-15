<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="blossome.vo.AppealVO" %>
<%
	// 1. 수정할 레코드의 게시글번호를 넘거받기
	String appId = request.getParameter("appId");
	AppealVO vo =  (AppealVO) request.getAttribute("vo");
	// 2. Service에 getArticleById()함수를 호출하여 그 게시글번호의 레코드를 검색
%>   
    
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정하기</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <link href="/bloSSOME4/bloAppeal/css/detail.css" rel="stylesheet">
    <link href="/bloSSOME4/bloAppeal/css/input.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		$("#btn").click(function(){
			
			var result = confirm("수정하시겠습니까?");
			
			if(result){
				alert("수정되었습니다.");				
			$("#frm").attr("action","xx.appeal?cmd=appmodidi");
			$("#frm").submit();
			
			}else{
				
			}
		});
		
		$("#canBtn").click(function(){
			//목록으로 돌아가기
			window.history.back();
		});
		
	});
</script>
</head>
 <body>
 <jsp:include page="../bloMain/header.jsp" flush="false"/>
	<form class="form-horizontal" method="post" role="form" id="frm">
	
	<div class="input-form">
	
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">제목</label><br/>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="title" name="title" value="<%=vo.getAppTitle()  %>">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">내용</label><br/>
			<div class="col-sm-10">
				<textarea class="form-control" rows='10' cols='40'   name="content" ><%=vo.getAppContent()  %></textarea>
 			</div>
		</div>
		 <div class="form-group"> 
			<div class="col-sm-offset-2 col-sm-10">
				<input type="button" class="btn btn-default" id="btn"  value="수정하기"/>
				<input type="button" class="btn btn-default" id="canBtn" value="목록으로"/>
				<input type='hidden' id='appId' name='appId' value="<%=vo.getAppNum()  %>"/>
			</div>
		</div>
	</div>
	</form>
<jsp:include page="../bloMain/footer.jsp" flush="false"/>
</body>
</html>