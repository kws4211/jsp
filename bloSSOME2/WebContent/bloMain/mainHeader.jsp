<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/bloSSOME2/bloMain/css/header.css">
</head>
<body>
	<div class="header">
		<!-- 이미지 들어가야 할 곳 -->
		<div class="MainName">BloSSOME</div>
		<div class="Menu">
			<ul>
				<li><a href="index.blossom">HOME</a></li>
				<%if(session.getAttribute("id") == null) {%>
					<li><a href="index.login?cmd=login">Login</a></li>
                <%}else{ %>
                	<li>
                		<span class="submenu"><%=session.getAttribute("id") %></span>
                		<ul>
                			<li><a href="index.msg">쪽지함</a></li>
                			<li><a href="index.member?cmd=memqna">1:1문의</a></li>
                			<li><a href="">회원정보수정</a></li>
                		</ul>
                	</li>
					<li><a href="index.login?cmd=logout">Logout</a></li>
				<%} %>
				<li><a href="index.find">이상형찾기</a></li>
				<li><a href="index.appeal">어필게시판</a></li>
				<li><a href="index.review">후기</a></li>
				<li><a href="#">이상형월드컵</a></li>
			</ul>
		</div>
	</div>
	
</body>
</html>