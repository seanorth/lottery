//切换
(function (){
	op={};
	op.switchTabDefaultOption={tabs:{},activeClass:"",defaultClass:""};
	op.switchTab=function(options,activeTab,typeFun){
		op.extend(op.switchTabDefaultOption, options || {});
		for(var tabId in options.tabs){
			var tabEle=op.getById(tabId);
			tabEle.className=options.defaultClass;
			var contentEle=op.getById(options.tabs[tabId]);
			contentEle.style.display="none";
		}
		activeTab.className=options.activeClass;
		var contentEle=op.getById(options.tabs[activeTab.id]);
		contentEle.style.display="";
		//调用合买大厅数据
		if(typeFun!=null && typeFun!=""){
			hmList(parseInt(typeFun,10));
		}
	}
	op.extend = function (destination, source, override) {
		if (override === undefined) override = true;
		for (var property in source) {
			if (override || !(property in destination)) {
				destination[property] = source[property];
			}
		}
		return destination;
	};
	op.getById = function (id) {
		return "string" == typeof id ? document.getElementById(id) : id;
	};
})();

/*
function getLogo(val){
	var hasFlash = false;
	if(document.all){
		var swf = new ActiveXObject('ShockwaveFlash.ShockwaveFlash'); 
		if(swf) {
			hasFlash = true;
		}
	}else{
		if (navigator.plugins && navigator.plugins.length > 0){
			var swf=navigator.plugins["Shockwave Flash"];
			if (swf){
				hasFlash = true;
			}
		}
	}
	
	var getDT = function(y,M,d,H,m,s){
		return new Date(y,M-1,d,(H?H:0),(m?m:0),(s?s:0)).getTime();
	}
	var serverDate = getServerDateByLong();
	
	if(serverDate >= getDT(2012,5,10) && serverDate <= getDT(2012,5,13))
		val = 1;
		
	if(val == 1){
		document.write('<a href="http://www.cailele.com/static/news/show_10051123.shtml" style="background-image: url(http://img.cailele.com/img_new/logo_12_05_13.png);width: 178px;height: 62px;margin-top:0px;" title="感恩母亲节,送张彩票给妈妈!"></a>');
		return;
	}
	
	if(hasFlash){
		var serverDate = getServerDateByLong();
		if(serverDate >= getDT(2012,2,4) && serverDate <= getDT(2012,2,8))
			val = 1;
		
		if(val == 1){
			document.write('<a href="http://www.cailele.com" style="background-image: url(http://img.cailele.com/img_new/logo_2012_1_15.jpg);width: 178px;height: 62px;margin-top:0px;" title="彩乐乐祝所有彩民元宵节快乐!"></a>');
			return;
		}else if(serverDate >= getDT(2012,4,28) && serverDate <= getDT(2012,5,3))
			val = 2;
		var flashPath = "";
		var title = "";
		if(val == 2){
			flashPath = "/flash/logo_LaborDay.swf";
			title = "彩乐乐祝所有彩民五一劳动节快乐!";
		}
		
		if(flashPath != ""){
			flash(flashPath, "logoSWF", "178px", "62px", { quality: "high", menu: "false", wmode: "transparent", allowScriptAccess: "always", allowNetworking: "all", allowFullScreen: "true" },title);
			return;
		}
	}
	document.write('<a href="http://www.cailele.com" title="首页"></a>');
	return;
}

function changeRightInfo(css, index) {
	for (var i = 1; i <= 2; i++) {
		if (i == index) {
			$("#menu_2_" + i).attr("class", css);
			$("#more_2_" + i).show();
			$("#tab_2_" + i).show();
		} else {
			$("#menu_2_" + i).attr("class", "");
			$("#more_2_" + i).hide();
			$("#tab_2_" + i).hide();
		}
	}
	return;
}
function changeRightInfoTab(li, index) {
	var ul = li.parentNode;
	var list = ul.getElementsByTagName("LI");
	var ulList = ul.parentNode.getElementsByTagName("UL");
	for (var i = 0; i < list.length; i++) {
		list[i].className = "";
		ulList[i + 1].style.display = "none";
	}
	li.className = "current";
	ulList[index].style.display = "inline-block";
	return;
}
*/

