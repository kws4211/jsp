<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		<!-- Latest compiled and minified JavaScript -->
		<link rel="stylesheet" type="text/css" href="/bloSSOME2/login/css/signup.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="/bloSSOME2/login/css/signup.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		
		<link rel="stylesheet" href="/bloSSOME2/lib/alopex-ui-default.css" />

		<title>Signup</title>
		
		<script type="text/javascript" src="/bloSSOME2/lib/jquery-3.2.1.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<script type="text/javascript" src="/bloSSOME2/lib/alopex-ui.min.js"></script>
		<script type="text/javascript" src="/bloSSOME2/login/js/signup.js"></script>
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
					<form class="form-horizontal" method="post" onsubmit="return input_check_func()" name="frm">
						
						<div class="form-group">
							<label for="state" class="cols-sm-2 control-label">Your View/공개여부</label>
							<div class="cols-sm-10">
								<div class="input-group">
								<!-- 앞에그림 -->
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type = "radio"  id= 'state' name='state' value="공개">공개
									<input type = "radio"  id= 'state' name='state' value="비공개"> 비공개
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id" class="cols-sm-2 control-label">Your Id/아이디</label>
							<div class="cols-sm-10">
								<div class="input-group">
								<!-- 앞에그림 -->
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="id" id="id"  placeholder="Enter your Id"/>
									<input type="button" id = 'id_check' value="중복확인"/>
									<div id="idmessage" style="display:none;"></div>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="pass" class="cols-sm-2 control-label">Your Password/비밀번호</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="pass" id="pass"  placeholder="Enter your Password"/>
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
							<label for="nick" class="cols-sm-2 control-label">Your Nickname/닉네임</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="nick" id="nick"  placeholder="Enter your Nickname"/>
									<input type="button" id = 'nick_check' value="중복확인"/>
									<div id="idme_ssage" style="display:none;"></div>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name/이름</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name" placeholder="Enter your Name"/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="birthday" class="cols-sm-2 control-label">Your Birthday/생일</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<select name="year" ><option value="1990">1990년</option>
									</select>
									<select name="mon" ><option value="01">1월</option>
											<option value="02">2월</option>
											<option value="03">3월</option>
											<option value="04">4월</option>
											<option value="05">5월</option>
											<option value="06">6월</option>
											<option value="07">7월</option>
											<option value="08">8월</option>
											<option value="09">9월</option>
											<option value="10">10월</option>
											<option value="11">11월</option>
											<option value="12">12월</option>
									</select>
									<select name="birth" ><option value="01">1일</option>
											<option value="02">2일
											<option value="03">3일
											<option value="04">4일
											<option value="05">5일
											<option value="06">6일
											<option value="07">7일
											<option value="08">8일
											<option value="09">9일
											<option value="10">10
											<option value="11">11일
											<option value="12">12일
											<option value="13">13일
											<option value="14">14일
											<option value="15">15일
											<option value="16">16일
											<option value="17">17일
											<option value="18">18일
											<option value="19">19일
											<option value="20">20일
											<option value="21">21일
											<option value="22">22일
											<option value="23">23일
											<option value="24">24일
											<option value="25">25일
											<option value="26">26일
											<option value="27">27일
											<option value="28">28일
											<option value="29">29일
											<option value="30">30일
											<option value="31">31일
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
									<input name="tel_0" type="text" id="tel_0" size="3" />
                				  <span class="text1">                  - 
             				     <input name="tel_1" type="text" id="tel_1" size="5" />
            	   				       -
                      <input name="tel_2" type="text" id="tel_2" size="5" />
              	    </span></td>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="loc" class="cols-sm-2 control-label">Your Area/지역</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<select name="loc" ><option value="서울">서울</option>
									<option value="경기">경기</option>
									<option value="강원">강원</option>
									<option value="충북">충북</option>
									<option value="충남">충남</option>
									<option value="전북">전북</option>
									<option value="전남">전남</option>
									<option value="경북">경북</option>
									<option value="경남">경남</option>
									<option value="제주">제주</option>
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
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button" id="signup">회원가입 완료</button>
						</div>
					</form>
				</div>
			</div>
		</div>

<!-- 		<script type="text/javascript" src="assets/js/bootstrap.js"></script> -->
	</body>
</html>