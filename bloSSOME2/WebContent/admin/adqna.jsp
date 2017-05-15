<%@page import="blossome.vo.QnaVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<QnaVO> list = (List<QnaVO>)request.getAttribute("list"); %>
<% int total = (int)request.getAttribute("total"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/bloSSOME2/admin/css/admatching.css">
<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/admin/js/adqna.js"></script>

</head>
<body>
	<jsp:include page="adheader.jsp"></jsp:include>
	<div class="container">
		<div class="row col-md-6 col-md-offset-2 custyle">
		<h2>Q&A</h2>
			<table class="table table-striped custab">
				<thead>
					<tr>
						<th>번호</th>
						<th>유형</th>
						<th>작성자</th>
						<th>등록일</th>
						<th class="text-center">답변여부</th>
					</tr>
				</thead>
				<!-- 추가되는 부분 for문 돌릴부분 -->
				
				<%if(list.size() != 0){ %>
					<%for(QnaVO vo : list){ %>
					<% int a = vo.getQnaState();
						String type = "";
						if(a == 1){	type="1:1문의";	}else{ type="신고"; }%>
					<tr>
						<td><%=vo.getQnaNum() %></td>
						<td><%=type%></td>
						<td><%=vo.getMemId() %></td>
						<td><%=vo.getQnaDate() %></td>
						<!-- if문으로 상태에 따라 다르게 출력 -->
						<td>
							<%if(vo.getAnswerContent()==null){ %>
							<a href="#" class="btn btn-danger btn-xs">
								<span class="glyphicon glyphicon-remove"></span>답변대기중
							</a>
							<input type="hidden" class="qna" value="<%=vo.getQnaNum() %>" />
							<%}else{ %>
							<a href="#" class="btn btn-info btn-xs">
								<span class="glyphicon glyphicon-edit" ></span>답변완료
							</a>	
							<%} %>
						</td>
					</tr>
					<%}%>
				<%}else{ %>
				<tr>
					<td>0001</td>
					<td>신고</td>
					<td>질문이 없습니다</td>
					<td>2017/05/10</td>
					<td>
						<input type="hidden" id="qna" value="넘어가랏!" />
						<a href="#" class="btn btn-danger btn-xs">
							<span class="glyphicon glyphicon-remove" ></span>답변대기중
						</a>
					</td>
				</tr>
				<tr>
					<td>0001</td>
					<td>질문이 없습니다</td>
					<td>김모시기</td>
					<td>2017/05/10</td>
					<td>
						<a href="#" class="btn btn-info btn-xs">
							<span class="glyphicon glyphicon-edit" ></span>답변완료
						</a>
					</td>
				</tr>
				<%} %>
				<tr>
					<td colspan="5">
						<%for(int i = 1 ; i <= total ; i++){ %>
							<a href="index.admin?cmd=adqna&pnum=<%=i %>">&#171;<%=i %>&#187;</a>
						<%} %>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>