function focusBox() {
	var $fid = function (id) {
		return document.getElementById(id);
	};
	var imgList = index_focus_imgList;
	var textList = index_focus_textList;
	var urlList = index_focus_urlList;
	var imgId = "imgDIVID";
	var textId = "textID";
	var btnId = "imgIndexID";
	var count = imgList.length;
	var current = 1;
	var box = $fid(imgId);
	var text = $fid(textId);
	var btnUL = $fid(btnId);
	var fn = null;
	var changeIndex = function (index) {
		if (!index || typeof (index) == "object") {
			index = parseInt(this.innerHTML);
			if (current == index) {
				return;
			}
			clearTimeout(fn);
			current = index;
		}
		index = index - 1;
		box.style.background='';
		box.style.backgroundColor='#FFFFFF';
		text.innerHTML = textList[index];
		text.href = urlList[index];
		text.title = text.innerHTML;
		var imgs = box.getElementsByTagName("A");
		var btn = btnUL.getElementsByTagName("LI");
		for (var i = 0; i < count; i++) {
			if (i == index) {
				btn[i].className = "current";
			} else {
				btn[i].className = "";
			}
		}
		var bImgA = $(box).find("A:visible");
		if (bImgA.length > 0) {
			bImgA.find("IMG").fadeTo("fast", 0, function () {
				bImgA.hide();
			});
		}
		var next = $(imgs[index]);
		next.show();
		var nextImg = next.find("IMG");
		var src = nextImg.attr("src");
		if(src == undefined || src == null || src == ""){
			nextImg.attr("src",imgList[index]);
			nextImg.load(function(){
				$(this).css("background-image","");
				$(this).parent().css("background-image","");
			});
		}
		nextImg.fadeTo(400, 1);
		fn = setTimeout(autoChange, 5000);
		return;
	};
	var autoChange = function () {
		current++;
		if (current >= count + 1) {
			current = 1;
		}
		changeIndex(current);
		return;
	};
	for (var i = 0; i < count; i++) {
		var imga = document.createElement("A");
		var img = document.createElement("IMG");
		img.src = "";
		img.style.display = "none";
		imga.href = urlList[i];
		imga.title = textList[i];
		imga.target = "_blank";
		imga.style.display = "none";
		imga.appendChild(img);
		box.appendChild(imga);
		var li = document.createElement("LI");
		li.innerHTML = (i + 1);
		li.onclick = changeIndex;
		li.onmouseover = changeIndex;
		btnUL.appendChild(li);
	}
	changeIndex(current);
}

//滚动开奖信息
function scrollAwardList(div) {
	var ul = $("#awardListUL");
	var top = parseInt(ul.css("margin-top"));
	//var css = "awardListBtnDIV-down";
	var t = 0;
	if (top == 0) {
		t = -360;
		//css = "awardListBtnDIV-up";
	}
	ul.animate({"margin-top":t + "px"}, "360", function () {
		//div.className = css;
		div.onmouseover = function () {
			//div.className = css + "Hover";
		};
		div.onmouseout = function () {
			//div.className = css;
		};
	});
	return;
}

//滚动最新高频彩种列表
function scrollHighAwardList(div) {
	var table = $("#highAwardListTable");
	var top = parseInt(table.css("margin-top"));
	var css = "showHighLotteryDIV-down";
	var t = 0;
	if (top == 0) {
		t = -232;
		css = "showHighLotteryDIV-up";
	}
	table.animate({"margin-top":t + "px"}, "100", function () {
		div.className = css;
		div.onmouseover = function () {
			div.className = css + "Hover";
		};
		div.onmouseout = function () {
			div.className = css;
		};
	});
	return;
}

