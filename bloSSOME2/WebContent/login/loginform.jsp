<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<title></title>
<%String id = (String)session.getAttribute("id"); %>
<link rel="stylesheet" type="text/css" href="/bloSSOME2/login/css/loginform.css">

<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="/bloSSOME2/login/css/loginform.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Website Font style -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		
<script type="text/javascript" src="/bloSSOME2/lib/jquery-3.2.1.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="/bloSSOME2/login/js/loginform.js"></script>

</head>
<body>
	<%if(id != null){ %>
		<jsp:forward page="index.blossom?cmd=main"></jsp:forward>
	<%} %>
	
	<div class="container">
		<div class="login-container">
			<form method="post" id="frm">
				<input name="user" type="text" placeholder="username" style="margin-bottom: 10px">
				<input name="pw" type="password" placeholder="password" style="margin-bottom: 10px">
				<button class="btn btn-info btn-block login" type="submit" id='login' style="margin-bottom: 30px">Login</button>
				<input type='button' id='search' value="아이디/비밀번호 찾기" />
			</form>
		</div>
	</div>
</body>
</html>