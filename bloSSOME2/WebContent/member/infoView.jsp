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
<%if(vo == null) {%>
	비밀번호 오류
	<% response.setHeader("Refresh","1;URL=index.member?cmd=menu");
}else{ %>
	
	
<%} %>
</body>
</html>