<%@page import="blossome.vo.MsgVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% MsgVO vo = (MsgVO)request.getAttribute("vo"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	글번호 : <%=vo.getMsgNum() %> <br/>
	보낸사람ID : <%=vo.getMemId() %><br/>
	보낸사람이름 : <%=vo.getMsgName() %><br/>
	내용 : <%=vo.getMsgContent() %><br/>
</body>
</html>