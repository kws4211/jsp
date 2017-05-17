$(function(){
	$(".btn-xs").click(function(){
		var num = $(this).next().val();
		var send = $(this).next().next().val();
		var param = "&num="+num;
		if(send != null){
			param = param + "&send="+send;
		}
		$a.popup({
			title : false,
			width : 600, //크기
			height : 500,
			url : "view.msg?cmd=view"+param, 
			iframe : true // default
		});
	});
});