/*加载合买列表*/
$(document).ready(function () {
	//图片延时加载 begin
	function checkbrowse() {
	    var ua = navigator.userAgent.toLowerCase();
	    var is = (ua.match(/\b(chrome|opera|safari|msie|firefox)\b/) || ['', 'mozilla'])[1];
	    var r = '(?:' + is + '|version)[\\/: ]([\\d.]+)';
	    var v = (ua.match(new RegExp(r)) || [])[1];
	    jQuery.browser.is = is;
	    jQuery.browser.ver = v;
	    return {
	        'is': jQuery.browser.is,
	        'ver': jQuery.browser.ver
	    }
	}
	
	$.ajax({type:"POST", cache:false, url:ctx_jsonp+"/static/index_new_img.html?v="+new Date().getTime(), success:function (html) {
		$("#indexFocusHTML").html(html);
		//加载焦点图
		getFocusBox();
		
	}});
	
	var public = checkbrowse();
	var showeffect = "";
	if ((public['is'] == 'msie' && public['ver'] < 8.0)) {
  		showeffect = "show"
	} else {
  		showeffect = "fadeIn"
	}
	$("img.lazy").lazyload({
     	placeholder:"http://img.cailele.com/img_new/blank.gif",
     	effect: showeffect
	});
	//图片延时加载end
	
	try{
		//获取开奖提示和奖池提示的中间一条合买资讯
		var str =  $("#indexintroDIV span.m font.current").attr("onclick") + "";
		var index = str.lastIndexOf("'");
		str = str.substr(0,index);
		index = str.lastIndexOf("'");
		str = str.substr(index+1);
		getIntroinfo(str);
	}catch(e){}
	
	//获取合买数据
	$.ajax({type:"POST", cache:false, url:"/hm/indexVerHm.php?lotType=0", success:function (html) {
		$("#hmdatalist_0").html(html);
		jQuery(".picscorll").slide({titCell:".h_d ul",mainCell:".b_d ul",autoPage:true,effect:"left",autoPlay:false,vis:3,trigger:"click",pnLoop:true});
	}});
});

function changeTrBgColor(tr, css) {
	tr.className = css;
}

function getFocusBox(){
	document.getElementById("indexFocusDIV").innerHTML = '<div class="imgDIV" id="imgDIVID"></div>' +
       '<div class="focusTextDIV"><div class="textListBorder">' +
       '<ul id="imgIndexID"></ul><span class="text"><a href="#" id="textID" target="_blank"></a></span>' +
       '</div></div>';
    try{focusBox();}catch(e){}
   	return;
}

//合买大厅
function hmList(lotType){
	//获取合买数据
	$.ajax({type:"POST", cache:false, url:"/hm/indexVerHm.php?lotType="+lotType, success:function (html) {
		$("#hmdatalist_"+lotType).html(html);
	}});
}

//顶部登录样式添加其它登录链接
function addTopLoginLeftSPANHTML(){
	var topLoginLeftSPAN = $("#topLoginLeftSPAN");
	var html = topLoginLeftSPAN.html() + "";
	var domain = document.domain.toLowerCase();
	if(html.toLowerCase().indexOf('彩乐乐欢迎您的到来') > -1 && domain != "cp.fjsen.com"){
		topLoginLeftSPAN.html(html + '<font>|</font><a href="http://www.cailele.com/member/loginZFB.php?action=login" title="支付宝登录">支付宝登录</a>' + 
			'<font>|</font><label class="otherLoginLabel" onmouseover="openOtherLoginPanel(this,0);" onmouseout="openOtherLoginPanel(this,1);">' +
			'<a href="http://www.cailele.com/member/loginQQ.php?action=login" title="QQ帐号登录" class="tt"><i></i>登录</a>' + 
			'<a href="http://www.cailele.com/member/loginTianYa.php?action=login" title="天涯帐号登录">天涯登录</a>' +
			'<a href="http://www.cailele.com/member/loginBaidu.php?action=login" title="百度账号登录">百度登录</a>'+
			'<a href="http://www.cailele.com/member/loginCFT.php?action=login" title="财付通帐号登录">财付通</a>'+
			'<a href="http://www.cailele.com/member/loginE189.php?action=login" title="天翼帐号登录">天翼登录</a></label>');
	}
	return;
}

//顶部登录样式添加其它登录链接
function addTopLoginLeftDIVHTML(){
	var topLoginLeftDIV = $("#topLoginLeftDIV");
	var html = topLoginLeftDIV.html() + "";
	var domain = document.domain.toLowerCase();
	if(html.toLowerCase().indexOf('彩乐乐欢迎您的到来') > -1 && domain == "cp.fjsen.com"){
		$("#loginSeparator").css("display", "none");
		$("#alipayunLogin").css("display", "none");
		$("#unloginUL").css("display", "none");
	}
	return;
}

