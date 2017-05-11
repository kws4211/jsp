$(function(){
	$(".btn-success").click(function(){

		openWin();
	});
	
	$("#rebtn").click(function(){
		alert('oo');
	});
});

function openWin() {

	$a.popup({
		title : "꾸욱 쪽지보내기",
		width : 680, //크기
		height : 400,
		url : "/bloSSOME2/tuk/gguckMessage.jsp", // 팝업에 표시될 HTML
		iframe : false // default
	});
}