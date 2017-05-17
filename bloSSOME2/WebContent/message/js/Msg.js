$(function(){
	$(".btn-xs").click(function(){
		var num = $("#num").val();
		$a.popup({
			title : false,
			width : 600, //크기
			height : 500,
			url : "view.msg?cmd=view&num="+num, 
			iframe : true // default
		});
	});
});