<%@page import="blossome.vo.QnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% QnaVO vo = (QnaVO)request.getAttribute("qnavo"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/admin/js/adqnareple.js"></script>
</head>
<body>
<textarea id="text" rows="10" cols="50"><%=vo.getQuestionContent() %></textarea><textarea rows="10" cols="50"></textarea>
<br/>
<input type="button" id="rebtn" value="넣기"/>
</body>
</html>