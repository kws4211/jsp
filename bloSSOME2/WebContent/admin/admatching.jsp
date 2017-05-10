<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/bloSSOME2/admin/css/admatching.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script type="text/javascript" src="/bloSSOME2/admin/js/admatching.js"></script>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div class="container">
		<div class="row col-md-6 col-md-offset-2 custyle">
		<h2>매칭관리</h2>
			<table class="table table-striped custab">
				<thead>
					<tr>
						<th class="text-center">매칭번호</th>
						<th class="text-center">ID1</th>
						<th class="text-center">이름</th>
						<th class="text-center">ID2</th>
						<th class="text-center">이름</th>
						<th class="text-center">매칭날짜</th>
						<th class="text-center">해지</th>
					</tr>
				</thead>
				<!-- 추가되는 부분 for문 돌릴부분 -->
				<tr>
					<td>0001</td>
					<td>dnwks78</td>
					<td>모시기</td>
					<td>ghdrld34</td>
					<td>홍씨</td>
					<td>2017/05/10</td>
					<td>
						<a href="#" class="btn btn-danger btn-xs">
							<span class="glyphicon glyphicon-remove" ></span>매칭해제
						</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>