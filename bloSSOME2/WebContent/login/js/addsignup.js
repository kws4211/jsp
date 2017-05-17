


//정규화
		window.onload = function(){
			
			alert($("#id").val());
			
			//키 정규화
			var height = document.getElementById('height'); 
			height.onblur = function(){
				height = /^[0-9]+$/;
 				var nheight = document.frm.height.value;
 				if(!height.test(nheight)){
 					alert("잘못된 형식입니다");
 				}
 			}
			//연봉 정규화
			var salary = document.getElementById('salary'); 
			salary.onblur = function(){
				salary = /^[0-9]+$/;
 				var nsalary = document.frm.salary.value;
 				if(!salary.test(nsalary)){
 					alert("잘못된 형식입니다");
 				}
 			}
			//재산 정규화
			var property = document.getElementById('property'); 
			property.onblur = function(){
				property = /^[0-9]+$/;
 				var nproperty = document.frm.property.value;
 				if(!property.test(nproperty)){
 					alert("잘못된 형식입니다");
 				}
 			}
			//재산 정규화
			var height = document.getElementById('property'); 
			height.onblur = function(){
				property = /^[0-9]+$/;
 				var nproperty = document.frm.property.value;
 				if(!property.test(nproperty)){
 					alert("잘못된 형식입니다");
 				}
 			}
			
			
		}
		
		
