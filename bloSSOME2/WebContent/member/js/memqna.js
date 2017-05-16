$(function(){
	$("#qnabtn").click(function(){
//		유효성 검사 후 내용 전달
		if($("#memfrm>select").val() == "유형 선택"){
			alert("유형을 선택해주세요");
			return false;
		}else if($("#memfrm>textarea").val() == ""){
			alert("내용을 입력해주세요");
			return false;
		}else{
			$("#memfrm").attr("action","insert.member?cmd=insert");
			$("#memfrm").attr("method","post");
			$("#memfrm").submit();
		}
	});
});