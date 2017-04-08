/*
 * 共公异步加载Fn
 * 
 */
jQuery.cllajax={
	isundefined:function(obj){
		if( typeof(obj) == "defined" || typeof(obj) == "undefined" || obj == "" || obj == null )
			return true;
		else 
			return false;
	},
	load : function(url, param,successFn,retData,async_){
		var loadObj = $("#loading");
		if(loadObj.length > 0){
			loadObj.show();
		}else{
			//$("body").append(loadingHtml);
			//loadObj = $("#loading");
		}
		param.v = new Date().getTime();
		if($.cllajax.isundefined(retData)) 
			retData = "json";
		if($.cllajax.isundefined(async_)&&async_!=false) 
			async_ = true;
		$.ajax({type:"POST", url:url, data:param, dataType:retData,async:async_, success:function (data) {	 
			if($.cllajax.isundefined(successFn)){
				$.cllajax.reqSuccessFunction(data);
			}else if(!$.cllajax.isundefined(data.code) && data.code != 0 ){
				alert("返回结果异常!");
			}else
				successFn(data);
			loadObj.hide();
		}, error:function (e) {
			errorFn(e);
			loadObj.hide();
		}});	
	},
	urlParam:function(name){
		var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
		var r = window.location.search.substr(1).match(reg);
		if (r!=null) {
			return unescape(r[2]); 
		}
		return null;
	},
	reqSuccessFunction:function(data){
		alert("加载成功!"+data);
	}
}
