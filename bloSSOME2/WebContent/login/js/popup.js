$a.page(function() {
	this.init = function(id, param) {
		// $a.popup() 이 넘겨받은 data를 param으로 전달.
		var id = param["userId"];
		$('#check').val(id);
		$('#btnclose').click(function() { // close 버튼을 누르면 
			$a.close($('#check').val());
		});
	}
});

$(function(){
	$("#btnCheck").click(function(){
		$.ajax({
			url : "check.login?cmd=idpopupserver",
			type : "post",
			data : {"userId" : $("#check").val()},
			dataType : 'text',
			success : function(data){
				if(data.trim() == '0'){
					$('#msg').text("["+$("#check").val()+"]은 사용가능합니다");
					$("#btnclose").attr("type","button");
				}else{
					$('#msg').text("["+$("#check").val()+"]은 사용 불가능합니다");
					$("#btnclose").attr("type","hidden");
				}
			},
			error : function(err){
				alert("에러발생" + err.toString);
			}
		});
	});
});

