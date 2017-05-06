/***
 *	  info:高频彩种用JS代替Flash开奖动画
 *  author:a-Rui
 *    date:2013-4-11
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
tradeTerm.currentTermIsAble = "1";
tradeTerm.openCount = 0;
tradeTerm.waitCount = 0;
tradeTerm.openningTerm = "";

jQuery.fn.flash = function(color, duration)
{
    var current = this.css('color');
    this.animate({color:'rgb(' + color + ')'}, duration / 2).animate({color:current}, duration / 2);
    return;
}

/****----------------------- 高频彩种用JS代替Flash开奖动画 begin ---------------------****/
// 控件ID
var lottery_animation_control_id = "lottery_animation_control";

var lottery_animation_control_load_hint = "<img src='http://img.cailele.com/img_new/lottery/gd11x5/loading_flash.gif' style='margin-bottom:10px;'><br/>正在加载...";

// 初始化彩种开奖控件
var lottery_animation_control_init = function(lotteryId){
	var id = lottery_animation_control_id;
	document.write("<div id='" + lottery_animation_control_id + "' class='lottery_animation_control_load'>" + lottery_animation_control_load_hint + "</div>");
	return;
}

function initTermInfo(lotteryId){
	$(document).ready(function(){
		var div = $("#" + lottery_animation_control_id);
		var ul = $("<ul></ul>");
		var cookie_servertime = "cailele_cookie_servertime_" + lotteryId;
		var cookie_currenttime = "cailele_cookie_currenttime_" + lotteryId;
		var cookie_result = "cailele_cookie_openaward_result" + lotteryId;
		var timespanId = "open_time_span";
		var openTimeSpanId = "open_award_time_span";
		var servertime = 0;
		var loadEndTime = 0;
		var changeTime = 0;
		var isK3 = (lotteryId == 157 || lotteryId== 159 || lotteryId==161 || lotteryId==163 || lotteryId==164);
		var numToStr = function(val) {
			if(val < 10){
				if(val < 0)
					return "00";
				return "0" + val;
			}
			return "" + val;
		};
		var timeSpan = function(serverTime,cTime){
			var st = parseInt(serverTime);
			var ct = parseInt(cTime);
			return parseInt((ct - st) / 1000);
		};
		var numToTimeStr = function(time){
			var s = time % 60;
			var m = (time - s) / 60;
			var h = "", M = 0;
			if (m > 60) {
				M = m % 60;
				h = ((m - M) / 60) + ":";
			}else
				M = m;
			return h + numToStr(M) + ":" + numToStr(s);
		}
		var getBallText = function(openResult) {
			var list = openResult.split(",");
			var text = "";
			var size = list.length;
			var margin_right = 12;
			if(size == 3)
				margin_right = 50;
			else if(size == 5)
				margin_right = 20;
			else if(size == 7)
				margin_right = 8;
			else if(size == 8)
				margin_right = 6;
			for(var i=0; i<size; i++) {
				var ball = list[i];
				var className = "";
				if(isK3) {
					text += "<label class='dice dice_" + ball + "_label' style='margin-right:" + ((i < size-1) ? margin_right : 0) + "px;'></label>";
				} else {
					if(lotteryId == 152 || lotteryId == 158 || lotteryId == 155 || lotteryId == 160) {
						if(ball == "19" || ball == "20")
							className = "";
						else
							className = "blue";
						text += "<label class='" + className + "' style='margin-right:" + ((i < size-1) ? margin_right : 0) + "px;'>" + ball + "</label>";
					}else if(lotteryId=="56"){
						var color=ball.substring(0,1)*1;
						ball=ball.substring(1)*1;
						var colorName="";
						switch (color){
							case 1:
								className="poker poker_spades";
								colorName="黑桃";
								break;
							case 2:
								className="poker poker_hearts";
								colorName="红桃";
								break;
							case 3:
								className="poker poker_clubs";
								colorName="梅花";
								break;
							case 4:
								className="poker poker_diamonds";
								colorName="方块";
								break;
							default:
								className="";
								break;
						}
						ball=ball==1?"A":ball;
						ball=ball==11?"J":ball;
						ball=ball==12?"Q":ball;
						ball=ball==13?"K":ball;
						
						text += "<label class='" + className + "' style='margin-right:" + ((i < size-1) ? margin_right : 0) + "px;'><i></i><em>" + ball + "</em></label>";
					}else{
						text += "<label class='" + className + "' style='margin-right:" + ((i < size-1) ? margin_right : 0) + "px;'>" + ball + "</label>";
					}
				}
			}
			return text;
		}
		var getOtherText = function(){
			var str = "";
			var list = tradeTerm.openResult.split(",");
			if(isK3) {
				var total = 0;
				for(var i = 0; i < list.length; i++)
					total += parseInt(list[i]);
				
				var form = "";
				var n_o = parseInt(list[0]);
				var n_t = parseInt(list[1]);
				var n_th = parseInt(list[2]);
				if(n_o == n_t && n_o == n_th)
					form = "三同号";
				else if(n_o == n_t || n_o == n_th || n_t == n_th)
					form = "二同号";
				else if(n_o + 1 == n_t && n_t + 1 == n_th)
					form = "三连号";
				else
					form = "三不同号";
				
				/*return "<span class='dice_hint' style='margin-left:10px;'><font>奖号:<b class='green'>" + list.join(",") + 
						"</b></font><font>形态:<b class='green'>" + form + 
						"</b></font><font>和值:<b class='green'>" + total + "</b></font></span>";*/
				str = "奖号:<b class='green'>" + list.join(",") + 
						"</b>&nbsp;&nbsp;形态:<b class='green'>" + form + 
						"</b>&nbsp;&nbsp;和值:<b class='green'>" + total + "</b>"
			}else if(lotteryId == 154 || lotteryId ==162){
				str = "顺选一:<b class='green'>"+list[0]+
									"</b>&nbsp;&nbsp;顺选二:<b class='green'>"+list[0]+","+list[1]+
									"</b>&nbsp;&nbsp;顺选三:<b class='green'>"+list[0]+","+list[1]+","+list[2]+"</b>";
			}else if(lotteryId == 150 || lotteryId == 153){
				str = "一星:<b class='green'>"+list[4]+
									"</b>&nbsp;&nbsp;二星:<b class='green'>"+list[3]+","+list[4]+
									"</b>&nbsp;&nbsp;三星:<b class='green'>"+list[2]+","+list[3]+","+list[4]+"</b>";
			}else if(lotteryId == 151){
				str = "前一:<b class='green'>"+list[0]+"</b>&nbsp;&nbsp;"+
									"前二:<b class='green'>"+list[0]+","+list[1]+"</b>&nbsp;"+
									"后一:<b class='green'>"+list[2]+"</b>&nbsp;"+
									"后二:<b class='green'>"+list[1]+","+list[2]+"</b>";
			}else if(lotteryId == 152 || lotteryId == 158 || lotteryId == 160){
				str = "前一位:<b class='green'>"+list[0]+
									"</b>&nbsp;&nbsp;前二位:<b class='green'>"+list[0]+","+list[1]+
									"</b>&nbsp;&nbsp;前三位:<b class='green'>"+list[0]+","+list[1]+","+list[2]+"</b>";
			}else if(lotteryId == 155){
				str = "好运特:<b class='green'>"+list[4]+"</b>";
			}else if(lotteryId == 156){
				str = "奖池: <b color='#ff0000' face='Arial'>"+tradeTerm.awardPool+"</b> 元";
			}else if(lotteryId=="56"){
				var colorMap=new Map();
				var pokerMap=new Map();
				var pokerArr=[];
				var colorArr=[];
				for(var i=0;i<list.length;i++){
					var poker=list[i].substring(1)*1;
					var color=list[i].substring(0,1)*1;
					colorMap.put(color,poker);
					pokerMap.put(poker,poker);
					pokerArr.push(poker);
					colorArr.push(color);
				}
				var colorObj={};
				colorObj["1"]="黑桃";
				colorObj["2"]="红桃";
				colorObj["3"]="梅花";
				colorObj["4"]="方块";
				function replacePoker(poker){
					if(poker==1){
						return "A"
					}
					if(poker==11){
						return "J"
					}
					if(poker==12){
						return "Q"
					}
					if(poker==13){
						return "K"
					}
					return poker*1;
				}
				var tmpContent=[];
				tmpContent.push(colorObj[colorArr[0]]+replacePoker(pokerArr[0]));
				tmpContent.push(colorObj[colorArr[1]]+replacePoker(pokerArr[1]));
				tmpContent.push(colorObj[colorArr[2]]+replacePoker(pokerArr[2]));
				pokerArr.sort(function(a,b){
					return a-b;
				});
				//计算形态
				var isTH=false;
				var isSZ=true;
				var isDZ=false;
				var isBZ=false; 
				if(colorMap.size()==1){
					isTH=true;
				}
				if(pokerMap.size()==1){
					isBZ=true;
				}
				if(pokerMap.size()==2){
					isDZ=true;
				}
				if (pokerArr[0] == 1 && pokerArr[1] == 12 && pokerArr[2] == 13) {// JQA也是顺子
						isSZ = true;
				} else {
					for (var i = 1; i < pokerArr.length; i++) {
						if (pokerArr[i] - pokerArr[i - 1] != 1) {// 不是顺子
							isSZ = false;
						}
					}
				}
				var shape = "";
				if (isTH && !isSZ) {
					shape = "同花";
				} else if (isTH && isSZ) {
					shape = "同花顺";
				} else if (!isTH && isSZ) {
					shape = "顺子";
				} else if (isDZ) {
					shape = "对子";
				} else if (isBZ) {
					shape = "豹子";
				} else {
					shape = "";//移除三不同形态
				}
				if(shape!=""){
					str = "奖号:<b class='green'>" + tmpContent.join(",") + 
						"</b>&nbsp;&nbsp;形态:<b class='green'>" + shape + 
						"</b>"
				}else{
					str = "奖号:<b class='green'>" + tmpContent.join(",") + 
						"</b>&nbsp;&nbsp;";
				}
			}
			else{
				str = "任选一:<b class='green'>"+list[0]+
									"</b>&nbsp;&nbsp;前二位:<b class='green'>"+list[0]+","+list[1]+
									"</b>&nbsp;&nbsp;前三位:<b class='green'>"+list[0]+","+list[1]+","+list[2]+"</b>";
			}
			if(str == "")
				return "";
			return "<div>" + str + "</div>";
		}
		var openAwardTimeOut = null;
		var startTimer = function(){
			if(openAwardTimeOut != null)
				clearTimeout(openAwardTimeOut);
			openAwardTimeOut = setTimeout(openAwardTimer, 333);
			return;
		}
		var loadNewServerTime = function(){
			serverDateByLong = null;
			serverTime = getServerDateByLong();
			return;
		}
		var loadNewTag = false;
		var loadNew_oldTerm = "";
		var loadNextTag = false;
		var loadNext_openTerm = "";
		var openAwardTimer = function(){
			var time = (new Date()).getTime();
			var endTime = changeTime;
			if(endTime > time || Math.abs(time - endTime) > 1000 * 5) {
				load(loadEvent,loadErrorEvent);
				return;
			}
			var span = (time - changeTime);
			if(span >= 1000) {
				var _sTime = serverTime + (time - loadEndTime);
				changeTime = time;
				var s = timeSpan(_sTime, tradeTerm.currentTermEndDTByLong);
				if(s < 0) {
					if(!loadNewTag) {
						loadNewTag = true;
						loadNew_oldTerm = tradeTerm.currentTerm;
						var parent = $("#" + timespanId).parent();
						parent.empty();
						parent.html(getWaitText(1, ''));
						parent.attr("class", "time red");
						changeButton(false);
						loadNew();
					}
				} else {
					var sp = $("#" + timespanId);
					//if(s <= 5000) { sp.flash("248,222,0", 1000); }
					sp.html(numToTimeStr(s));
					var saleChaseShow = cll.rtForChaseShow(s);
					if(fw.get("pzTime")){
						$("#pzTime").html(saleChaseShow);
					}
					if(fw.get("zzTime")){
						$("#zzTime").html(saleChaseShow);
					}
				}
				
				var openTimeSpan = $("#" + openTimeSpanId);
				if (openTimeSpan.length > 0) {
					var openTermTime = parseInt(tradeTerm.openTermDTByLong);
					var ot = timeSpan(_sTime, openTermTime);
					openTimeSpan.html(numToTimeStr(ot));
					if (ot <= 0) {
						if (!loadNextTag) {
							loadNextTag = true;
							loadNext_openTerm = tradeTerm.openTerm;
							var sParent = openTimeSpan.parent();
							sParent.fadeOut(800,function(){
								var p = $(this);
								p.attr("class", "wait");
								p.html(getWaitText(0, ''));
								p.fadeIn(800);
							});
							loadNext();
						}
					}
				}
				
				var dateTime = $("#dateTime");
				if(dateTime.length > 0) {
					var date = new Date(_sTime);
					var year = date.getFullYear();
					var month = date.getMonth() + 1;
					var day = date.getDate();
					var hours = date.getHours();
					var minutes = date.getMinutes();
					var second = date.getSeconds();
					months = month < 10 ? "0" + month : month;
					days = day < 10 ? "0" + day : day; 
					hourss = hours < 10 ? "0" + hours : hours;
					minutess = minutes < 10 ? "0" + minutes : minutes;
					seconds = second < 10 ? "0" + second : second;
					var html= months + "月" + days + "日 " +  hourss + ":" + minutess + ":" + seconds;
					dateTime.html(html);
				}
			}
			startTimer();
			return;
		}
		var getWaitText = function(tag, text) {
			if(tag == 0)
				return "<label><img src='http://127.0.0.1:8080/lottery/static/min/img/loading_flash_red.gif'/><font class='wardhint'>正在开奖! 请稍候...</font></label>";
			return "<label>后开奖</label><b id='" + openTimeSpanId + "'>" + text + "</b>";
		}
		var changeLiMargin = function() {
			var liList = ul.find("li");
	   		if (liList.size() == 2) {
	   			liList.css("margin","10px 0px");
	   			setTimeout(function(){
		   			var liFirst = $(liList.get(0));
		   			var li = $(liList.get(liList.length - 1));
		   			var left = liFirst.find("SPAN.dian").width() + liFirst.find("SPAN.line").width();
		   			var div = li.find("DIV");
		   			if(div.length >= 1){
		   				div.css("padding-left",(left + 35) + "px");
		   				div.fadeIn(500,function(){
		   					li.attr("class","otherHint");
		   				});
		   			}
		   		}, 1000);
	   		}else{
	   			liList.css("margin","3px 0px");
	   			var endLi = $(liList.get(liList.length - 1));
	   			endLi.find("DIV").fadeOut(300, function(){
	   				endLi.attr("class","");
	   			});
	   		}
	   		
	   		var cou = liList.size();
	   		if (cou > 3) {
	   			for(var s = cou - 1; s > 2 ; s --)
	   				$(liList.get(s)).remove();
	   		}
	   		/*if (isK3){
	   			var li = $(liList.get(liList.length - 1));
	   			var top = (liList.size() > 2) ? "0px" : "0px";
	   			li.find("span.result").css("margin-top", top);
	   			var span = li.find("span.dice_hint");
	   			span.css("margin-top", top);
	   			if(li.attr("class") != "otherHint"){
		   			//setTimeout(function(){
		   			//	span.css("width","0px");
		   			//	li.attr("class","otherHint");
		   			//	span.animate({width:90},500);
			   		//}, 1000);
		   		}
	   		}*/
			return;
		}
		var load = function(fn,errorFn){
			$.ajax({
	   		   type: "GET",
			   url: ctx_jsonp+"/static/termInfo/P"+ lotteryId + ".txt",
			   cache: false,
			   dataType: "json",
			   success: function(result){
			   		//{"waitCount":38,"currentTermEndDTByLong":"1365497910000","openTerm":"2013040946","currentTermIsAble":"1","openCount":"46","openResult":"09,10,06,07,02","openTermDT":"2013-04-09 16:50","currentTerm":"2013040948","openTermDTByLong":"1365497430000","awardPool":"0","currentTermEndDT":"2013-04-09 16:58"}
					if(result == null) {
						if (errorFn != null)
							errorFn();
					} else if (fn != null)
						fn(result);
			   },
			   error:function (XMLHttpRequest, textStatus, errorThrown){
			   		if (errorFn != null)
						errorFn();
					return;
			   }
			});
			return;
		}
		var saveResult = function(result){
			loadNewServerTime();
			loadEndTime = (new Date()).getTime();
			changeTime = loadEndTime;
			// tradeTerm = result;
			//"waitCount":38,
			//"currentTermEndDTByLong":"1365497910000",
			//"openTerm":"2013040946",
			//"currentTermIsAble":"1",
			//"openCount":"46",
			//"openResult":"09,10,06,07,02",
			//"openTermDT":"2013-04-09 16:50",
			//"currentTerm":"2013040948",
			//"openTermDTByLong":"1365497430000",
			//"awardPool":"0",
			//"currentTermEndDT":"2013-04-09 16:58"
			//追号页面更新追号列表数据
			if(updateChaseList){
				updateChaseList(tradeTerm.currentTerm,result.currentTerm); 
			}
			tradeTerm.currentTerm = result.currentTerm;
			// tradeTerm.currentTermRT = 0;
			tradeTerm.currentTermEndDT = result.currentTermEndDT;
			tradeTerm.currentTermEndDTByLong = parseInt(result.currentTermEndDTByLong);
			tradeTerm.openTerm = result.openTerm;
			tradeTerm.openResult = result.openResult;
			tradeTerm.awardPool = result.awardPool;
			// tradeTerm.openTermRT = 0;
			tradeTerm.openTermDT = result.openTermDT;
			tradeTerm.openTermDTByLong = parseInt(result.openTermDTByLong);
			tradeTerm.serverTimeByLong = serverTime;
			tradeTerm.isUpdateOpenTime = 1;
			tradeTerm.currentTermIsAble = result.currentTermIsAble;
			// tradeTerm.currentTermIsAble = "0";
			tradeTerm.openCount = parseInt(result.openCount);
			tradeTerm.waitCount = parseInt(result.waitCount);
			tradeTerm.openningTerm = result.openningTerm;
			changeTermNum(result);
			loadStopMsg(result);
			return;
		}
		var changeTermNum = function(result){
			var removeZ = function(val){
				return parseInt(val,10);
			}
			changeAwardNo(removeZ(result.openCount), removeZ(result.waitCount));
			return;
		}
		var loadEvent = function(result) {
			saveResult(result);
			loadNewTag = false;
			loadNextTag = false;
			changeButton(true);
			
			var span = timeSpan(serverTime, tradeTerm.currentTermEndDTByLong);
			var openTimeSpan = timeSpan(serverTime, tradeTerm.openTermDTByLong);

			div.hide();
			div.attr("class", "lottery_animation_control");
			div.empty();
			
			ul.empty();
	     	ul.append("<li><span class='dian'></span><span class='line'>"+result.currentTerm+"</span><span class='time green'><label>后截止投注</label><b id='" + timespanId + "'>" + numToTimeStr(span) + "</b></span></li>");
			if(openTimeSpan < span && result.openTerm != result.openningTerm){
				if(openTimeSpan <= 0) {
					ul.append("<li><span class='dian'></span><span class='line'>"+result.openningTerm+"</span><span class='wait'>" + getWaitText(0,'') + "</span></li>");
					loadNextTag = true;
					loadNext_openTerm = result.openTerm;
					loadNext();
				} else
					ul.append("<li><span class='dian'></span><span class='line'>"+result.openningTerm+"</span><span class='time red'>" + getWaitText(1, numToTimeStr(openTimeSpan)) + "</span></li>");
			}
			
			ul.append("<li><span class='dian'></span><span class='line'>"+result.openTerm+"</span><span class='result 22'>" + getBallText(result.openResult) + "</span>" + getOtherText() + "</li>");
	   		div.append(ul);
	   	
	   		changeLiMargin();
	   		
	   		div.fadeIn(500 ,function(){div.parent().addClass("lottery_animation_control_bg");});
	   		startTimer();
	   		//loadOpenList();
			return;
		}
		var loadErrorEvent = function() {
			div.empty();
			div.parent().attr("class", "");
			div.attr("class","lottery_animation_control_load");
			div.html("<font style='color:#f00000;'>加载数据失败!</font><br/><br/>");
			var reloadButton = $("<a href='javascript:void(0);' class='reloadButton' title='点击重新载入开奖数据'>点击重新载入</a>");
			reloadButton.click(function(){
				div.attr("class","lottery_animation_control_load");
				div.html(lottery_animation_control_load_hint);
				load(loadEvent,loadErrorEvent);
				return;
			});
			div.append(reloadButton);
			$("#dateTime").html("--月--日 --:--:--");
			return;
		}
		var loadNew = function(){
			load(loadNewEvent, function() {setTimeout(loadNew, 3000);});
			return;
		}
		var loadNewEvent = function(result){
			if (loadNew_oldTerm != result.currentTerm) {
				saveResult(result);
				var span = timeSpan(serverTime, parseInt(result.currentTermEndDTByLong));
				var li = $("<li><span class='dian'></span><span class='line'>"+result.currentTerm+"</span><span class='time green'><label>后截止投注</label><b id='" + timespanId + "'>" + numToTimeStr(span) + "</b></span></li>")
				li.hide();
				ul.prepend(li);
				changeLiMargin();
				li.fadeIn(600);
				loadNewTag = false;
				changeButton(false);
				setTimeout(loadNewEnd, 3000);
			}else
				setTimeout(loadNew, 3000);
			return;
		}
		var changeButton = function(tag){
			var button = $("#buyBtn");
			var hint = $("#lottery_status");
			if(tag && tradeTerm.currentTermIsAble == "0") {
				button.removeAttr("onclick").bind("click",function(){tradeSubmit();});
				button.attr("class","btnBuy-orange");
				hint.html("正在销售");
				hint.parent().attr("class","divHint_new");
			} else {
				button.unbind("click").removeAttr('onclick');
				button.attr("class","btnBuy-gray");
				hint.html("暂停销售");
				hint.parent().attr("class","divHint_enabled");
			}
			return;
		}
		var loadNewEnd = function(){
			$.get("http://127.0.0.1:8080/lottery/setParam/sequenceNum/reset",{'type':'qyh'},function(data,status){});
			cll_alert("<font color='#FF0000'>"+ loadNew_oldTerm +"</font>期已截止，投注时请确认您的期号。");
			changeButton(true);
			return;
		}
		var loadNext = function(){
			load(loadNextEvent, function() {setTimeout(loadNext, 3000);});
			return;
		}
		var loadNextEvent = function(result){
			if (loadNext_openTerm != result.openTerm) {
				saveResult(result);
				var list = ul.find("li");
				var li = $(list.get(1));
				var sp = $(li.find("SPAN").get(2));
				sp.empty();
				sp.attr("class", "result");
				sp.html(getBallText(result.openResult));
				li.append(getOtherText());
				var label = sp.find("label");
				label.hide();
				var showLabel = function(i){
					if(i >= label.length) {
						if(list.length > 2){
							for(var j=list.length-1; j>= 0; j--) {
								if(j > 1){
									$(list.get(j)).slideUp(600, function(){
										$(this).remove();
										changeLiMargin();
									});
								}
							}
						}
						return;
					}
					$(label.get(i)).fadeIn(200, function(){
						showLabel(i + 1);
					});
				}
				showLabel(0);
				setTimeout(loadOpenList, 6000);
				loadNextTag = false;
			}else
				setTimeout(loadNext, 3000);
			return;
		}
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
		load(loadEvent,loadErrorEvent);
		return;
	});
	return;
}
/****----------------------- 高频彩种用JS代替Flash开奖动画 end ---------------------****/

// 开奖历史列表
function loadOpenList(){
	if(tradeInfo && tradeInfo.setOpenHTML){
		tradeInfo.setOpenHTML();
	}
	return;
}
