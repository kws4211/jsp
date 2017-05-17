$a.page(function() {
	this.init = function(id, param) {
		// $a.popup() 이 넘겨받은 data를 param으로 전달.
		var id = param["userId"];
		var nick = param["userNick"];
		$('#check').val(id);
		$("#Check").val(nick);
		$('#btnclose').click(function() { // close 버튼을 누르면 
			$a.close($('#check').val());
		});
		$('#btnClose').click(function() { // close 버튼을 누르면 
			$a.close($('#Check').val());
		});
	}
});

$(function(){
	$("#btnCheck").click(function(){
		id = /^[a-z]+[a-z0-9]{4,19}$/g; 
			var nid = $("#check").val();
			if(!id.test(nid)){ 
				alert("최소 4자 이상 입력해주세요"); 
			}else{
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
			
		} 
		
	});
	$("#btnNick").click(function(){
				$.ajax({
					url : "check.login?cmd=nickpopupserver", 
					type : "post",
					data : {"userNick" : $("#Check").val()}, 
					dataType : 'text',
					success : function(data){
						if(data.trim() == '0'){
							$('#nsg').text("["+$("#Check").val()+"]은 사용가능합니다"); 
							$("#btnClose").attr("type","button");
						}else{
							$('#nsg').text("["+$("#Check").val()+"]은 사용 불가능합니다"); 
							$("#btnClose").attr("type","hidden");
						}
					},
					error : function(err){
						alert("에러발생" + err.toString);
					}
				});
			});
		});