$(function () {
	
/*	$('#btn_can').hide();
	if( "<%= result%>" == 1 ){
		$('#btn_can').show();
		$('#btn_tuk').hide();
	}
	if( "<%= result2%>" == 1 ){
		$('#btn_can').hide();
		$('#btn_tuk').show();
	}*/
	
	
    //Initialize tooltips
	$('.nav-tabs > li a[title]').tooltip();
    
    //Wizard
    $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {
        var $target = $(e.target);
        if ($target.parent().hasClass('disabled')) {
            return false;
        }
    });

    $(".next-step").click(function (e) {
        var $active = $('.wizard .nav-tabs li.active');
        $active.next().removeClass('disabled');
        nextTab($active);

    });
    $(".prev-step").click(function (e) {
        var $active = $('.wizard .nav-tabs li.active');
        prevTab($active);

    });
    
    $("#subbtn").click(function(){
//    	유효성 검사 그리고 체크 안될시 값 지정
    	$("#frm").attr("method","post");
    	$("#frm").attr("action","result.find?cmd=res");
    	$("#frm").submit();
    });
    
    //툭하기 버튼
	$('#btn_tuk').click(function(){
		var memId = $(this).next().val();
		
		alert(memId);
		$('#frm').attr("action", "xx.find?cmd=tuk-insert");
		$('#frm').submit();
	});
	
	//툭취소 버튼
	$('#btn_can').click(function(){
		alert('툭취소되었습니다');
		$('#frm').attr("action", "xx.find?cmd=tuk-delete");
		$('#frm').submit();
	});
	
	
	
	
	
});

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}