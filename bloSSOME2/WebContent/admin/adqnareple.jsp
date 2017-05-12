<%@page import="blossome.vo.QnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	QnaVO vo = (QnaVO)request.getAttribute("qnavo");
	int a = vo.getQnaState();
	String type = "";
	if(a == 1){	type="1:1문의";	}else{ type="신고"; }
%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Insert title here</title> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/admin/js/adqna.js"></script>
<!-- </head> -->
<!-- <body> -->
<form name="frmreple" id="frmreple">
<div>번호 : <%=vo.getQnaNum() %></div>
<div>유형 : <%=type %></div>
<div>문의 내용</div>
<textarea rows="10" cols="60" readonly="readonly"><%=vo.getQuestionContent() %></textarea>
<div>답변</div>
<textarea name="reple" rows="10" cols="60"></textarea>
<input type="hidden" name="num" value="<%=vo.getQnaNum()%>"/>
</form>
<br/>
<input type="button" id="rebtn" value="넣기"/>
<!-- </body> -->
<!-- </html> -->