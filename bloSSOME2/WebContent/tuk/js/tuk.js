$(function(){
	$("#gguk").click(function(){
		var id = $(this).next().val();
		var name = $(this).next().next().val();
		alert(name)
		$a.popup({
			title : "꾸욱하기",
			width : 500, //크기
			height : 300,
			url : "xx.tuk?cmd=popup&choiceid="+id+"&name="+name,
			iframe : false
		});
	});
	
	$("#rebtn").click(function(){
		$("#frm").attr("action","xx.tuk?cmd=insert");
		$("#frm").submit();
		$a.close();
	});
});

$(function(){
	$('#btn_tuk').click(function(){
		alert('ss');
		$('#frm').attr("action", "xx.tuk?cmd=tuk-insert");
		$('#frm').submit();
	});
});