<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.ReviewVO" %>

<%
	// 0. 넘겨받는 한글 깨지지 않도록 지정
	request.setCharacterEncoding("utf-8");
ReviewVO vo = (ReviewVO)request.getAttribute("vo");

	//3. 페이지 변경 (url변경, )
	response.sendRedirect("xx.review?cmd=reviewView&revId=" + vo.getRevNum());
%>