function openOtherLoginPanel(label,val){
	if(val == 0)
		label.className = "otherLoginLabel_hover";
	else
		label.className = "otherLoginLabel";
	return;
}

function showlazy(obj){
	$(obj).find(".lazy").each(function(){
		var img = $(this);
		var tag = img.attr("tag");
		if(tag == undefined || tag == null || tag == ""){
			img.attr("src",img.attr("data-original"));
			img.loaded = true;
			img.attr("loaded",true);
		}
		img.css({"opacity":"0",visibility:'visible'});
		img.animate({opacity: 1},'fast',function(){img.attr("tag","0");});
	});
	return;
}

/*合买 begin*/
isSubmit = false;
function invest(type,pl) {
	parent.checkLogin(function () {
		investInner(type,pl);
	});
}
function investInner(type,pl) {
	if (isSubmit) {
		return false;
	}
	isSubmit = true;
	var amount = $("#amount_" + type + "_" + pl).val();
	if (amount == "") {
		var fn = function(){
			$("#amount_" + type + "_" + pl).focus();
			isSubmit = false;
		}
		parent.cll_alert("\u8bf7\u8f93\u5165\u91d1\u989d\uff01",fn);
		return false;
	}
	cll_confirm("\u786e\u8ba4\u8d2d\u4e70" + amount + "\u5143\u5417\uff1f", function () {
		var url = "/trade/invest.php?planNo=" + pl + "&amount=" + amount;
		var json = {charset:"GBK", url:url, onsuccess:tradeBack, onfail:function () {
			parent.cll_alert("\u63d0\u4ea4\u5931\u8d25\uff01");
			isSubmit = false;
		}};
		fw.ajax.request(json);
	}, function () {
		isSubmit = false;
		return false;
	});
}

function tradeBack(o) {
	var json = eval("(" + o + ")");
	parent.cll_alert(json.message);
	isSubmit = false;
	if (json.code == "2000") {
		parent.loginHead.loginForm.username.focus();
	}
	if (json.code == 4002) {
		parent.location.href = "/member/index.php?open=charge";
	}
}
/* 合买 end*/
var tradeSsq = {};
tradeSsq.currentTerm = "";
var tradeDlt = {};
tradeDlt.currentTerm = "";
tradeInfo = {};
tradeTerm = {};
var deltaTime = 0; //本地时间与服务器时间截差
//定时更新
tradeInfo.setUp = function (id, cb, s) {
	fw.getId(id) && (cb(), window.setInterval(cb, s * 1000));
};

var currentDate = null;
function loadMain() {
	try{
		currentDate = getServerDateByLong();
	}catch(e){}
	try{
		if(currentDate == null){
			currentDate = new Date().getTime();
		}
		var timer = function(){
			currentDate += 1000;
			return;
		}
		setInterval(timer, 1000);
	}catch(e){}
	deltaTime = new Date().getTime() - currentDate; //初始化
	initTermInfoSsq(100);
	initTermInfoDlt(1);
//	initTheHomeBetting();
	moveList("newlyPrizeGp",4000);
	JSNEW_SSQ(1,"ssq_num");
	return;
}

//---------------------------------滚动------------------------------------
function moveList(obj,type){
  var o = typeof(obj)=="string" ? document.getElementById(obj) : obj;
  if(o == null) {
	return;
  }
  var dltH = 0;
  var currPos = 0;
  setInterval(
  	function()
			{
				dltH = o.scrollHeight; //每次移动前要动态计算一次
				var xx = setInterval(
				      	function(){
							  if(++currPos >= (dltH/2)){currPos=0;}
							  if(currPos%22==0)clearInterval(xx);
							  o.scrollTop = currPos;
						}  	, 28 );
			}, type );
}

