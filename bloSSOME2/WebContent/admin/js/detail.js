$(function(){
	// 텍스트박스 비활성화
	$('.info input').attr("disabled","disabled");
	
	// 회원승인 버튼 이벤트
	$('.btnok').click(function(){
		var memId = $(this).next().val();
		$("#frmapprove").attr("method","post");
		$("#frmapprove").attr("action","update.admin?cmd=update&memId="+memId);
		$("#frmapprove").submit();
		
		$a.close();
	});

	// 회원거절 버튼 이벤트
	$('.btnno').click(function(){
		var memId = $(this).prev().val();
		$("#frmapprove").attr("method","post");
		$("#frmapprove").attr("action","refusal.admin?cmd=refusal&memId="+memId);
		$("#frmapprove").submit();
		
		$a.close();
	});
});
