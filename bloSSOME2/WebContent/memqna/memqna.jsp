<%@page import="blossome.vo.QnaVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% List<QnaVO> list = (List<QnaVO>)request.getAttribute("list"); %>
<% String isnull = ""; %>
<% String state = ""; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/bloSSOME2/memqna/css/memqna.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/memqna/js/memqna.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
    	<!-- for문 사용으로 리스트 출력 -->
    	<%if(list.size() > 0){ %>
	    	<%for(QnaVO vo : list){ %>
	    		<!-- if문으로 문의 유형 선택후 신고or1:1문의 로 출력 -->
	    		<%if(vo.getQnaState() == 1){ %>
	    			<div class="badger-left badger-info" data-badger="1:1 질문"><%=vo.getQuestionContent() %></div>
	    			<%isnull = "1:1문의";%>
	    		<%}else{ %>
	    			<div class="badger-left badger-danger" data-badger="신고"><%=vo.getQuestionContent() %></div>
	    			<%isnull = "신고"; %>
	    		<%} %>
	    		<!-- if문으로 답변이 있을때 와 없을때 그리고 유형에 따라서 바꿈 -->
	    		<%if(vo.getAnswerContent() != null){ %>
	    			<%state = "badger-right badger-success"; %>
	    			<div class="<%=state %>" data-badger="<%=isnull %> 답변"><%=vo.getAnswerContent() %></div>
	    		<%}else{ %>
	    			<%state = "badger-right"; %>
	    			<div class="<%=state %>" data-badger="<%=isnull %> 답변">동록된 답변이 없습니다</div>
	    		<%} %>
	    	<%} %>
    	<%}else{ %>
	        <div class="badger-left badger-danger" data-badger="신고">신고 내용</div>
	        <div class="badger-left badger-info" data-badger="1:1 질문">1:1질문내용</div>
	        <div class="badger-right badger-success" data-badger="1:1 질문 답변o">1:1질문 답변내용</div>
	        <div class="badger-right" data-badger="1:1 질문 답변x">답변이 등록되지 않았습니다</div>
	        <div class="badger-right badger-success" data-badger="신고 답변내용o">신고 답변내용</div>
	        <div class="badger-right" data-badger="신고 답변내용x">답변이 등록되지 않았습니다</div>
        <%} %>
    </div>
    <div>
    	<!-- 페이지 번호 들어가는 곳 -->
    	1 2 3 4 5
    </div>
    <div>
    	<form id="memfrm">
    		<input type="hidden" name="id" value="<%=session.getAttribute("id") %>">
	    	<select name="qnachoice">
	    		<option>유형 선택</option>
	    		<option>1:1문의</option>
	    		<option>신고</option>
	    	</select>
	    	<textarea class="asd" name="qnacon" rows="5" cols="100%"></textarea>
	    	<button id="qnabtn">보내기</button>
    	</form>
    </div>
</div>
</body>
</html>