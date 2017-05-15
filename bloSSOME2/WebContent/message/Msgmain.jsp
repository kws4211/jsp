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
<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/message/js/Msg.js"></script>

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
			<td><span id="num"><%=vo.getMsgNum() %></span></td>
			<td><%=vo.getMemId() %></td>
			<td><%=vo.getMsgName() %></td>
<%-- 			<a href="view.msg?cmd=view&num=<%=vo.getMsgNum() %>"> --%>
			<td><span id="link">
			<%if(vo.getMsgState() == 2){ %>
				읽지 않음
			<%}else{ %>
				읽음
			<%} %>
			</span></a></td>
		<%} %>
		</tr>
	</table>
<%}else{ %>
받은 쪽지가 없습니다.
<%} %>

</body>
</html>