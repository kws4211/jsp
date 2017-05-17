$(function(){
	$("#gguk").click(function(){
		
		var id = $(this).next().val();
		var name = $(this).next().next().val();
		$a.popup({
			title : "꾸욱하기",
			width : 500, //크기
			height : 300,
			url : "xx.tuk?cmd=popup&id="+id+"&name="+name,
			iframe : false
		});
	});
	
	$("#rebtn").click(function(){
		var result = confirm("쪽지를 보내시겠습니까?");
		
		if(result){
			$("#frm").attr("action","xx.tuk?cmd=insert");
			$("#frm").submit();
			$a.close();
		}else{
			return;
		}
	});
});

$(function(){
	$('#btn_tuk').click(function(){
		alert('ss');
		$('#frm').attr("action", "xx.tuk?cmd=tuk-insert");
		$('#frm').submit();
	});
});