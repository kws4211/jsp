<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="blossome.vo.ReviewVO" %>

<%
	// 0. 넘겨받는 데이타의 한글 처리
	request.setCharacterEncoding("UTF-8");
	String revId = (String)request.getAttribute("revId");
%>

<%
	// 2. Service에 update() 호출하여 레코드 수정
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판글수정</title>
</head>
<body>
 
<%  
    		response.sendRedirect("xx.review?cmd=reviewView&revId=" + revId);
    %> 
	

</body>
</html>