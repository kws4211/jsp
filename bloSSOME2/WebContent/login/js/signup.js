

$(function(){
	$("#signup").click(function(){
		if($("#id").val() == ""){
			alert("ID를 입력해주세요");
			$("#id").focus();
			return false;
		}else if($("#password").val() == ""){
			alert("PW를 입력해주세요");
			$("#password").focus();
			return false;
		}else if($("#confirm").val() == ""){
			alert("PW 확인을 입력해주세요");
			$("#confirm").focus();
			return false;
		}else if($("#question").val() == ""){
			alert("PW 질문를 입력해주세요");
			$("#question").focus();
			return false;
		}else if($("#answer").val() == ""){
			alert("PW 답변를 입력해주세요");
			$("#answer").focus();
			return false;
		}else if($("#nickname").val() == ""){
			alert("닉네임을 입력해주세요");
			$("#nickname").focus();
			return false;
		}else if($("#name").val() == ""){
			alert("이름을 입력해주세요");
			$("#name").focus();
			return false;
		}else if($("#year").val() == ""){
			alert("생일을 입력해주세요");
			$("#year").focus();
			return false;
		}else if($("#mon").val() == ""){
			alert("생일을 입력해주세요");
			$("#mon").focus();
			return false;
		}else if($("#birthday").val() == ""){
			alert("생일을 입력해주세요");
			$("#birthday").focus();
			return false;
		}else if($("#tel_0").val() == ""){
			alert("전화번호를 입력해주세요");
			$("#tel_0").focus();
			return false;
		}else if($("#tel_1").val() == ""){
			alert("전화번호를 입력해주세요");
			$("#tel_1").focus();
			return false;
		}else if($("#tel_2").val() == ""){
			alert("전화번호를 입력해주세요");
			$("#tel_2").focus();
			return false;
		}else if($("#area").val() == ""){
			alert("지역을 입력해주세요");
			$("#area").focus();
			return false;
		}else if($("#email").val() == ""){
			alert("이메일을 입력해주세요");
			$("#email").focus();
			return false;
		}else{
			$(".form-horizontal").attr("action","index.login?cmd=inmemdb");
		}
	});
	
});


//정규화 
	window.onload = function(){ 
		
		//id 정규화
		var id = document.getElementById('id'); 
		id.onblur = function(){ 
		id = /^[a-z]+[a-z0-9]{4,19}$/g; 
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
//$.ajax({
//	url : 'check.id',
//	type : 'get',
//	data : { 'id' : $('#id').val()},
//	dataType : 'text',
//	success : function(data){
//		if(data.trim() == 'YES'){
//			$('#idmessage').text("이미 사용중인 아이디가 있습니다");
//			$('#idmessage').show();
//		}else if(data.trim() == 'NO'){
//			$('#idmessage').text("사용가능합니다");
//			$('#idmessage').show();
//		}
//	},
//	error : function( err ){
//		alert('id 중복검사 에러발생' + err.toString());
//	}
//})
	var id = $("#id").val();
	$a.popup({
		title : "ID 중복 체크",
		width : 400, //크기
		height : 300,
		url : "/bloSSOME2/login/CheckID.jsp", 
		iframe : true, // default
		data : {"userId" : id},
		callback : function(data) {
			if (data !== null) {
				$("#id").val(data);
			}
		}
	});
}); //id_check function 끝

//닉네임 중복확인
$('#nick_check').click(function(){
$.ajax({
	url : 'check.ni',
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
