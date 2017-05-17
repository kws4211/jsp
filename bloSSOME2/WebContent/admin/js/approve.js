$(function(){
	// 상세보기 버튼 이벤트
	$('.btndetail').click(function(){
		var memId = $(this).next().val();
		
		//팝업창
		$a.popup({
				title 	: "상세정보"
				, url	: "detail.admin?cmd=detail&memId="+memId // 팝업에 표시될 HTML
				, iframe: false
				, width : 390
				, height: 436

		});
	});
});
