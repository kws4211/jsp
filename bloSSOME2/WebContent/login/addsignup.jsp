<script type="text/javascript" src="/bloSSOME2/lib/jquery-3.2.1.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 


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
<%-- 		<% --%>
<!-- // 		String input_id = (String)session.getAttribute("id");  -->
<!-- // 		String input_open = (String)session.getAttribute("open");  -->
<!-- // 		String input_password = (String)session.getAttribute("password");  -->
<!-- // 		String input_confirm = (String)session.getAttribute("confirm");  -->
<!-- // 		String input_question = (String)session.getAttribute("question");  -->
<!-- // 		String input_answer = (String)session.getAttribute("answer");  -->
<!-- // 		String input_nickname = (String)session.getAttribute("nickname");  -->
<!-- // 		String input_name = (String)session.getAttribute("name");  -->
<!-- // 		String input_filebutton = (String)session.getAttribute("filebutton");  -->
<!-- // 		String input_year = (String)session.getAttribute("year");  -->
<!-- // 		String input_mon = (String)session.getAttribute("mon");  -->
<!-- // 		String input_yo = (String)session.getAttribute("yo");  -->
<!-- // 		String input_tel_first = (String)session.getAttribute("tel_first");  -->
<!-- // 		String input_area = (String)session.getAttribute("area");  -->
<!-- // 		String input_email = (String)session.getAttribute("email");  -->

		
<!-- 		//정규화 -->
<!-- // 		window.onload = function(){ -->
<!-- // 			var id = document.getElementById("id"); //id 정규화 -->
<!-- // 			id.onblur = function(){ -->
<!-- // 				id = /^[a-z]+[a-z0-9]{5,19}$/g; -->
<!-- // 				var nid = document.frm.id.value; -->
<!-- // 				if(!id.test(nid)){ -->
<!-- // 					alert("잘못된 아이디 형식입니다"); -->
<!-- // 				} //if문 끝 -->
<!-- // 			} -->
			
<!-- // 			var pass = document.getElementById("password"); -->
<!-- // 			pass.onblur = function(){ -->
<!-- // 				pass = /^[A-Za-z0-9]{6,12}$/; -->
<!-- // 				var npass = document.frm.pass.value; -->
<!-- // 				if(!pass.test(npass)){ -->
<!-- // 					alert("잘못된 패스워드입니다"); -->
<!-- // 				} //if문 끝 -->
<!-- // 			} -->
			
<!-- // 			============================정규화 추가 -->
			
<!-- // 		} -->
		
<!-- 		</script> -->
		
		
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
					<form class="form-horizontal" method="post" action="#" onsubmit="return input_check_func()">
						
						

						<div class="form-group">
							<label for="blood" class="cols-sm-2 control-label">Your Blood/혈액형</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									</select>
									<select><option id="blood" value="A형">A형</option>
									<option id="blood" value="B형">B형</option>
									<option id="blood" value="O형">O형</option>
									<option id="blood" value="AB형">AB형</option>
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
									<select><option id="religion" value="기독교">기독교</option>
									<option id="religion" value="불교">불교</option>
									<option id="religion" value="천주교">천주교</option>
									<option id="religion" value="무교">무교</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="height" class="cols-sm-2 control-label">Your Height/키</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<select><option id="height" value="140">150cm이하</option>
									<option id="height" value="150">150~159cm</option>
									<option id="height" value="160">160~169cm</option>
									<option id="height" value="170">170~179cm</option>
									<option id="height" value="180">180~189cm</option>
									<option id="height" value="190">190cm이상</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="ability" class="cols-sm-2 control-label">Your Ability/학력</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<select><option id="ability" value="중졸">중졸이하</option>
									<option id="ability" value="고졸">고졸이상</option>
									<option id="ability" value="대졸">대졸이상</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="gender" class="cols-sm-2 control-label">Your Gender/성별</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'gender-1' name='gender-1' value="남자">남자
									<input type = "radio"  id= 'gender-1' name='gender-1' value="여자"> 여자
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="gender2" class="cols-sm-2 control-label">interest Gender/상대방 성별</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'gender_2' name='gender_2' value="남자">남자
									<input type = "radio"  id= 'gender_2' name='gender_2' value="여자"> 여자
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="gender2" class="cols-sm-2 control-label">salary/연봉</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<select><option id="salary" value="1000이하">1000이하</option>
									<option id="salary" value="1000이상">1000이상</option>
									<option id="salary" value="2000이상">2000이상</option>
									<option id="salary" value="3000이상">3000이상</option>
									<option id="salary" value="4000이상">4000이상</option>
									<option id="salary" value="5000이상">5000이상</option>
									<option id="salary" value="6000이상">6000이상</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="gender2" class="cols-sm-2 control-label">property/재산</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<select><option id="property" value="1000이하">1000이하</option>
									<option id="property" value="1000이상">1000이상</option>
									<option id="property" value="2000이상">2000이상</option>
									<option id="property" value="3000이상">3000이상</option>
									<option id="property" value="4000이상">4000이상</option>
									<option id="property" value="5000이상">5000이상</option>
									<option id="property" value="6000이상">6000이상</option>
									<option id="property" value="7000이상">7000이상</option>
									<option id="property" value="8000이상">8000이상</option>
									<option id="property" value="9000이상">9000이상</option>
									</select>
								</div>
							</div>
						</div>
						

						<div class="form-group ">
							<button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
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