<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="blossome.vo.ReviewVO" %>
<%
	// 1. 수정할 레코드의 게시글번호를 넘거받기
	String revId = request.getParameter("revId");
	ReviewVO vo =  (ReviewVO) request.getAttribute("vo");
	// 2. Service에 getArticleById()함수를 호출하여 그 게시글번호의 레코드를 검색
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정하기</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){

			$("#frm").attr("action","xx.review?cmd=revmodidi");
			$("#frm").submit();
		});
	});
</script>
</head>
 <body>
	<h4> 게시판 글 수정하기 </h4><br/> 
	<form name='frm' method='post' id='frm'>
	제  목 : <input type='text' id="title" name='title' value="<%=vo.getRevTitle()  %>"><br/><br/>
	내  용 : <textarea id='content' name='content' rows='10' cols='40'><%=vo.getRevContent()  %></textarea><br/><br/>

	<input type='button'  id='btn' name='btn'  value='수정하기'>
	<input type='button' value='목록보기' onclick=""/>
	<input type='hidden' id='revId' name='revId' value="<%=vo.getRevNum()  %>"/>
	</form>

</body>
</html>