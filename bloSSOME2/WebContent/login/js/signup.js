$(function(){
	$("#signup").click(function(){
		
		var pass = /^[A-Za-z0-9]{6,12}$/;
		var npass = $("#pass").val(); 
		var chpa = pass.test(npass);
		
		//tel 정규화
		var tel_0 = /^[0-9]{2,3}$/;
		var ntel_0 = $("#tel_0").val();
		var chtel0  = tel_0.test(ntel_0);

		var tel_1 = /^[0-9]{3,4}$/;
		var ntel_1 = $("#tel_1").val();
		var chtel1  = tel_1.test(ntel_1);

		var tel_2 = /^[0-9]{4}$/;
		var ntel_2 = $("tel_2").val();
		var chtel2  = tel_2.test(ntel_2);
			
		//이름
		var name = /^[가-힣]+$/;
		var nname = $("#name").val();
		var chname = name.test(nname);
		
		//이메일
		var email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		var nemail = $("#email");
		var chem = email.test(nemail);
		if($("#id").val() == ""){
			alert("ID를 입력해주세요");
			$("#id").focus();
			return false;
		}else if($("#pass").val() == "" || chpa == false){
			alert("PW를 입력해주세요");
			$("#pass").focus();
			return false;
//		}else if($("#confirm").val() == "" || $("#confirm").val() != $("#pass").val()){
//			alert($("#confirm").val());
//			alert($("#pass").val());
//			alert("PW 확인을 입력해주세요");
//			$("#confirm").focus();
//			return false;
		}else if($("#question").val() == "" ){
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
		}else if($("#name").val() == "" || chname == false){
			alert("이름을 입력해주세요");
			$("#name").focus();
			return false;
		}else if($("#year").val() == ""){
			alert("생일을 입력해주세요");
			$("#year").focus();
			return false;
		}else if($("month").val() == ""){
			alert("생일을 입력해주세요");
			$("#month").focus();
			return false;
		}else if($("#date").val() == ""){
			alert("생일을 입력해주세요");
			$("#date").focus();
			return false;
//		}else if($("#tel_0").val() == "" || chtel0 == false){
//			alert("전화번호를 입력해주세요");
//			$("#tel_0").focus();
//			return false;
//		}else if($("#tel_1").val() == "" || chtel1 == false){
//			alert("전화번호를 입력해주세요");
//			$("#tel_1").focus();
//			return false;
//		}else if($("#tel_2").val() == "" || chtel2 == false){
//			alert("전화번호를 입력해주세요");
//			$("#tel_2").focus();
//			return false;
		}else if($("#area").val() == ""){
			alert("지역을 입력해주세요");
			$("#area").focus();
			return false;
//		}else if($("#email").val() == "" || chem == false){
//			alert("이메일을 입력해주세요");
//			$("#email").focus();
//			return false;
		}else{
			$(".form-horizontal").attr("action","index.login?cmd=inmemdb");
		}
	});
	// 아이디 중복확인
	$('#id_check').click(function() {
		var id = $("#id").val();
		$a.popup({
			title : "ID 중복 체크",
			width : 400, // 크기
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
		var nick = $("#nick").val();
		$a.popup({
			title : "ID 중복 체크",
			width : 400, // 크기
			height : 300,
			url : "/bloSSOME2/login/CheckNICK.jsp",
			iframe : true, // default
			data : {"userNick" : nick},
			callback : function(data) {
				if (data !== null) {
					$("#nick").val(data);
				}
			}
		});
	});
});
