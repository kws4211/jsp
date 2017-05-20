$(function(){
	$a.page(function() {
	    this.init = function(id, param) {
	    	var text = param["item"];
	        $("#text").val(text);
	    }
	    $("#rebtn").click(function(){
	    	alert("D");
			$a.close();
		});
	});
});