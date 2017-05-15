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
