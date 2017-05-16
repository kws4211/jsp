$(function() {
	$(".btn").click(function() {
		var sel = $(this).next().val();
		$a.popup({
			title : "비밀번호 입력",
			width : 250, //크기
			height : 100,
			url : "popup.member?cmd=popup&sel=" + sel,
			iframe : false
		// default
		});
	});

	$("#btn").click(function() {
		var se = $("#sel").val();
		var act = "";

		if (se == 1) {
			act = "info.member?cmd=view";
		} else {
			act = "info.member?cmd=add";
		}
		
		$("#frm").attr("action", act);
		$("#frm").submit();
	});
});