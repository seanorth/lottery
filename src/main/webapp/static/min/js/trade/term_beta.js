/***
 *	  info:包括数字彩初始化期数,获取期数信息,销售截止倒计时,开奖截止倒计时功能
 *  author:sxh
 *    date:2011-11-15
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
var tradeTerm = {};
tradeTerm.currentTerm = "";
tradeTerm.currentTermRT = 0;
tradeTerm.currentTermEndDT = "";
tradeTerm.currentTermEndDTByLong = 0;
tradeTerm.openTerm = "";
tradeTerm.openResult = "";
tradeTerm.awardPool = "";
tradeTerm.openTermRT = 0;
tradeTerm.openTermDT = "";
tradeTerm.openTermDTByLong = 0;
tradeTerm.serverTimeByLong = 0;
tradeTerm.isUpdateOpenTime = 1;
tradeTerm.currentTermIsAble = 0;

var randomOpenTimer;
var getOpenTimer;
var waitOpenTime = 0;
var isShowTermTip = true;//期数切换提示

function reqUpdateOpenRT(){
	tradeTerm.openTermRT -= 1;
	if(tradeTerm.openTermRT > 0) {
		if(tradeTerm.openTermRT %60*1000 ==0) {
			getOpenInfo(trade.lotteryType);
		}
		clearTimeout(getOpenTimer);
		getOpenTimer = setTimeout("reqUpdateOpenRT();", 1000);
		//var openShow = fw.conv.rtForShow(tradeTerm.openTermRT);
		//fw.getId("openRTShow").innerHTML = openShow;
	}else{
		tradeTerm.isUpdateOpenTime = 0;
		if(waitOpenTime%3000 == 0){
			getOpenInfo(trade.lotteryType);
		}
		waitOpenTime += 1000;
		if(randomOpenTimer == null){
			randomOpenTimer = setTimeout("showRandomOpenTimer("+trade.codeCount+",1);", 100);
		}
		clearTimeout(getOpenTimer);
		getOpenTimer = setTimeout("reqUpdateOpenRT();", 1000);
	}
}

function reqUpdateSaleRT(){
	tradeTerm.currentTermRT -= 1;
	if(tradeTerm.currentTermRT > 0){
		setTimeout("reqUpdateSaleRT();", 1000);
		var saleShow;
		if(trade.lotteryType == 100) {//双色球
			saleShow = cll.rtForShow(tradeTerm.currentTermRT);
			var times = saleShow.split(":");
			saleShow = "<label>"+ times[0] +"</label><font>天</font><label>"+ times[1] +"</label><font>时</font><label>"+ times[2] +"</label><font>分</font><label>"+ times[3] +"</label><font>秒</font>";
			fw.getId("saleRTShow").innerHTML = saleShow;
		} else {
			saleShow = fw.conv.rtForShow(tradeTerm.currentTermRT);
			fw.getId("saleRTShow").innerHTML = saleShow;
		}
		var saleChaseShow = cll.rtForChaseShow(tradeTerm.currentTermRT);
		if(fw.get("pzTime")){
			$("#pzTime").html(saleChaseShow);
		}
		if(fw.get("zzTime")){
			$("#zzTime").html(saleChaseShow);
		}
	}else{
		fw.getId("saleRTShow").innerHTML = "销售截止";
		if(isShowTermTip) {
			cll_alert("<font color='#FF0000'>"+ tradeTerm.currentTerm +"</font>期已截止，投注时请确认您的期号。");
		}
		getTermInfo (trade.lotteryType);
	}
}

function initTermInfo (lotteryType){
	getCurrentServerTime();
	$.get(ctx_jsonp+"/static/termInfo/P"+ trade.lotteryType +".txt?v="+new Date().getTime(),setInitTermInfo);
}

function getTermInfo (lotteryType){
	getCurrentServerTime();
	$.get(ctx_jsonp+"/static/termInfo/P"+ trade.lotteryType +".txt?v="+new Date().getTime(),setTermInfo);
}

function getOpenInfo (lotteryType){
	getCurrentServerTime();
	$.get(ctx_jsonp+"/static/termInfo/P"+ trade.lotteryType +".txt?v="+new Date().getTime(),setOpenInfo);
}

function showRandomOpenTimer(count,size){
	var maxValue = 0;
	if(size == 1){
		maxValue = 9;
	}else{
		maxValue = 99;
	}

	for( var i=1;i<=count;i++){
		ranNums = fw.math.random(0,maxValue);
		if(size != 1){
			document.getElementById("openResult"+i).innerHTML = "0"+ranNums;
		}else{
			document.getElementById("openResult"+i).innerHTML = ranNums+"";
		}
	}
	randomOpenTimer = setTimeout("showRandomOpenTimer("+trade.codeCount+",1);", 100);
}

function setTermInfo(resp){
	var json = eval("(" + resp + ")");
	if(json.currentTerm == tradeTerm.currentTerm){
		//更新剩余时间
		tradeTerm.currentTermRT = getCurrentTermRT(json.currentTermEndDTByLong);
		isShowTermTip = false;
		setTimeout("reqUpdateSaleRT();", 1000);
		return;
	}
	isShowTermTip = true;
	tradeChase.onTermEnd(tradeTerm.currentTerm);
	tradeTerm.currentTerm = json.currentTerm;
	tradeTerm.currentTermRT = getCurrentTermRT(json.currentTermEndDTByLong);
	tradeTerm.currentTermEndDT = json.currentTermEndDT;
	fw.getId("currentTerm").innerHTML = tradeTerm.currentTerm;
	reqUpdateSaleRT();
	showWeek();
}

function setOpenInfo(resp){
	if(resp===""){
		return;
	}
	var json = eval("(" + resp + ")");

	if(tradeTerm.openTerm != json.openTerm){
		clearTimeout(randomOpenTimer);
		randomOpenTimer = null;
		waitOpenTime = 0;
		
		tradeTerm.openTerm = json.openTerm;
		tradeTerm.openResult = json.openResult;
		tradeTerm.awardPool = json.awardPool;
		tradeTerm.openTermRT = getOpenTermRT(json.openTermDTByLong);
		if(fw.getId("openTerm")) {
			fw.getId("openTerm").innerHTML = tradeTerm.openTerm;
		}
		if(fw.getId("awardPool")&& tradeTerm.awardPool){
			fw.getId("awardPool").innerHTML = tradeTerm.awardPool;
		}
		codes = tradeTerm.openResult.split("#")[0].split(",");
		for(var i=0;i<codes.length;i++){
			if(trade.lotteryType == 105 && i == 6){

				fw.getId("openResult"+(i+1)).innerHTML = codes[i].replace(/01/g,'鼠').replace(/02/g,'牛').replace(/03/g,'虎').replace(/04/g,'兔')
				.replace(/05/g,'龙').replace(/06/g,'蛇').replace(/07/g,'马').replace(/08/g,'羊')
				.replace(/09/g,'猴').replace(/10/g,'鸡').replace(/11/g,'狗').replace(/12/g,'猪')
				;
			}else{
				fw.getId("openResult"+(i+1)).innerHTML = codes[i];
			}
		}
		
	 codes = tradeTerm.openResult.split("#");
	 if(codes.length == 2)
		 fw.getId("openResultFly").innerHTML = codes[1];
	 
		if(trade.lotteryType == 150 || trade.lotteryType == 151
		|| trade.lotteryType == 152 || trade.lotteryType == 154|| trade.lotteryType == 153 || trade.lotteryType == 155
		|| trade.lotteryType == 51 || trade.lotteryType == 50|| trade.lotteryType == 52|| trade.lotteryType == 53 || trade.lotteryType == 156 || trade.lotteryType == 54
		|| trade.lotteryType == 55 ){
			if(Number(json.waitCount) == 0) {
				var result = fw.date.compareDay(fw.date.getCurrentDateByYYYYMMDD(),json.openTermDT.substring(0,10));//是否同一天
				if(result == 0) {
					fw.getId("openCount").innerHTML = Number(json.waitCount);
					fw.getId("waitCount").innerHTML = Number(json.openCount);
				} else {
					fw.getId("openCount").innerHTML = Number(json.openCount);
					fw.getId("waitCount").innerHTML = Number(json.waitCount);
				}
			} else {
				fw.getId("openCount").innerHTML = Number(json.openCount);
				fw.getId("waitCount").innerHTML = Number(json.waitCount);
			}
		}
		reqUpdateOpenRT();
		
		tradeTerm.isUpdateOpenTime == 1;
	} else {
		if(tradeTerm.isUpdateOpenTime == 1) {
			//更新剩余时间
			tradeTerm.openTermRT = getOpenTermRT(json.openTermDTByLong);
		}
	}

}

function setInitTermInfo(resp){
	var json = eval("(" + resp + ")");

	tradeTerm.currentTerm = json.currentTerm;
	tradeTerm.currentTermRT = getCurrentTermRT(json.currentTermEndDTByLong);
	tradeTerm.openTerm = json.openTerm;
	tradeTerm.openResult = json.openResult;
	tradeTerm.currentTermEndDT = json.currentTermEndDT;
	tradeTerm.awardPool= json.awardPool;
	
	tradeTerm.currentTermIsAble = json.currentTermIsAble;
	loadStopMsg(json);
	//是否可售
	if(tradeTerm.currentTermIsAble == 1){
		$("#buyBtn").attr("class","btnBuy-gray");
		$("#buyBtn").attr('onclick', '');
		$("#lot_stop_msg").removeClass("hidden");
	}
	
	if(fw.getId("awardPool")){
		fw.getId("awardPool").innerHTML = tradeTerm.awardPool+"元";
	}
	
	/********大乐透格式彩池********/
	var pool=tradeTerm.awardPool;
	if(fw.getId("pool1") && fw.getId("pool2") && fw.getId("pool3") && fw.getId("pool4") && fw.getId("pool5") 
	&& fw.getId("pool6")&& fw.getId("pool7")&& fw.getId("pool8") && fw.getId("pool9")){
		for(var i=pool.length;i>0;i--){
			var po = (9 - pool.length +i);
			fw.getId("pool"+po).innerHTML = pool.substring(i-1,i);
		}
	}
	
	fw.getId("currentTerm").innerHTML = tradeTerm.currentTerm;
	if(fw.getId("openTerm")) {
		fw.getId("openTerm").innerHTML = tradeTerm.openTerm;
	}
	
	codes = tradeTerm.openResult.split("#")[0].split(",");
	for(var i=0;i<codes.length;i++){
		if(trade.lotteryType == 105 && i == 6){
			if(fw.getId("openResult"+(i+1))) {
				fw.getId("openResult"+(i+1)).innerHTML = codes[i].replace(/01/g,'鼠').replace(/02/g,'牛').replace(/03/g,'虎').replace(/04/g,'兔')
				.replace(/05/g,'龙').replace(/06/g,'蛇').replace(/07/g,'马').replace(/08/g,'羊')
				.replace(/09/g,'猴').replace(/10/g,'鸡').replace(/11/g,'狗').replace(/12/g,'猪')
				;
			 }
		}else{
			if(fw.getId("openResult"+(i+1))) {
				fw.getId("openResult"+(i+1)).innerHTML = codes[i];
			}
		}
	}
	
	 codes = tradeTerm.openResult.split("#");
	 if(codes.length == 2)
		 fw.getId("openResultFly").innerHTML = codes[1];
	
	if(trade.lotteryType == 150 || trade.lotteryType == 151
	|| trade.lotteryType == 152 || trade.lotteryType == 154|| trade.lotteryType == 153 || trade.lotteryType == 155
	|| trade.lotteryType == 51 || trade.lotteryType == 50|| trade.lotteryType == 52|| trade.lotteryType == 53 || trade.lotteryType == 156 || trade.lotteryType == 54
	|| trade.lotteryType == 157 || trade.lotteryType == 158 || trade.lotteryType == 159 || trade.lotteryType == 55){
			tradeTerm.openTermRT = getOpenTermRT(json.openTermDTByLong)+3;
			reqUpdateOpenRT();

			if(Number(json.waitCount) == 0) {
				var result = fw.date.compareDay(fw.date.getCurrentDateByYYYYMMDD(),json.openTermDT.substring(0,10));//是否同一天
				if(result == 0) {
					fw.getId("openCount").innerHTML = Number(json.waitCount);
					fw.getId("waitCount").innerHTML = Number(json.openCount);
				} else {
					fw.getId("openCount").innerHTML = Number(json.openCount);
					fw.getId("waitCount").innerHTML = Number(json.waitCount);
				}
			} else {
				fw.getId("openCount").innerHTML = Number(json.openCount);
				fw.getId("waitCount").innerHTML = Number(json.waitCount);
			}
	}else{
		fw.getId("openRTShow").innerHTML = json.currentTermEndDT;//2014-12-28调整显示本期截止时间
	}
	//增加3D、P3试机号
	if(trade.lotteryType ==102 || trade.lotteryType==3){
	   $.get(ctx_jsonp+"/static/sjh/sjh"+ trade.lotteryType +".xml?v="+new Date().getTime(),getCurrentSjh);
		
	}
	reqUpdateSaleRT();
	showWeek();
}
//停售展示信息
var loadStopMsg=function(result){
		$("#lot_stop_msg .lotteryType").html(result.lotteryName);
		$("#lot_stop_msg .stop_msg").html(result.stopCause);
		var html="";
		var lotArr=result.cmdLottery;
		lotArr=lotArr==null?[]:lotArr;
		for(var i=0;i<lotArr.length;i++){
			var val=lotArr[i].split(",");
			if(i==0){
				html="推荐彩种：";
			}
			html+="、<a href='"+val[1]+"'>"+val[0]+"</a>"
		}
		html=html.replace("、","");
		$("#lot_stop_msg .b").html(html);
		 if(result.currentTermIsAble == "0"){
		 	$("#lot_stop_msg").addClass("hidden");
		 }else{
		 	$("#lot_stop_msg").removeClass("hidden");
		 }
	}

