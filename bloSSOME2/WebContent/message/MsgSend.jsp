<%@page import="blossome.vo.MsgVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% List<MsgVO> list = (List<MsgVO>)request.getAttribute("list"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
보낸 메시지 출력 부분
<%if(list.size() > 0){ %>
	<%for(MsgVO vo : list) {%>
		리스트 값 출력 부분
	<%} %>
<%}else{ %>
디비는 정상적으로 갔다왔구먼...
<%} %>

</body>
</html>