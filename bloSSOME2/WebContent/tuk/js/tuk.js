$(function(){
	$(".btn-sm").click(function(){
		var num = $(this).next().val();
		
		$a.popup({
			title : "꾸욱하기",
			width : 250, //크기
			height : 100,
			url : "xx.tuk?cmd=popup&choicenum="+num,
			iframe : false
		});
	});
	
	$("#rebtn").click(function(){
		alert('oo');
	});
});

$(function(){
	$('#btn_tuk').click(function(){
		alert('ss');
		$('#frm').attr("action", "xx.tuk?cmd=tuk-insert");
		$('#frm').submit();
	});
});