//获取当前服务器时间
function getCurrentServerTime() {
	var resp = $.ajax({url: ctx_jsonp+"/serverDate.php?type=1&v=" + new Date().getTime(),async: false,dataType:'json'}).responseText;
	var json = eval("(" + resp + ")");
	tradeTerm.serverTimeByLong = Number(json.result.timestamp+"000");
}

//获取截止时间=(当前期截止时间-服务器当前时间)/1000
function getCurrentTermRT(currentTermEndDTByLong) {
	 return Number((currentTermEndDTByLong - tradeTerm.serverTimeByLong)/1000);
}

//获取下次开奖时间=(当前期开奖时间-服务器当前时间)/1000
function getOpenTermRT(openTermDTByLong) {
	 return Number((openTermDTByLong - tradeTerm.serverTimeByLong)/1000);
}

function getCurrentSjh(xmlDoc){
   var currtterm =tradeTerm.currentTerm;
   var openterm=tradeTerm.openTerm;
    if(currtterm==null || currtterm=="" || currtterm==undefined || openterm==null ||openterm =="" || openterm==undefined){
		return;
	}
	$(xmlDoc).find("row").each(function() {  
     var field = $(this); 
     var term = field.attr("term");//读取节点属性  
     var sjh = field.attr("sjh");
     if(tradeTerm.currentTerm ==term){
	     document.getElementById("currtsjhterm").style.display="block";
		 if(fw.getId("currtsjh")) {
			fw.getId("currtsjh").innerHTML="[<span>"+sjh+"</span>]";
		 }
	  }
	  if(tradeTerm.openTerm ==term){
		if(fw.getId("opensjh")) {
			fw.getId("opensjh").innerHTML="[<span>"+sjh+"</span>]";
		}
	  }
     

    }); 
}

