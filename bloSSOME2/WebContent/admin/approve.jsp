<%@page import="blossome.vo.MemVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	// 회원승인 리스트
	List<MemVO> list = (List<MemVO>)request.getAttribute("list");
	// 회원승인 총페이지수
	int total = (int)request.getAttribute("total"); 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/bloSSOME2/admin/css/admatching.css">
<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />

<!-- Optional theme -->
<link href="/bloSSOME2/admin/css/approve.css" rel="stylesheet">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
<script type="text/javascript" src="/bloSSOME2/admin/js/approve.js"></script>


</head>
<body>
	<jsp:include page="adheader.jsp"></jsp:include>
	<div class="container">
		<div class="row col-md-6 col-md-offset-2 custyle">
		<h2>회원승인</h2>
		<form id="frmapprove2">
			<table class="table table-striped custab">
				<thead>
					<tr>
						<th>회원이름</th>
						<th>아이디</th>
						<th>가입일시</th>
						<th class="text-center"></th>
					</tr>
				</thead>
				<%if(list.size() != 0){%>
				<%for(MemVO vo : list){%>
				
				<tr>
					<td><%=vo.getMemName()%></td>
					<td><%=vo.getMemId()%></td>
					<td><%=vo.getMemSignup()%></td>
					<td class="text-center">
					
					<a class='btn-sm btn-info btndetail'
						href="#"><span class="glyphicon glyphicon-user"></span>상세보기</a>
						<input type="hidden" id="memId" value="<%=vo.getMemId() %>" />
						</td>
				</tr>
				
				<%} %>
				<%}else{ %>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<%} %>
				
				<tr>
				
					<td colspan="5" id="page">
						<!-- 페이지생성 -->
						<%for(int i = 1 ; i <= total ; i++){ %>
							<a href="index.admin?cmd=approve&pnum=<%=i %>">&#171;<%=i %>&#187;</a>
						<%} %>
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>

</body>
</html>