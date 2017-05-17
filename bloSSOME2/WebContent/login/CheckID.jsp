<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id = (String)request.getAttribute("id"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/bloSSOME2/lib/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/login/js/popup.js"></script>
<script type="text/javascript" src="/bloSSOME2/login/js/signup.js"></script>
</head>
<body>

입력된 ID : <input type="text" id="check">
<input type="button" id="btnCheck" value="검사">
<div id="msg"></div>
<input type="hidden" id="btnclose" value="넣기">

</body>
</html>