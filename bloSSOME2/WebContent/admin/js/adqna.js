$(function(){
	$(".btn-danger").click(function(){
		var data = $(this).next().val();
		var idn = $a.popup({
			title : "답변 달기",
			width : 680, //크기
			height : 400,
			url : "popup.admin?cmd=popup&num="+data, 
			iframe : true // default
		});
	});
});

