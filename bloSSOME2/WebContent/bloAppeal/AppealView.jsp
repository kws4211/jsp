<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.AppealVO" %>
<%
   // 1. 해당 아이디의 정보를 얻어온다
   List<AppealVO> list = (List<AppealVO>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 게시글 목록 </title>
</head>

<BODY>

	<h3> 게시판 목록 </h3>
	
	<table border="1" bordercolor="darkblue">
	<tr>
		<td> 글번호 </td>
		<td> 제 목 </td>
		<td> 작성자 </td>
		<td> 작성일 </td>
		<td> 조회수 </td>
	</tr>
	

	<% if( list.isEmpty() ) { %>
		<tr><td colspan="5"> 등록된 게시물이 없습니다. </td></tr>
	<% } else { %>
	
		<% for( AppealVO vo : list) { %>
		<tr>
			<td><%= vo.getAppNum() %></td>
			<td><a href="xxxxx.blossom?cmd=appdetail&appId=<%= vo.getAppNum() %>"><%= vo.getAppTitle() %></a></td>
			<td><%=vo.getMemName() %></td>		
			<td><%= vo.getAppDate() %></td>
			<td></td>
		</tr>
	<%} // end for %>
	<% } // end else %>
	
		<tr>
			<td colspan="5">
				<a href="BoardInputForm.jsp">글쓰기</a>
			</td>
		</tr>
	</table>
				<%-- <% for(int i=1; i<= totalPageCount; i++){ %>
   		   <a href="BoardList.jsp?page=<%=i%>">[<%= i %>]</a>
  		 <% } // end of for %> --%>
   <hr/>
	
</BODY>
</HTML>
