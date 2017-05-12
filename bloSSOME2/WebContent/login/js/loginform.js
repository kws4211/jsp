$(function(){
	$("#login").click(function(){
		if($("#frm>input:eq(0)").val() == ""){
			alert("ID를 입력해주세요");
			$("#frm>input:eq(0)").focus();
			return false;
		}else if($("#frm>input:eq(1)").val() == ""){
			alert("PW를 입력해주세요");
			$("#frm>input:eq(1)").focus();
			return false;
		}else{
			$("#frm").attr("action","main.login?cmd=checkid");
			$("#frm").submit();
		}
	});
});
