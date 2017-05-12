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

		<title>Admin</title>
		
		<script type="text/javascript">
		function input_check_func(){
			var input_open = document.getElementById('open').value;
			var input_noopen = document.getElementById('noopen').value;
			var input_id = document.getElementById('id').value;
			var input_password = document.getElementById('password').value;
			var input_confirm = document.getElementById('confirm').value;
			var input_question = document.getElementById('question').value;
			var input_answer = document.getElementById('answer').value;
			var input_nickname = document.getElementById('nickname').value;
			var input_name = document.getElementById('name').value;
			var input_filebutton = document.getElementById('filebutton').value;
			var input_year = document.getElementById('year').value;
			var input_mon = document.getElementById('mon').value;
			var input_yo = document.getElementById('yo').value;
			var input_tel_first = document.getElementById('tel-first').value;
			var input_area = document.getElementById('area').value;
			var input_email = document.getElementById('email').value;
			var input_blood = document.getElementById('blood').value;
			var input_hobby = document.getElementById('hobby').value;
			var input_religion = document.getElementById('religion').value;
			var input_height = document.getElementById('height').value;
			var input_ability = document.getElementById('ability').value;
			var input_gender_1 = document.getElementById('gender-1').value;
			var input_gender_2 = document.getElementById('gender-2').value;
			
			if(input_id == null || input_name == null || input_nickname == null || input_password == null || input_year == null ||
				input_mon == null || input_yo == null || input_tel_first == null ||input_area == null ||input_email == null ||
				input_open == null || input_noopen == null || input_id == "" || input_name == "" || input_nickname == "" || 
				input_password == "" || input_year == "" ||input_mon == "" || input_yo == "" || input_tel_first == "" ||
				input_area == "" ||input_email == "" ||input_open == "" || input_noopen == ""){
				alert("필수입력창을 입력하세요");
				return false;
			}else{
				return ture;
			}
			
		}
		
		
		</script>
		
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">회원가입</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">
						
						<div class="form-group">
							<label for="view" class="cols-sm-2 control-label">Your View/공개여부</label>
							<div class="cols-sm-10">
								<div class="input-group">
								<!-- 앞에그림 -->
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'open' name='open' value="공개" href="/bloSSOME2/login/signup.jsp">공개
									<input type = "radio"  id= 'noopen' name='noopen' value="비공개" href="/bloSSOME2/login/formnoopen.jsp"> 비공개
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id" class="cols-sm-2 control-label">Your Id/아이디</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="id" id="id"  placeholder="Enter your Id"/>
									<input type="submit" id = 'input' value="중복확인"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name/이름</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="age" class="cols-sm-2 control-label">Your Age/나이</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="age" id="age"  placeholder="Enter your Age"/>
								</div>
							</div>
						</div>
						
						
						
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password/비밀번호</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password/비밀번호 확인</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Your Question/비밀번호 확인 질문</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="question" id="question"  placeholder="Confirm your Question"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Your Answer/비밀번호 확인 답변</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="answer" id="answer"  placeholder="Confirm your Answer"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="nickname" class="cols-sm-2 control-label">Your Nickname/닉네임</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="nickname" id="nickname"  placeholder="Enter your Nickname"/>
									<input type="submit"id = 'input' value="중복확인"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Your File/사진</label>
						<!-- File Button --> 
						<div class="cols-sm-10">
						<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
						    <input id="filebutton" name="filebutton" class="input-file" type="file">
						  </div>
						</div>
					</div>
						
						
						<div class="form-group">
							<label for="birthday" class="cols-sm-2 control-label">Your Birthday/생일</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<select><option id="year" name="year" value="1990년">1990년</option>
									</select>
									<select><option id="mon" name="mon" value="1월">1월</option>
									</select>
									<select><option id="yo" name="yo" value="1일">1일</option>
									</select>
									<div id='result'></div>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="gender" class="cols-sm-2 control-label">Your Gender/성별</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'gender-1' name='gender-1' value="남자">남자
									<input type = "radio"  id= 'gender-2' name='gender-2' value="여자"> 여자
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="tel" class="cols-sm-2 control-label">Your Tel/전화번호</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									</select>
									<select><option id="tel-first" value="010">010</option>
									<option id="tel-first" name="tel-first" value="011">011</option>
									<option id="tel-first" name="tel-first" value="017">017</option>
									<option id="tel-first" name="tel-first" value="018">018</option>
									</select>
									<input type="text" class="form-control" name="tel-second" id="tel-second" placeholder="Enter your Tel"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="area" class="cols-sm-2 control-label">Your Area/지역</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<select><option id="Area" value="서울">서울</option>
									<option id="area" name="blood" value="경기">경기</option>
									<option id="area" name="blood" value="강원">강원</option>
									<option id="area" name="blood" value="충북">충북</option>
									<option id="area" name="blood" value="충남">충남</option>
									<option id="area" name="blood" value="전북">전북</option>
									<option id="area" name="blood" value="전남">전남</option>
									<option id="area" name="blood" value="경북">경북</option>
									<option id="area" name="blood" value="경남">경남</option>
									<option id="area" name="blood" value="제주">제주</option>
									</select>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email/이메일</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="blood" class="cols-sm-2 control-label">Your Blood/혈액형</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									</select>
									<select><option id="blood" value="A형">A형</option>
									<option id="blood" name="blood" value="B형">B형</option>
									<option id="blood" name="blood" value="O형">O형</option>
									<option id="blood" name="blood" value="AB형">AB형</option>
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
									<option id="religion" name="religion" value="불교">불교</option>
									<option id="religion" name="religion" value="천주교">천주교</option>
									<option id="religion" name="religion" value="무교">무교</option>
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
									<option id="height" name="height" value="150">150~159cm</option>
									<option id="height" name="height" value="160">160~169cm</option>
									<option id="height" name="height" value="170">170~179cm</option>
									<option id="height" name="height" value="180">180~189cm</option>
									<option id="height" name="height" value="190">190cm이상</option>
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
									<option id="ability" name="ability" value="고졸">고졸이상</option>
									<option id="ability" name="ability" value="대졸">대졸이상</option>
									</select>
								</div>
							</div>
						</div>
						
						
						
						<div class="form-group">
							<label for="gender2" class="cols-sm-2 control-label">Interest Gender/상대방 성별</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'gender_1' name='gender_1' value="남자">남자
									<input type = "radio"  id= 'gender_2' name='gender_2' value="여자"> 여자
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="salary" class="cols-sm-2 control-label">Interest Salary/상대방 연봉</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<select><option id="salary" value="1000만원 이하">1000만원 이하</option>
									<option id="salary" name="salary" value="1000만원 이상">1000만원 이상</option>
									<option id="salary" name="salary" value="2000만원 이상">2000만원 이상</option>
									<option id="salary" name="salary" value="3000만원 이상">3000만원 이상</option>
									<option id="salary" name="salary" value="4000만원 이상">4000만원 이상</option>
									<option id="salary" name="salary" value="5000만원 이상">5000만원 이상</option>
									<option id="salary" name="salary" value="6000만원 이상">6000만원 이상</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="property" class="cols-sm-2 control-label">Interest Property/상대방 재산</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<select><option id="property" value="1000만원 이하">1000만원 이하</option>
									<option id="property" name="property" value="1000만원 이상">1000만원 이상</option>
									<option id="property" name="property" value="2000만원 이상">2000만원 이상</option>
									<option id="property" name="property" value="3000만원 이상">3000만원 이상</option>
									<option id="property" name="property" value="4000만원 이상">4000만원 이상</option>
									<option id="property" name="property" value="5000만원 이상">5000만원 이상</option>
									<option id="property" name="property" value="6000만원 이상">6000만원 이상</option>
									</select>
								</div>
							</div>
						</div>
						

						<div class="form-group ">
							<button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
						</div>
						<div class="login-register">
				            <a href="index.php">Login</a>
				         </div>
					</form>
				</div>
			</div>
		</div>

<!-- 		<script type="text/javascript" src="assets/js/bootstrap.js"></script> -->
	</body>
</html>