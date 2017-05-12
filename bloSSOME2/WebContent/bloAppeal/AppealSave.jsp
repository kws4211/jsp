<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.AppealVO" %>

<%
	// 0. 넘겨받는 한글 깨지지 않도록 지정
	request.setCharacterEncoding("utf-8");
	AppealVO vo = (AppealVO)request.getAttribute("vo");

	//3. 페이지 변경 (url변경, )
	response.sendRedirect("xx.appeal?cmd=appealView&appId=" + vo.getAppNum());
%>
