<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />
<style type="text/css">
button {
	border: 0;
	background-color: white;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script> 
<script type="text/javascript" src="/bloSSOME2/member/js/menu.js"></script>
</head>
<body>
<jsp:include page="../bloMain/mainHeader.jsp"></jsp:include>
<br/>
<br/>
<br/>
<!-- info.member?cmd=view info.member?cmd=add-->
<center>
	<button class="btn" id="btn1"><img class="btn-img" src="/bloSSOME2/member/img/basic2.png"></button><input type="hidden" value="1" />
	<button class="btn" id="btn2"><img class="btn-img" src="/bloSSOME2/member/img/add2.png"></button><input type="hidden" value="2" />
</center>
</body>
</html>