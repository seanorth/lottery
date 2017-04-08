/**
 * 关闭页面顶部提示(只在当前session关闭，重新登录后会重新显示)
 */
function closeTips(tipsId) {
	$.ajax({
		url : "http://www.cailele.com/tips.php?tipsId=" + tipsId,
		type : "post",
		data : '',
		dataType : 'jsonp',
		jsonp : 'callback',
		success : function(json){
       		if (json.code == 0) {
       			$("#" + tipsId).css("display", "none");
        	} else {
        		cll_alert(json.message);
            }
        },
        fail : function(){
			cll_alert("请求失败!");
		}
    });
}