function stringToDateTime(postdate) {
	var second = 1000;
	var minutes = second * 60;
	var hours = minutes * 60;
	var days = hours * 24;
	var months = days * 30;
	var twomonths = days * 365;
	var myDate = new Date(Date.parse(postdate));
	if (isNaN(myDate)) {
		myDate = new Date(postdate.replace(/-/g, "/"));
	}
	var nowtime = new Date();
	var longtime = nowtime.getTime() - myDate.getTime();
	var showtime = 0;
	if (longtime > months * 2) {
		return myDate.getFullYear() + "-" + (myDate.getMonth() + 1) + "-" + myDate.getDate();
		//return postdate; 
	} else {
		if (longtime > months) {
			return "1\u4e2a\u6708\u524d";
		} else {
			if (longtime > days * 7) {
				return ("1\u5468\u524d");
			} else {
				if (longtime > days) {
					return (Math.floor(longtime / days) + "\u5929\u524d");
				} else {
					if (longtime > hours) {
						return (Math.floor(longtime / hours) + "\u5c0f\u65f6\u524d");
					} else {
						if (longtime > minutes) {
							return (Math.floor(longtime / minutes) + "\u5206\u949f\u524d");
						} else {
							if (longtime > second) {
								return (Math.floor(longtime / second) + "\u79d2\u524d");
							} else {
								return (longtime + " error ");
							}
						}
					}
				}
			}
		}
	}
}
/******************************双色球&大乐透start****************************************/
var isShowTermTip = false;
function initTermInfoSsq(lotteryType) {
	tradeTerm.lotteryTypeSsq = lotteryType;
	$.get("/static/termInfo/" + tradeTerm.lotteryTypeSsq + ".txt?v=" + new Date().getTime(), setInitTermInfoSsq);
}
function initTermInfoDlt(lotteryType) {
	tradeTerm.lotteryTypeDlt = lotteryType;
	$.get("/static/termInfo/" + tradeTerm.lotteryTypeDlt + ".txt?v=" + new Date().getTime(), setInitTermInfoDlt);
}
/**********双色球倒计时***********/
function setInitTermInfoSsq(resp) {
	var json = eval("(" + resp + ")");
	tradeTerm.currentTermSsq = json.currentTerm;
	tradeTerm.currentTermRTSsq = json.currentTermEndDTByLong;
	tradeTerm.awardPoolSsq = json.awardPool;
	if (tradeTerm.awardPoolSsq != null) {
		if (tradeTerm.awardPoolSsq.length == 10) {
			$("#pool_100_1").html(tradeTerm.awardPoolSsq.substring(0, 2));
			$("#pool_100_2").html(tradeTerm.awardPoolSsq.substring(2, 6));
			$("#pool_100_3").html(tradeTerm.awardPoolSsq.substring(6, 10));
		}
		if (tradeTerm.awardPoolSsq.length == 9) {
			$("#pool_100_1").html(tradeTerm.awardPoolSsq.substring(0, 1));
			$("#pool_100_2").html(tradeTerm.awardPoolSsq.substring(1, 5));
			$("#pool_100_3").html(tradeTerm.awardPoolSsq.substring(5, 9));
		}
		if (tradeTerm.awardPoolSsq.length == 8) {
			$("#pool_100_1").hide();
			$("#pool_100").hide();
			if($("#pool_100_v").length>0){
				$("#pool_100_v").hide();
				$("#pool_100_1_v").hide();
			}
			
			$("#pool_100_2").html(tradeTerm.awardPoolSsq.substring(0, 4));
			$("#pool_100_3").html(tradeTerm.awardPoolSsq.substring(4, 8));
		}
		if (tradeTerm.awardPoolSsq.length == 7) {
			$("#pool_100_1").hide();
			$("#pool_100").hide();
			if($("#pool_100_v").length>0){
				$("#pool_100_v").hide();
				$("#pool_100_1_v").hide();
			}
			$("#pool_100_2").html(tradeTerm.awardPoolSsq.substring(0, 3));
			$("#pool_100_3").html(tradeTerm.awardPoolSsq.substring(3, 7));
		}
		if (tradeTerm.awardPoolSsq.length == 6) {
			$("#pool_100_1").hide();
			$("#pool_100").hide();
			if($("#pool_100_v").length>0){
				$("#pool_100_v").hide();
				$("#pool_100_1_v").hide();
			}
			$("#pool_100_2").html(tradeTerm.awardPoolSsq.substring(0, 2));
			$("#pool_100_3").html(tradeTerm.awardPoolSsq.substring(2, 6));
		}
		if (tradeTerm.awardPoolSsq.length == 5) {
			$("#pool_100_1").hide();
			$("#pool_100").hide();
			if($("#pool_100_v").length>0){
				$("#pool_100_v").hide();
				$("#pool_100_1_v").hide();
			}
			$("#pool_100_2").html(tradeTerm.awardPoolSsq.substring(0, 1));
			$("#pool_100_3").html(tradeTerm.awardPoolSsq.substring(1, 5));
		}
	}
	if($("#pool_100_v").length>0){
		$("#pool_100_1_v").html($("#pool_100_1").html());
		$("#pool_100_2_v").html($("#pool_100_2").html());
	}
	$("#currentTerm_" + tradeTerm.lotteryTypeSsq).html(tradeTerm.currentTermSsq);
	if($("#currentTerm_" + tradeTerm.lotteryTypeSsq+"_v").length>0){
		$("#currentTerm_" + tradeTerm.lotteryTypeSsq+"_v").html(tradeTerm.currentTermSsq);
	}
	
	
    $("#saleRTShow_" + tradeTerm.lotteryTypeSsq).countdown({
    	daysText 	: '天',
        hoursText	: '时',
        minutesText	: '分',
        secondsText	: '秒',
        textAfterCount	: '销售截止',
        deltaTime	: deltaTime,
        endTime		: tradeTerm.currentTermRTSsq,	
        displayZeroDays : true,
        callback	: reqUpdateSaleRTSsq,
        callbackTime: getDeltaTime
    });
}

