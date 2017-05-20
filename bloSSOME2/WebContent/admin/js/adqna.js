$(function(){
	$(".btn-danger").click(function(){
		openWin();
	});
});

function openWin() {
	var data = $("#qna").val();
	var idn = $a.popup({
		title : "답변 달기",
		width : 680, //크기
		height : 400,
		data : {"item" : data},
		url : "/bloSSOME2/admin/adqnareple.jsp", // 팝업에 표시될 HTML
		iframe : true // default
	});
}