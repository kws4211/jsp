<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.List"%>
<%@ page import="blossome.vo.AppealVO" %>
<%
   // 1. �ش� ���̵��� ������ ���´�
   List<AppealVO> list = (List<AppealVO>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> �Խñ� ��� </title>
</head>

<BODY>

	<h3> �Խ��� ��� </h3>
	
	<table border="1" bordercolor="darkblue">
	<tr>
		<td> �۹�ȣ </td>
		<td> �� �� </td>
		<td> �ۼ��� </td>
		<td> �ۼ��� </td>
		<td> ��ȸ�� </td>
	</tr>
	

	<% if( list.isEmpty() ) { %>
		<tr><td colspan="5"> ��ϵ� �Խù��� �����ϴ�. </td></tr>
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
				<a href="BoardInputForm.jsp">�۾���</a>
			</td>
		</tr>
	</table>
				<%-- <% for(int i=1; i<= totalPageCount; i++){ %>
   		   <a href="BoardList.jsp?page=<%=i%>">[<%= i %>]</a>
  		 <% } // end of for %> --%>
   <hr/>
	
</BODY>
</HTML>
