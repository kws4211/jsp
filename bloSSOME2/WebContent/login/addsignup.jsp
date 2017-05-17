<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id = (String)request.getAttribute("id"); %>

<script type="text/javascript" src="/bloSSOME2/lib/jquery-3.2.1.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="/bloSSOME2/login/css/signup.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="/bloSSOME2/login/css/signup.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Add Signup</title>

	</head>
	<body>
	
	
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">추가정보입력</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="index.login?cmd=inmemsucc" onsubmit="return input_check_func()" name="frm" enctype="multipart/form-data">
						<input type="hidden" id="id" name="id" value="<%=id%>"/>
						

						<div class="form-group">
							<label for="blood" class="cols-sm-2 control-label">Your Blood/혈액형</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									</select>
									<select name="blood"><option value="A">A형</option>
									<option value="B">B형</option>
									<option value="O">O형</option>
									<option value="AB">AB형</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="hobby" class="cols-sm-2 control-label">Your Hobby/취미</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="hobby" id="hobby"  placeholder="Enter your Hobby"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="religion" class="cols-sm-2 control-label">Your Religion/종교</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									</select>
									<select name="religion"><option value="기독교">기독교</option>
									<option value="불교">불교</option>
									<option value="천주교">천주교</option>
									<option value="기타">기타</option>
									<option value="무교">무교</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your File/사진</label>
							<!-- File Button --> 
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
								    <input id="file" name="file" class="input-file" type="file">
							  </div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="height" class="cols-sm-2 control-label">Your Height/키</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="height" id="height"  placeholder="Enter your Height"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="ability" class="cols-sm-2 control-label">Your Ability/학력</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<select name="ability"><option value="중졸">중졸이하</option>
									<option value="고졸">고졸이상</option>
									<option value="대졸">대졸이상</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="gender" class="cols-sm-2 control-label">Your Gender/성별</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'gender_m' name='gender' value="남">남
									<input type = "radio"  id= 'gender_w' name='gender' value="여"> 여
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="gender2" class="cols-sm-2 control-label">interest Gender/상대방 성별</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'favorgender_m' name='favorgender' value="남">남
									<input type = "radio"  id= 'favorgender_w' name='favorgender' value="여"> 여
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="gender2" class="cols-sm-2 control-label">Your salary/연봉</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="salary" id="salary"  placeholder="Enter your Salary"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="gender2" class="cols-sm-2 control-label">Your property/재산</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="property" id="property"  placeholder="Enter your Property"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="gender2" class="cols-sm-2 control-label">Your job/직업</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="job" id="job"  placeholder="job"/>
								</div>
							</div>
						</div>
						

						<div class="form-group ">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" id="addsignup">추가회원가입 완료</button>
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" id="addcancel"><a href="index.blossom">추가 안함</a></button>
						</div>
						<div class="Addlogin-register">
				            <a href="index.php">AddLogin</a>
				         </div>
					</form>
				</div>
			</div>
		</div>

<!-- 		<script type="text/javascript" src="assets/js/bootstrap.js"></script> -->
	</body>
</html>