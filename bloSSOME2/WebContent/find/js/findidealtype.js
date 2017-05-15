$(function () {
	$("#aside").load("side.blossom?cmd=aside");
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
    
    
});

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}