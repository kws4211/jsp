<%@page import="blossome.vo.MsgVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% List<MsgVO> list = (List<MsgVO>)request.getAttribute("list"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/message/js/Msg.js"></script>

</head>
<body>
<jsp:include page="../message/msgheader.jsp"></jsp:include>
	<div class="container">
		<div class="row col-md-6 col-md-offset-2 custyle">
		<h2>받은 쪽지함</h2>
			<table class="table table-striped custab">
				<thead>
					<tr>
						<th>번호</th>
						<th>보낸 ID</th>
						<th>이름</th>
						<th>상태</th>
					</tr>
				</thead>
				
				<%if(list.size() != 0){ %>
					<%for(MsgVO vo : list) {%>
					<tr>
						<td><%=vo.getMsgNum() %></td>
						<td><%=vo.getMemId() %></td>
						<td><%=vo.getMsgName() %></td>
						<!-- if문으로 상태에 따라 다르게 출력 -->
						<td>
							<%if(vo.getMsgState()==2){ %>
							<a href="#" class="btn btn-danger btn-xs">
								<span class="glyphicon glyphicon-remove"></span>읽지않음
							</a>
							<%}else{ %>
							<a href="#" class="btn btn-info btn-xs">
								<span class="glyphicon glyphicon-edit" ></span>읽음
							</a>	
							<%} %>
						<input type="hidden" id="num" value="<%=vo.getMsgNum() %>"/>
						</td>
					</tr>
					<%}%>
				<%}else{ %>
				
				<%} %>
			</table>
		</div>
	</div>
</body>
</html>