<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script> 
<script type="text/javascript" src="/bloSSOME2/member/js/menu.js"></script>
    <%String sel = (String)request.getAttribute("sel"); %>
	비밀번호를 입력해 주세요<br/>
	<form id="frm" name="frm" method="post">
		<input type="password" name="pw" />
		<input type="hidden" id="sel" value="<%=sel %>"/>
		<input type="button" id="btn" value="보내기" />
	</form>
