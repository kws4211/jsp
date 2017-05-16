<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id = (String)request.getAttribute("id"); %>
<% String name = (String)request.getAttribute("name"); %>
<script type="text/javascript" src="/bloSSOME2/tuk/js/tuk.js"></script>
<%=id %>/<%=name %><br/>
<form method="post" id="frm">
<textarea name="con" rows="10" cols="50"></textarea>
<input type="hidden" name="id" value="<%=id%>"/> 
<br/>
</form>
<input type="button" id="rebtn" value="쪽지보내기"/>