//开奖区域星期几显示
function showWeek(){
	try {
		if(trade.lotteryType == 100) {//双色球
			var weekStr = "日一二三四五六";

			var dateStr = tradeTerm.currentTermEndDT.split(" ")[0];
			var openWeek = weekStr.charAt(new Date(dateStr.replace(/-/g, "/")).getDay());
			$("#weekTips").html("周"+openWeek);
			
			var currentWeek = weekStr.charAt(new Date(tradeTerm.serverTimeByLong).getDay());
			if(currentWeek == "二" || currentWeek == "四" || currentWeek == "日") {
				$("#openWeek").attr("class","jinrikj");
			} else {
				$("#openWeek").attr("class","zzxs");
			}
		}
		if(trade.lotteryType == 1) {//大乐透
			var weekStr = "日一二三四五六";

			var dateStr = tradeTerm.currentTermEndDT.split(" ")[0];
			var openWeek = weekStr.charAt(new Date(dateStr.replace(/-/g, "/")).getDay());
			$("#weekTips").html("周"+openWeek);
			
			var currentWeek = weekStr.charAt(new Date(tradeTerm.serverTimeByLong).getDay());
			if(currentWeek == "一" || currentWeek == "三" || currentWeek == "六") {
				$("#logo").attr("class","lot_status today");
			} else {
				$("#logo").attr("class","lot_def");
			}
		}
	}catch(e) {
		return "";
	}
}
