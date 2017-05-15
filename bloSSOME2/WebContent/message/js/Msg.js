$(function(){
	$(".btn-xs").click(function(){
		var num = $("#num").text();
		$a.popup({
			title : "쪽지 보기",
			width : 600, //크기
			height : 500,
			url : "view.msg?cmd=view&num="+num, 
			iframe : true // default
		});
	});
});