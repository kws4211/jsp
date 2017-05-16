<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.AppealVO" %>
<% String id = (String)session.getAttribute("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<link href="/bloSSOME2/bloAppeal/css/input.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){ 
		$("#btn").click(function(){
			//각 입력값들의 validate 가능
			$("#frm").attr("action","xx.appeal?cmd=insertappeal");
			$("#frm").submit();
		});
		
		$("#canBtn").click(function(){
			//목록으로 돌아가기
			window.history.back();
		});
	});

</script>
</head>
 <body>
 <jsp:include page="../bloMain/mainHeader.jsp" flush="false"/>
	<form class="form-horizontal" method="post" role="form" id="frm" enctype="multipart/form-data">
	
	<div class="input-form">
	
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">제목</label><br/>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하여 주세요.">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">내용</label><br/>
			<div class="col-sm-10">
				<textarea class="form-control" rows='10' cols='40'   name="content" placeholder="내용을 입력하여 주세요."></textarea>
 			</div>
		</div>
		 <div class="form-group"> 
			<div class="col-sm-offset-2 col-sm-10">
				<input type="button" class="btn btn-default" id="canBtn"  value="목록으로"/>
				<input type="button" class="btn btn-default" id="btn" value="작성"/>
			</div>
		</div>
	</div>
	<input type='hidden' name='memid' value='<%=id%>'>
	<!-- <input type='hidden' name='appImg' value='appimg'> -->
	<input type="file" name="appImg" size=40 >
	
</form>
<jsp:include page="../bloMain/footer.jsp" flush="false"/>
</body>
</html>