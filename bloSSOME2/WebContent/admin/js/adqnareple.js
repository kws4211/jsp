$(function(){
	$a.page(function() {
	    this.init = function(id, param) {
	    	var text = param["item"];
	    	alert(text);
	        $("#text").val(text);
	    }
	    $("#rebtn").click(function(){
			$a.close();
		});
	});
});