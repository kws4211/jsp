<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.ReviewVO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			//각 입력값들의 validate 가능
			$("#frm").attr("action","xx.review?cmd=insertreview");
			$("#frm").submit();
		});
	});

</script>
</head>
 <body>
	<h4> 게시판 글 쓰기 </h4><br/>
	나중에 이쁘게 만드시오 <br/><br/>
	<form name='frm' method='post'  id='frm' >
	제  목 : <input type='text' name='title'><br/><br/>
	내  용 : <textarea rows='10' cols='40' name='content'></textarea><br/><br/>
	<input type='hidden' name='memid' value='dpdms403'>
	<input type='hidden' name='revImg' value='revimg'>
	<input type='button' id='btn' name='btn' value='작성'>
	<input type='reset' value='취소'>
	</form>

</body>
</html>