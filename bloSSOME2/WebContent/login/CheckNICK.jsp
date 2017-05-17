<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String nick = (String)request.getAttribute("nick"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/bloSSOME2/lib/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/login/js/popup.js"></script>
</head>
<body>

입력된 NICK : <input type="text" id="Check">
<input type="button" id="btnNick" value="검사">
<div id="nsg"></div>
<input type="hidden" id="btnClose" value="넣기">

</body>
</html>