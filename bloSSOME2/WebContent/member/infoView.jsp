<%@page import="blossome.vo.MemVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% MemVO vo = (MemVO)request.getAttribute("vo"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(vo == null) {
	response.sendRedirect("index.member?cmd=menu");
}else{ %>

여기에 출력

<%} %>
</body>
</html>