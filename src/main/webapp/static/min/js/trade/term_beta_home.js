/***
 *	  info:包括数字彩初始化期数,获取期数信息,销售截止倒计时,开奖截止倒计时功能
**/

// currentTerm            当前期
// currentTermRT          当前期截止剩余时间
// currentTermEndDT       当前期截止时间-字符型
// currentTermEndDTByLong 当前期截止时间-数字型
// openTerm               最后开奖期数
// openResult             最后开奖结果
// awardPool              奖池
// openTermRT             下次开奖剩余时间
// openTermDT             下次开奖时间-字符型
// openTermDTByLong       下次开奖时间-数字型
// serverTimeByLong       当前服务器时间-数字型
var tradeTerm1 = {};
tradeTerm1.currentTermIsAble = "0";
var tradeTerm2 = {};
tradeTerm2.currentTermIsAble = "0";

/******************************初使化&start****************************************/
function initTermInfo1(lotteryType) {
	tradeTerm1.lotteryType = lotteryType;
	$.get("/static/termInfo/" + tradeTerm1.lotteryType + ".txt?v=" + new Date().getTime(), setInitTermInfo1);
}

function initTermInfo2(lotteryType) {
	tradeTerm2.lotteryType = lotteryType;
	$.get("/static/termInfo/" + tradeTerm2.lotteryType + ".txt?v=" + new Date().getTime(), setInitTermInfo2);
}

function setInitTermInfo1(resp){
	var json = eval("(" + resp + ")");
	tradeTerm1.currentTerm = json.currentTerm;
	tradeTerm1.currentTermRT = json.currentTermEndDTByLong;
	tradeTerm1.currentTermIsAble = json.currentTermIsAble;
	fw.getId("currentTermOne").innerHTML = formatTerm(tradeTerm1.currentTerm);
	if(tradeTerm1.currentTermIsAble != '0'){
	 	$("#pEndTimeOne").html("<span class='beat_pause'>暂停销售</span>");
		$("#btn_href_one").addClass("beat_disable");
		reqUpdateSaleRT1();
	}else{
	    $("#pEndTimeOne").countdown({
			daysText 	: '天',
			hoursText	: '时',
			minutesText	: '分',
			secondsText	: '秒',
			textAfterCount	: "<span class='kkcountdown-box'><span class='kkc-min'>00</span><span class='kkc-min-text'>分</span><span class='kkc-sec'>00</span><span class='kkc-sec-text'>秒</span></span>",
			endTime		: 	tradeTerm1.currentTermRT,
        	deltaTime	: deltaTime,
			displayZeroDays : false,
			displayZeroHours: false,
			callback	: reqUpdateSaleRT1,
	        callbackTime: getDeltaTime
	   });
	 }	  
}

function reqUpdateSaleRT1() {  
	setTimeout(function(){
			initTermInfo1(tradeTerm1.lotteryType);
		}, 30000);
}

function setInitTermInfo2(resp){
	var json = eval("(" + resp + ")");
	tradeTerm2.currentTerm = json.currentTerm;
	tradeTerm2.currentTermRT = json.currentTermEndDTByLong;
	tradeTerm2.currentTermIsAble = json.currentTermIsAble;
	fw.getId("currentTermTwo").innerHTML = formatTerm(tradeTerm2.currentTerm);
	if(tradeTerm2.currentTermIsAble != '0'){
	 	$("#pEndTimeTwo").html("<span class='beat_pause'>暂停销售</span>");
		$("#btn_href_two").addClass("beat_disable");
		reqUpdateSaleRT2();
	}else{
		$("#pEndTimeTwo").countdown({
			daysText 	: '天',
			hoursText	: '时',
			minutesText	: '分',
			secondsText	: '秒',
			textAfterCount	: "<span class='kkcountdown-box'><span class='kkc-min'>00</span><span class='kkc-min-text'>分</span><span class='kkc-sec'>00</span><span class='kkc-sec-text'>秒</span></span>",
	        deltaTime	: deltaTime,
			endTime		: 	tradeTerm2.currentTermRT,	
			displayZeroDays : false,
			displayZeroHours: false,
			callback	: reqUpdateSaleRT2,
	        callbackTime: getDeltaTime
		  });		
	}
}

function reqUpdateSaleRT2() {
	setTimeout(function(){
			initTermInfo2(tradeTerm2.lotteryType);
		}, 30000);
}

function formatTerm(term) {
	var len = term.length;
	var startLen = 0; 
	if(len == 8 || len == 9) {
		startLen = 2;
	} else if(len == 10 || len == 11) {
		startLen = 4;
	}
	return term.substring(startLen);
}

/****************************开奖******************************************/

/******************2015新版调用 start***************************/
function initTheHomeBetting(){
	var lotteryOne = $("#push_k3").attr("lotteryType");
	var lotteryTwo = $("#push_11x5").attr("lotteryType");

	if(lotteryOne === undefined || lotteryTwo === undefined) return false;
	initTermInfo1(lotteryOne);
	initTermInfo2(lotteryTwo);
	setInterval("pushLottery()",30000);
}

//定时刷新推送区域
function pushLottery(){
	$("#push_k3").load("/static/betting/betting_lottery_k3_v4.html?v="+new Date().getTime(),function(){
		fw.getId("currentTermOne").innerHTML = formatTerm(tradeTerm1.currentTerm);
		if(tradeTerm1.currentTermIsAble != "0"){
			$("#btn_href_one").addClass("beat_disable");
		}
	});
	$("#push_11x5").load("/static/betting/betting_lottery_11x5_v4.html?v="+new Date().getTime(),function(){
		fw.getId("currentTermTwo").innerHTML = formatTerm(tradeTerm2.currentTerm);
		if(tradeTerm2.currentTermIsAble != "0"){
			$("#btn_href_two").addClass("beat_disable");
		}
	});
//	$("#push_jczq").load("/static/betting/betting_lottery_jczq.html?v="+new Date().getTime());
}
/******************2015新版调用 end***************************/
