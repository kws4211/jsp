<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% // 1. 이전 화면에서 넘겨받은 데이타
	String que = request.getParameter("que");

  //2. 다시 화면으로 보낼 데이터 구성
	String result = "";
  
  	result += "{";
  	result += "'first : " + que;
  	result += "}";
  	System.out.println(result);
	out.write(result);
  

%>