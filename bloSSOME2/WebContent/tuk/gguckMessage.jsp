<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="blossome.vo.TukVO"%>
<%
	TukVO vo = (TukVO)request.getAttribute("tukvo");
%>
<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/tuk/js/tuk.js"></script>


<textarea rows="10" cols="50"></textarea>      <textarea rows="10" cols="50"></textarea>
<br/>
<input type="button" id="rebtn" value="쪽지보내기"/>