function reqUpdateSaleRTSsq() {  
	setTimeout(function(){
			initTermInfoSsq(tradeTerm.lotteryTypeSsq);
		}, 1000);
}
/**************大乐透倒计时*****************/
function setInitTermInfoDlt(resp) {
	var json = eval("(" + resp + ")");
	tradeTerm.currentTermDlt = json.currentTerm;
	tradeTerm.currentTermRTDlt = json.currentTermEndDTByLong;
	tradeTerm.awardPoolDlt = json.awardPool;
	if (tradeTerm.awardPoolDlt != null) {
		if (tradeTerm.awardPoolDlt.length == 10) {
			$("#pool_1_1").html(tradeTerm.awardPoolDlt.substring(0, 2));
			$("#pool_1_2").html(tradeTerm.awardPoolDlt.substring(2, 6));
			$("#pool_1_3").html(tradeTerm.awardPoolDlt.substring(6, 10));
		}
		if (tradeTerm.awardPoolDlt.length == 9) {
			$("#pool_1_1").html(tradeTerm.awardPoolDlt.substring(0, 1));
			$("#pool_1_2").html(tradeTerm.awardPoolDlt.substring(1, 5));
			$("#pool_1_3").html(tradeTerm.awardPoolDlt.substring(5, 9));
		}
		if (tradeTerm.awardPoolDlt.length == 8) {
			$("#pool_1_1").hide();
			$("#pool_1").hide();
			if($("#pool_1_v").length>0){
				$("#pool_1_1_v").hide();
				$("#pool_1_v").hide();
			}
			$("#pool_1_2").html(tradeTerm.awardPoolDlt.substring(0, 4));
			$("#pool_1_3").html(tradeTerm.awardPoolDlt.substring(4, 8));
		}
		if (tradeTerm.awardPoolDlt.length == 7) {
			$("#pool_1_1").hide();
			$("#pool_1").hide();
			if($("#pool_1_v").length>0){
				$("#pool_1_1_v").hide();
				$("#pool_1_v").hide();
			}
			$("#pool_1_2").html(tradeTerm.awardPoolDlt.substring(0, 3));
			$("#pool_1_3").html(tradeTerm.awardPoolDlt.substring(3, 7));
		}
		if (tradeTerm.awardPoolDlt.length == 6) {
			$("#pool_1_1").hide();
			$("#pool_1").hide();
			if($("#pool_1_v").length>0){
				$("#pool_1_1_v").hide();
				$("#pool_1_v").hide();
			}
			$("#pool_1_2").html(tradeTerm.awardPoolDlt.substring(0, 2));
			$("#pool_1_3").html(tradeTerm.awardPoolDlt.substring(2, 6));
		}
		if (tradeTerm.awardPoolDlt.length == 5) {
			$("#pool_1_1").hide();
			$("#pool_1").hide();
			if($("#pool_1_v").length>0){
				$("#pool_1_1_v").hide();
				$("#pool_1_v").hide();
			}
			$("#pool_1_2").html(tradeTerm.awardPoolDlt.substring(0, 1));
			$("#pool_1_3").html(tradeTerm.awardPoolDlt.substring(1, 5));
		}
	}
	if($("#pool_1_v").length>0){
		$("#pool_1_1_v").html($("#pool_1_1").html());
		$("#pool_1_2_v").html($("#pool_1_2").html());
	}
	$("#currentTerm_" + tradeTerm.lotteryTypeDlt).html(tradeTerm.currentTermDlt);
	if($("#currentTerm_" + tradeTerm.lotteryTypeDlt+"_v").length>0){
		$("#currentTerm_" + tradeTerm.lotteryTypeDlt+"_v").html(tradeTerm.currentTermDlt);
	}
	
	$("#currentTerm_" + tradeTerm.lotteryTypeDlt).html(tradeTerm.currentTermDlt);

    $("#saleRTShow_" + tradeTerm.lotteryTypeDlt).countdown({
		daysText 	: '天',
		hoursText	: '时',
		minutesText	: '分',
		secondsText	: '秒',
		textAfterCount	: '销售截止',
        deltaTime	: deltaTime,		
		endTime		: tradeTerm.currentTermRTDlt,	
		displayZeroDays : true,
		callback	: reqUpdateSaleRTDlt,
        callbackTime: getDeltaTime
   });
}

