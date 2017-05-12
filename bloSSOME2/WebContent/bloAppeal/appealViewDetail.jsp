<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="blossome.vo.AppealVO" %>
<%
	// 1. 해당 게시물의 게시글번호값을 얻어온다
	AppealVO vo = (AppealVO)request.getAttribute("vo");
%>    
<!DOCTYPE html>
<html>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#delBtn").click(function(){
			var result = confirm("정말로 삭제하시겠습니까?");
			
			if(result){
				alert("삭제되었습니다.");
				$("#frm").attr("action","xx.appeal?cmd=appdelete");
				$("#frm").submit();
			}else{
				
			}
			
		});
	});
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 게시글 보기 </title>
</head>
<body> 
<%-- <jsp:include page="../bloMain/header.jsp" flush="false"/> --%>
	<%if(vo != null){ %>
	<h4> 게시판 글 보기 </h4><br/>
	<table border="1" bordercolor="red">
	<tr>
		<td> 제  목 : </td>
		<td><%= vo.getAppTitle() %></td>
	</tr>
	<tr>
		<td> 작성자 : </td>
		<td><%= vo.getMemName() %></td>
	</tr>
	<tr>
		<td> 작성일자 : </td>
		<td><%=vo.getAppDate() %></td>
	</tr>
	<tr>
		<td> 내  용 : </td>
		<td><%= vo.getAppContent() %></td>
	</tr> 
	<tr>
		<td colspan="3">
			<a href="appealView.jsp">목록보기</a>
			<a href="xxxxx.appeal?cmd=appmodi&appId=<%=vo.getMemId()%>">수정하기</a>
			
			<form id="frm" method="post">
			<input type="button" id="delBtn" name="delBtn" value="삭제하기" />
			<input type="hidden" value="<%=vo.getAppNum() %>"  name="appId"/>
			</form>
		</td>
	</tr>
	</table>
	<%} %>
	

<%-- <jsp:include page="../bloMain/footer.jsp" flush="false"/> --%>
</body>
</html>