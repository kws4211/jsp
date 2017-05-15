<script type="text/javascript" src="/bloSSOME2/lib/jquery-3.2.1.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="/bloSSOME2/login/js/signup.js"></script>
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
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script type="text/javascript">
		
		 		//정규화 
		 		window.onload = function(){ 
		 			
		 			//id 정규화
		 			var id = document.getElementById('id'); 
		 			id.onblur = function(){ 
		 			id = /^[a-z]+[a-z0-9]{5,19}$/g; 
		 				var nid = document.frm.id.value; 
		 				if(!id.test(nid)){ 
		 					alert("잘못된 아이디 형식입니다"); 
		 				} //if문 끝 
		 			} 
					//pass 정규화
		 			var pass = document.getElementById('pass'); 
		 			pass.onblur = function(){ 
		 			pass = /^[A-Za-z0-9]{6,12}$/;
		 				var npass = document.frm.pass.value; 
		 				if(!pass.test(npass)){ 
		 					alert("잘못된 패스워드입니다"); 
		 				} //if문 끝
		 			} 
					//tel 정규화
		 			var tel_0 = document.getElementById('tel_0'); 
		 			tel_0.onblur = function(){
		 				tel_0 = /^[0-9]{2,3}$/;
		 				var ntel_0 = document.frm.tel_0.value;
		 				if(!tel_0.test(ntel_0)){
		 					alert("잘못된 전화번호 형식입니다");
		 				}
		 			}
		 			var tel_1 = document.getElementById('tel_1'); 
		 			tel_1.onblur = function(){
		 				tel_1 = /^[0-9]{3,4}$/;
		 				var ntel_1 = document.frm.tel_1.value;
		 				if(!tel_1.test(ntel_1)){
		 					alert("잘못된 전화번호 형식입니다");
		 				}
		 			}
		 			var tel_2 = document.getElementById('tel_2'); 
		 			tel_2.onblur = function(){
		 				tel_2 = /^[0-9]{4}$/;
		 				var ntel_2 = document.frm.tel_2.value;
		 				if(!tel_2.test(ntel_2)){
		 					alert("잘못된 전화번호 형식입니다");
		 				}
		 			}
		 			//닉네임 **************수정해야함
		 			var nick = document.getElementById('nick'); 
		 			nick.onblur = function(){
		 				nick = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
		 				var nnick = document.frm.nick.value;
		 				if(!nick.test(nnick)){
		 					alert("잘못된 닉네임 형식입니다");
		 				}
		 			}
		 			//이름
		 			var name = document.getElementById('name'); 
		 			name.onblur = function(){
		 				name = /^[가-힣]+$/;
		 				var nname = document.frm.name.value;
		 				if(!name.test(nname)){
		 					alert("잘못된 이름 형식입니다");
		 				}
		 			}
		 			//이메일
		 			var email = document.getElementById('email'); 
		 			email.onblur = function(){
		 			email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		 				var nemail = document.frm.email.value;
		 				if(!email.test(nemail)){
		 					alert("잘못된 이메일 형식입니다");
		 				}
		 			}
		 			
		 		}
					
		 		 
		
		$(function(){
			//아이디 중복확인
			$('#id_check').click(function(){
				$.ajax({
					url : 'check.jsp',
					type : 'get',
					data : { 'id' : $('#id').val()},
					dataType : 'text',
					success : function(data){
						if(data.trim() == 'YES'){
							$('#idmessage').text("이미 사용중인 아이디가 있습니다");
							$('#idmessage').show();
						}else if(data.trim() == 'NO'){
							$('#idmessage').text("사용가능합니다");
							$('#idmessage').show();
						}
					},
					error : function( err ){
						alert('id 중복검사 에러발생' + err.toString());
					}
				})
			}); //id_check function 끝
			
			//닉네임 중복확인
			$('#nick_check').click(function(){
				$.ajax({
					url : 'check.jsp',
					type : 'get',
					data : { 'nick' : $('#nick').val()},
					dataType : 'text',
					success : function(data){
						if(data.trim() == 'YES'){
							$('#idme_ssage').text("이미 사용중인 닉네임이 있습니다");
							$('#idme_ssage').show();
						}else if(data.trim() == 'NO'){
							$('#idme_ssage').text("사용가능합니다");
							$('#idme_ssage').show();
						}
					},
					error : function( err ){
						alert('nick 중복검사 에러발생' + err.toString());
					}
				})
			}); //nick_check function 끝
		});// 첫 function끝
		
		
		
		
		
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
					<form class="form-horizontal" method="post" onsubmit="return input_check_func()" name="frm">
						
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
								<!-- 앞에그림 -->
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="id" id="id"  placeholder="Enter your Id"/>
									<input type="submit" id = 'id_check' value="중복확인"/>
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
									<input type="submit" id = 'nick_check' value="중복확인"/>
									<div id="idme_ssage" style="display:none;"></div>
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