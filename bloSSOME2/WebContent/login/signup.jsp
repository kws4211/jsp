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

		<title>Signup</title>
		<%
		String input_id = (String)session.getAttribute("id"); 
		String input_open = (String)session.getAttribute("open"); 
		String input_password = (String)session.getAttribute("password"); 
		String input_confirm = (String)session.getAttribute("confirm"); 
		String input_question = (String)session.getAttribute("question"); 
		String input_answer = (String)session.getAttribute("answer"); 
		String input_nickname = (String)session.getAttribute("nickname"); 
		String input_name = (String)session.getAttribute("name"); 
		String input_filebutton = (String)session.getAttribute("filebutton"); 
		String input_year = (String)session.getAttribute("year"); 
		String input_mon = (String)session.getAttribute("mon"); 
		String input_yo = (String)session.getAttribute("yo"); 
		String input_tel_first = (String)session.getAttribute("tel_first"); 
		String input_area = (String)session.getAttribute("area"); 
		String input_email = (String)session.getAttribute("email"); 
		
		%>
<!-- 		<script type="text/javascript"> -->
<!-- 		function input_check_func(){ -->
<!-- 			var input_open = document.getElementById('open').value; -->
<!-- 			var input_id = document.getElementById('id').value; -->
<!-- 			var input_password = document.getElementById('password').value; -->
<!-- 			var input_confirm = document.getElementById('confirm').value; -->
<!-- 			var input_question = document.getElementById('question').value; -->
<!-- 			var input_answer = document.getElementById('answer').value; -->
<!-- 			var input_nickname = document.getElementById('nickname').value; -->
<!-- 			var input_name = document.getElementById('name').value; -->
<!-- 			var input_filebutton = document.getElementById('filebutton').value; -->
<!-- 			var input_year = document.getElementById('year').value; -->
<!-- 			var input_mon = document.getElementById('mon').value; -->
<!-- 			var input_yo = document.getElementById('yo').value; -->
<!-- 			var input_tel_first = document.getElementById('tel-first').value; -->
<!-- 			var input_area = document.getElementById('area').value; -->
<!-- 			var input_email = document.getElementById('email').value; -->
<!-- 			var input_blood = document.getElementById('blood').value; -->
<!-- 			var input_hobby = document.getElementById('hobby').value; -->
<!-- 			var input_religion = document.getElementById('religion').value; -->
<!-- 			var input_height = document.getElementById('height').value; -->
<!-- 			var input_ability = document.getElementById('ability').value; -->
<!-- 			var input_gender_1 = document.getElementById('gender-1').value; -->
<!-- 			var input_gender_2 = document.getElementById('gender-2').value; -->
			
<!-- 			if(input_id == null || input_name == null || input_nickname == null || input_password == null || input_year == null || -->
<!-- 				input_mon == null || input_yo == null || input_tel_first == null ||input_area == null ||input_email == null ||  -->
<!-- 				input_id == "" || input_name == "" || input_nickname == "" || input_password == "" || input_year == "" || -->
<!-- 				input_mon == "" || input_yo == "" || input_tel_first == "" || input_area == "" ||input_email == "" ||input_open == "" ){ -->
<!-- 				alert("필수입력창을 입력하세요"); -->
<!-- 				return false; -->
<!-- 			}else{ -->
<!-- 				return ture; -->
<!-- 			} -->
			
<!-- 		} -->
		
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
	
	<%if(input_id != null && input_name != null && input_nickname != null && input_password != null && input_year != null &&
			input_mon != null && input_yo != null && input_tel_first != null && input_area != null && input_email != null && 
			input_id != "" && input_name != "" && input_nickname != "" && input_password != "" && input_year != "" &&
			input_mon != "" && input_yo != "" && input_tel_first != "" && input_area != "" && input_email != "" && input_open != ""){ %>
		<%response.sendRedirect("index.blossom"); %>
	<%} %>
	
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">회원가입</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#" onsubmit="return input_check_func()">
						
						<div class="form-group">
							<label for="view" class="cols-sm-2 control-label">Your View/공개여부</label>
							<div class="cols-sm-10">
								<div class="input-group">
								<!-- 앞에그림 -->
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'open' name='open' value="공개">공개
									<input type = "radio"  id= 'open' name='open' value="비공개"> 비공개
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id" class="cols-sm-2 control-label">Your Id/아이디</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="id" id="id"  placeholder="Enter your Id"/>
									<input type="submit"id = 'input' value="중복확인"/>
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
							<label for="name" class="cols-sm-2 control-label">Your Name/이름</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
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
									<select><option id="year" value="1990년">1990년</option>
									</select>
									<select><option id="mon" value="1월">1월</option>
											<option id="mon" value="2월">2월</option>
											<option id="mon" value="3월">3월</option>
											<option id="mon" value="4월">4월</option>
											<option id="mon" value="5월">5월</option>
											<option id="mon" value="6월">6월</option>
											<option id="mon" value="7월">7월</option>
											<option id="mon" value="8월">8월</option>
											<option id="mon" value="9월">9월</option>
											<option id="mon" value="10월">10월</option>
											<option id="mon" value="11월">11월</option>
											<option id="mon" value="12월">12월</option>
									</select>
									<select><option id="yo" value="1일">1일</option>
									<option id="yo" value="2일">2일
									<option id="yo" value="3일">3일
									<option id="yo" value="4일">4일
									<option id="yo" value="5">5일
									<option id="yo" value="6일">6일
									<option id="yo" value="7일">7일
									<option id="yo" value="8일">8일
									<option id="yo" value="9일">9일
									<option id="yo" value="10일">10
									<option id="yo" value="11일">11일
									<option id="yo" value="12일">12일
									<option id="yo" value="13일">13일
									<option id="yo" value="14일">14일
									<option id="yo" value="15일">15일
									<option id="yo" value="16일">16일
									<option id="yo" value="17일">17일
									<option id="yo" value="18일">18일
									<option id="yo" value="19일">19일
									<option id="yo" value="20일">20일
									<option id="yo" value="21일">21일
									<option id="yo" value="22일">22일
									<option id="yo" value="23일">23일
									<option id="yo" value="24일">24일
									<option id="yo" value="25일">25일
									<option id="yo" value="26일">26일
									<option id="yo" value="27일">27일
									<option id="yo" value="28일">28일
									<option id="yo" value="29일">29일
									<option id="yo" value="30일">30일
									<option id="yo" value="31일">31일
									</select>
									<div id='result'></div>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="tel" class="cols-sm-2 control-label">Your Tel/전화번호</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									</select>
									<input name="tel010" type="text" id="tel010" size="3" />
                				  <span class="text1">                  - 
             				     <input name="tel" type="text" id="tel" size="5" />
            	   				       -
                      <input name="tel2" type="text" id="tel2" size="5" />
              	    </span></td>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="area" class="cols-sm-2 control-label">Your Area/지역</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<select><option id="area" value="서울">서울</option>
									<option id="area" value="경기">경기</option>
									<option id="area" value="강원">강원</option>
									<option id="area" value="충북">충북</option>
									<option id="area" value="충남">충남</option>
									<option id="area" value="전북">전북</option>
									<option id="area" value="전남">전남</option>
									<option id="area" value="경북">경북</option>
									<option id="area" value="경남">경남</option>
									<option id="area" value="제주">제주</option>
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