$(function(){
	$(".btn-danger").click(function(){
		openWin();
	});
	
	$("#rebtn").click(function(){
		alert('oo');
	});
});

function openWin() {
	var idn = $a.popup({
		title : "답변 달기",
		width : 680, //크기
		height : 400,
		url : "/bloSSOME2/admin/adqnareple.jsp", // 팝업에 표시될 HTML
		iframe : false // default
	});
}