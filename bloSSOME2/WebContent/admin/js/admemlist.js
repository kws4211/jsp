$(function(){
	// 검색 버튼 이벤트
	$('.btnsearch').click(function(){
		var search = $('.txsearch').val();  // text 값
		var selected = $(".memsearch option:selected").val();  //선택한 selectbox value 값

		$(".frmsearch").attr("method","post");
		$(".frmsearch").attr("action","memsearch.admin?cmd=memsearch&"+selected+"="+search);	
		$(".frmsearch").submit();

	});
	// 엔터키 이벤트
	$(".txsearch").keypress(function(key){
		if(key.keyCode == 13){  //키가 13이면 실행 (엔터 : 13)
			var search = $('.txsearch').val();  // text 값
			var selected = $(".memsearch option:selected").val();  //선택한 selectbox value 값

			$(".frmsearch").attr("method","post");
			$(".frmsearch").attr("action","memsearch.admin?cmd=memsearch&"+selected+"="+search);	
			$(".frmsearch").submit();
		}
	});

	// 회원탈퇴 버튼 이벤트
	$('.btnleave').click(function(){
		var memId = $(this).next().val();

		$("#frmleave").attr("method","post");
		$("#frmleave").attr("action","leave.admin?cmd=leave&memId="+memId);
		$("#frmleave").submit();
	});
});
