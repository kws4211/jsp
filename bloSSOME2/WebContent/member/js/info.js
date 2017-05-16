$(function() {
	var mydate = new Date();
	var fm = $("#frm");
	//변수 선언부
	var ye = $('#year');
	var mo = $('#month');
	var da = $('#date');
	
	var loc = ['서울','부산','인천','대구','대전','광주','울산','세종','강원','경기','충남','충북','경북','전남','경남','전북','제주'];
	
	for (var i = 0; i < loc.length; i++) {
		$("#loc").append("<option value='"+loc[i]+"'>"+loc[i]);
	}
	$("#loc").val($("#lochi").val()).attr("selected", "selected");
	//년도 옵션 추가
	for (var i = mydate.getFullYear() - 50; i <= mydate.getFullYear(); i++) {
		ye.append("<option value=" + i + ">" + i);
	}

	//월 옵션 추가
	for (var i = 1; i <= 12; i++) {
		if(i<10){
			mo.append("<option value='0" + i + "'>" + i);
		}else{
			mo.append("<option value=" + i + ">" + i);
		}
	}
	var bd = $("#bd").val();
	var bdar = bd.split("-");
	ye.val(bdar[0]).attr("selected", "selected");
	mo.val(bdar[1]).attr("selected", "selected");
	
	var d = new Date();
	d.setMonth(mo.val());
	d.setDate(0);
	var date = d.getDate();

	//1~마지막날까지 옵션 추가
	for (var i = 1; i <= date; i++) {
		if(i <10){
			da.append("<option value='0" + i + "'>" + i);
		}else{
			da.append("<option value=" + i + ">" + i);
		}
	}
	
	da.val(bdar[2].substring(0,2)).attr("selected", "selected");
	//월이 바뀌었을때의 이벤트
	mo.change(function() {
		$("#date option").remove();

		//선택된 월의 마지막 날짜 얻어옴
		var d = new Date();
		d.setMonth(mo.val());
		d.setDate(0);
		var date = d.getDate();

		//1~마지막날까지 옵션 추가
		for (var i = 1; i <= date; i++) {
			if(i <10){
				da.append("<option value='0" + i + "'>" + i);
			}else{
				da.append("<option value=" + i + ">" + i);
			}
		}
	});
	
	
	$(".btn-success").click(function(){
		$("#frm").attr("action","index.member?cmd=modify");
		$("#frm").submit();
	});
});