function reqUpdateSaleRTDlt() {  
	setTimeout(function(){
			initTermInfoDlt(tradeTerm.lotteryTypeDlt);
		}, 1000);
}

function getCountDownTime(){ //本地时间与服务器时间截差
	serverDateByLong = null;
	getServerDateByLong();
	deltaTime = new Date().getTime() - serverDateByLong;
	return deltaTime;
}

//本地时间修改更新本地时间与服务器差值
function getDeltaTime(obj){
	if(obj.deltaTime == deltaTime){
		getCountDownTime();
	}
	 obj.deltaTime = deltaTime;
}

function timeSlot(beginTime,endTime){
	var bd = Date.parse(beginTime);
	var ed = Date.parse(endTime);
	if(bd < currentDate && ed > currentDate){
		return true;	
	}else{
		return false;
	}
}

window.indexTabOptions = {tabs:{"menu_2_1":"tab_2_1", "menu_2_2":"tab_2_2", "menu_2_3":"tab_2_3"}, activeClass:"current", defaultClass:""};
window.videoTabOptions = {tabs:{"menu_3_1":"tab_3_1", "menu_3_2":"tab_3_2"}, activeClass:"current", defaultClass:""};
window.cmsTabOptions = {tabs:{"menu_4_1":"tab_4_1", "menu_4_2":"tab_4_2", "menu_4_3":"tab_4_3"}, activeClass:"current", defaultClass:""};
window.awardTabOptions = {tabs:{"menu_5_1":"tab_5_1", "menu_5_2":"tab_5_2", "menu_5_3":"tab_5_3"}, activeClass:"current", defaultClass:""};
window.hmTabOptions = {tabs:{"menu_6_1":"tab_6_1", "menu_6_2":"tab_6_2", "menu_6_3":"tab_6_3", "menu_6_4":"tab_6_4", "menu_6_5":"tab_6_5", "menu_6_6":"tab_6_6", "menu_6_7":"tab_6_7"}, activeClass:"current", defaultClass:""};

function chnageAnalyse(li,id,index){
	var css = "current";
	if(li.className == css)
		return;
	$(li).parent().find("li." + css).removeClass(css);
	li.className = css;
	var table = $("#analyseTable_" + id);
	table.find("tr:visible").hide();
	var tr = $(table.find("tr").get(index));
	tr.show();
	try{
		showlazy(tr);
	}catch(e){}
	return;
}
function showUserInfoDIV(val){
	if(val){
		$("#userInfoDIV").fadeOut(200);
		return;
	}
	$("#userInfoDIV").fadeIn(200);
	return;
}
