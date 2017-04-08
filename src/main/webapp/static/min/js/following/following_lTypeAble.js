//跟单JS,跟单判断登录情况,没有登录先登录,提供选择彩种功能
//获取红人资料,包括红人的彩种,跟单人数,头像等
function getMemberRightInfo(account,memberType,lType){
	var url = "/member/memberRightClientAction.php?action=getMemberRightInfo&memberTypeValue="+memberType+"&account="+encodeURI(encodeURI(account))+"&ff="+new Date();
	var html = $.ajax({url: url,async: false,dataType:'json'}).responseText;
	if(html != null && html != ""){
		var memberInfo = eval("(" + html + ")");
	}
	var lTypeMap = memberInfo.lTypeMap;
	var recommendLotteryTypeMap = memberInfo.recommendLotteryTypeMap;
	var recommendLotteryTypeValue;
	$("#lType_following").html("");
	if(recommendLotteryTypeMap != null){
		$.each(recommendLotteryTypeMap,function(name,value) {
			recommendLotteryTypeValue = value;
			$("#lType_following").append("<option value='"+value+"'>"+name+"</option>");
		});
	}
	if(lTypeMap != null){
		$.each(lTypeMap,function(name,value) {
			$("#lType_following").append("<option value='"+value+"'>"+name+"</option>");
	    });
    }
    if(lType){
    	recommendLotteryTypeValue = lType;
    }
    $("#lType_following").val(recommendLotteryTypeValue);
	openHandtailorWindow(account,memberType,recommendLotteryTypeValue,memberInfo.followersCount,memberInfo.memberHeadPic);
	var sel = document.getElementById("lType_following");
	sel.style.display="inline-block";
	sel.style.visibility="visible";
}
//打开窗口前的登录判断
function openHandtailorWindow(account,followingType,lType,followersCount,pic) {
	checkLogin(function(){openHandtailorWindowInner(account,followingType,lType,followersCount,pic);});
}

//打开订制页面
function openHandtailorWindowInner(account,followingType,lType,followersCount,pic) {
   	openDragWindow("handtailorDIV","跟单定制",true);
    onClickFollowing(account,followingType,lType,followersCount,pic);
}

//自动跟单内容
onClickFollowing=function(initiator,followingType,lotteryType,followersCount,pic){
	document.getElementById("msg_followersCount").innerHTML = followersCount;
	document.getElementById("msg_initiatorAccount").innerHTML = initiator;
	document.getElementById("lType_following").value = lotteryType;
	document.getElementById("picPath").src = pic;
	if(lotteryType >= 34 && lotteryType <= 38){
		document.getElementById("limitByTerm").disabled="disabled";
	}else{
		document.getElementById("limitByTerm").disabled="";
	}
	if(followingType == 1){
		document.getElementById("taocanFollowing").checked = "checked";
	}else{
		document.getElementById("hemaiFollowing").checked = "checked";
	}
}
followingAutomatic=function(){
	var lType = document.getElementById("lType_following").value;
	var initiatorAccount = document.getElementById("msg_initiatorAccount").innerHTML;
	var url="/member/followingAutomatic.php?lotteryType="+lType+"&initiatorAccount="+initiatorAccount;
	var isHemai;
	//if(document.getElementById("taocanFollowing").checked){
		//isHemai = false;
	//}else{
		isHemai = true;
	//}
	
	var followingAmount = document.getElementById("following_amount").value;
	if(!followingAmount || followingAmount <= 0){
		if(!isHemai){
			cll_alert("请输入正确的认购倍数");
		}else{
			cll_alert("请输入正确的认购金额");
		}
		return;
	}else{
		if(!isHemai){
			url+="&followingMultiple="+followingAmount;
		}else{
			url+="&followingAmount="+followingAmount;
		}
		
	}
	var limitFollowing = document.getElementById("isLimitFollowing").checked;
	if(limitFollowing){
		var followingBalanceLimit = document.getElementById("limitBalance").value;
		if(!followingBalanceLimit || followingBalanceLimit < 0){
			cll_alert("请输入正确的限制跟单金额");
			return;
		}else{
			url+="&followingBalanceLimit="+followingBalanceLimit;
		}
	}
	
	var termLimit = false;
	if(document.getElementById("limitByTerm").checked){
		termLimit = true;
		url+="&timeLimit=0";
	}else if(document.getElementById("limitByTime").checked){
		termLimit = true;
		url+="&timeLimit=1";
	}
	if(termLimit){
		var termAmount = document.getElementById("termAmount").value;
		if(!termAmount || termAmount <= 0){
			cll_alert("请输入每(期/时间)认购方案数量");
			return;
		}else{
			url+="&numberOfTerm="+termAmount;
		}
	}else{
		url+="&numberOfTerm=-1";
	}
	
	var isMoneyLimit = document.getElementById("planLimit").checked;
	if(isMoneyLimit){
		var minLimitMoney = document.getElementById("minLimitMoney").value*1;
		var maxLimitMoney = document.getElementById("maxLimitMoney").value*1;
		if(!minLimitMoney || minLimitMoney < 0){
			cll_alert("请输入最小认购方案金额限制");
			return;
		}else if(!maxLimitMoney || maxLimitMoney < 0){
			cll_alert("请输入最大认购方案金额限制");
			return;
		}else if(minLimitMoney > maxLimitMoney){
			cll_alert("最小金额大于最大金额，输入有误");
			return;
		}else{
			url+="&minLimitMoney="+minLimitMoney+"&maxLimitMoney="+maxLimitMoney;
		}
	}else{
		url+="&minLimitMoney=-1&maxLimitMoney=-1";
	}
	if(!isHemai){
		url+="&followingType=1&operation=save";
	}else{
		url+="&followingType=2&operation=save";
	}
	 $.ajax({
  		url: url,
  		dataType:"json",
  		success: following,
  		fail: function(){
  			cll_alert("提交失败！");
			isSubmit = false;
  		}
	});
};
stopFollowing = function (followingType, lType, initiatorAccount,lTypeName) {
	cll_confirm("确定取消定制 \"" + initiatorAccount + "\" 用户的 \"" + lTypeName + "\" 的方案?", 
		function () {
			var url = "/member/followingAutomatic.php?lotteryType=" + lType + "&initiatorAccount=" + initiatorAccount;
			url += "&followingType=" + followingType + "&infoStatus=1&operation=update";
			$.ajax({url:url, dataType:"json", success:stopSuccess, fail:function () {
				cll_alert("提交失败");
				isSubmit = false;
			}});
		}, 
		function () {});
};
stopAllFollowing = function (followingType, initiatorAccount) {
	cll_confirm("确定取消定制 \"" + initiatorAccount + "\" 用户的 \"" + "所有彩种" + "\" 的方案?", 
		function () {
			var url = "/member/followingAutomatic.php?action=stopAllFollowing&initiatorAccount=" + initiatorAccount;
			url += "&followingType=" + followingType;
			$.ajax({url:url, dataType:"json", success:stopSuccess, fail:function () {
				cll_alert("提交失败");
				isSubmit = false;
			}});
		}, 
		function () {});
};
stopSuccess = function (o) {
	var json = o;
	cll_alert(json.message,function(){parent.window.location.reload();});
};
following = function (o) {
	var json = o;
	cll_alert(json.message);
	closeDragWindow("handtailorDIV");
};

