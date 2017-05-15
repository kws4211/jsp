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
받은 메시지 출력 부분
<%if(list.size() > 0){ %>
	<table>
		<tr>
			<th>번호</th>
			<th>보낸 ID</th>
			<th>이름</th>
			<th>상태</th>
		</tr>
		<tr>
		<%for(MsgVO vo : list) {%>
			<td><%=vo.getMsgNum() %></td>
			<td><%=vo.getMemId() %></td>
			<td><%=vo.getMsgName() %></td>
			<%if(vo.getMsgState() == 2){ %>
				<td>읽지 않음</td>
			<%}else{ %>
				<td>읽음</td>
			<%} %>
		<%} %>
		</tr>
	</table>
<%}else{ %>
받은 쪽지가 없습니다.
<%} %>

</body>
</html>