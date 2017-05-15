$(function(){
	$(".btn-success").click(function(){
		$("#aside").load("side.blossom?cmd=aside");
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

$(function(){
	$('#btn_tuk').click(function(){
		$('#frm').attr("action", "xx.tuk?cmd=tuk-insert");
		$('#frm').submit();
	});
});