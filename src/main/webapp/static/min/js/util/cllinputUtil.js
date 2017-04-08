/*
 * 处理cllinput类型的文本框操作逻辑
 * keyup事件需另外处理.比如只能输入数字  
 * 需要引入 StringUtil.js
 * 
 */
$(function(){
	var cllinputs=$("span.cllinput> input");
	if(cllinputs.length>0){
		for(var i=0;i<cllinputs.length;i++){
			var input=cllinputs.eq(i);
			init(input);
		}
	}
	function init(input){
		var inited=input.data("inited") || false;
		if(inited){
			return;
		}
		var defaultValue=input.attr("default") || input.val();
		var step=input.attr("step") || 1;//递增量
		var min=input.attr("min") || 0;
		var max=input.attr("max") || Infinity;//最大无穷大
		input.data("changed",false).data("defaultValue",defaultValue).data("min",min).data("max",max).data("step",step).data("inited",true);
	};
	function step(obj){
		var input=obj.parent().find("input");
		init(input);
		if(input.hasClass("disable")){
			return false;
		}
		var minus=obj.hasClass("minus");
		var min=input.data("min")*1;
		var max=input.data("max")*1;
		var step=input.data("step")*1;
		var val=input.val()*1;
		if(minus){
			val=val-step;
			val=val<min?min:val;
		}else{
			val=val+step;
			val=val>max?max:val;
		}
		input.val(val).data("changed",true);
		input.keyup();
	}
	$("span.widget_multiple > span.minus").live("click",function(e){
		step($(this));
	});
	$("span.widget_multiple > span.add").live("click",function(e){
		step($(this));
	});
	cllinputs.live("focus",function(e){
			init($(this));
			if($(this).hasClass("disable")){
				return false;
			}
			var changed=$(this).data("changed");
			if(!changed){
				$(this).val("");
			}
		}).live("blur",function(e){
			if($(this).hasClass("disable")){
				 return false;
			}
			var min=$(this).data("min")*1;
			var max=$(this).data("max")*1;
			var val=$(this).val();
			val = isNaN(val)?1:val;
			var defaultValue=$(this).data("defaultValue");
			var step=$(this).data("step")*1;
			if(val==""){
				$(this).val(defaultValue).data("changed",false).keyup();
			}else{
				if(defaultValue.isNum()){
					val=val*1;
					if(val%step != 0){
						val=Math.ceil(val/step)*step;
					}
					val=val<min?min:val;
					val=val>max?max:val;
					$(this).val(val).keyup();
				}
			}
		}).live("change",function(e){
			$(this).data("changed",true);
		}).live("keydown",function(e){
			if($(this).hasClass("disable")){
				 return false;
			}
		});
});
