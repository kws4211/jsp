$(function(){
	$(".btn-danger").click(function(){
		var data = $(this).next().val();
		var idn = $a.popup({
			title : "답변 달기",
			width : 600, //크기
			height : 500,
			url : "popup.admin?cmd=popup&num="+data, 
			iframe : false // default
		});
	});
	
	$("#rebtn").click(function(){
		$("#frmreple").attr("method","post");
		$("#frmreple").attr("action","insert.admin?cmd=insert");
		$("#frmreple").submit();
		$a.close();
	});
});

