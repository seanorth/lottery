var historyCheckBox = {};
historyCheckBox.bettingBox = null; //投注框号码验证数据
historyCheckBox.currentCountTerm;  //当前对比彩期总数

/**************************************投注框号码验证begin*************************************************************/
//投注框号码验证
historyCheckBox.verifyBettingBox = function(){
	var len = trade.contentList.length;
	if(len == 0){ 
		cll_alert("投注内容为空!");
		return;
	}	

	historyCheckBox.bettingBox = new Array();
	var verify = true;
	//historyCheckBox.playType = trade.contentList[0].playType.indexOf("sg") >0 ? trade.contentList[0].playType.substring(0,trade.contentList[0].playType.length-2) : trade.contentList[0].playType;
	for(var i=0; i<len; i++){
		var playType;
		if(trade.contentList[i].playType == "ds"){
			playType = 1;
		}
		if(trade.contentList[i].playType == "fs"){
			playType = 2;
		}
		if(trade.contentList[i].playType == "dt"){
			playType = 3;
		}
		if(trade.contentList[i].playType == "ddshjx"){
			playType = 1117;
		}
		//中6保5
		if(trade.contentList[i].playType == "z6b5"){
			playType = 1111;
		}
		//中6保4
		if(trade.contentList[i].playType == "z6b4"){
			playType = 1112;
		}
		//中5保5
		if(trade.contentList[i].playType == "z5b5"){
			playType = 1113;
		}
		//单式上传
		if(trade.contentList[i].playType == "upload"){
			playType = 1;
		}
		
		historyCheckBox.bettingBox.push(playType + ":" + trade.contentList[i].content);
	}
	historyCheckBox.init();
	$("#select_Box").find("a")[0].click();
	openDragWindow('lfAlert2','号码验证',true);
}

historyCheckBox.findHistoryOpenResult2 = function(count){
	$("#verifyArea2").empty();
	$.ajax({
			url:'/trade/historyCheck.php?lotteryTypeValue='+ trade.lotteryType +'&countTerm=' + count,
			type: 'POST',
			data: {codes:historyCheckBox.bettingBox.join("~")},
			dataType: 'json',
			beforeSend:function(){
				$("#checkSpan").html("loading......");
			},
			success: function(data){  //Object {termData: Array[2000], resultData: Array[2000]}
				if(data != ""){
					var list = data.historyList;
					var p1 = 0;
					var p2 = 0;
					var con = new Array();
					for(var i = 0;i < list.length;i++){
						var hel = list[i];
						var index = i+1;
						var prizeCount = "";
						//中奖次数
						if(hel.prizeCount != 0 && hel.prizeCount != ""){
							prizeCount = hel.prizeCount;
							//获得一等奖、二等奖的中奖次数
							if(hel.prize == "一等奖"){
								p1 = hel.prizeCount;
							}
							if(hel.prize == "二等奖"){
								p2 = hel.prizeCount;
							}
						}else{
							prizeCount = "--";
						}
						var openDateTime = "";
						//最新开奖
						if(hel.openDateTime != null && hel.openDateTime != ""){
							openDateTime = hel.openDateTime;
						}else{
							openDateTime = "--";
						}
						var resultHTML = "";
						if(hel.result != null && hel.result != ""){
							var result = hel.result.split(",");
							resultHTML = "<em class='c_ba2636'>"+result[0]+" "+result[1]+" "+result[2]+" "+result[3]+" "+result[4]+" "+result[5]+"</em><em class='c_1e50a2'>:"+result[6]+"</em>";
						}else{
							resultHTML = "--";
						}
						
						var b = "";
						
						var info = hel.list;
						//查看
						if(info != null && info.length > 0){
							b = "<a href='javascript:historyCheckBox.showInfo("+index+");' data-award-num='12' data-level='"+index+"'>明细<i></i></a>";
						}else{
							b = "--";
						}
						//添加详细列表
						var html = new Array();
						var tip = "";
						if(info != null && info.length > 0){
							for(var j = 0;j < info.length;j++){
								var a = info[j];
								var result = a.result.split(",");
								var resultHtml = "<em class='c_ba2636'>"+result[0]+" "+result[1]+" "+result[2]+" "+result[3]+" "+result[4]+" "+result[5]+"</em><em class='c_1e50a2'>:"+result[6]+"</em>";
								html.push("<dd class=''><span class='co1'>"+a.term+"</span><span class='co2'>"+a.openDateTime+"</span><span class='co3'>"+resultHtml+"</span></dd>");
								if(j == 9){
									tip = "<dd class='history_detail_tip'>*共中奖"+hel.prizeCount+"次，以上为近10次中奖明细</dd>";
								}
							}
						}
						if(info.length < 10){
							$(".history_detail_tip").hide();
						}
						
						con.push("<dd id='fl_p"+index+"'><span class='co1'>"+hel.prize+"</span><span class='co2'>"+prizeCount+"</span><span class='co3'>"+openDateTime+"</span><span class='co4'>"+resultHTML+"</span><span class='co5'>"+b+"</span></dd>")
				        con.push("<dd style='display:none;' class='history_level_detail js_level_"+index+" hide'><dl>");
		                con.push("<dt><span class='co1'>期次</span><span class='co2'>开奖日</span><span class='co3'>开奖号码</span></dt>");
		                con.push("<div>"+html.join("")+"</div>"+tip+"</dl></dd>");
					}
					$("#checkSpan").html(con.join(""));
					//判断页尾提示
					var html = new Array();
					var endTerm = data.endTerm;
					if(p1 > 0 || p2 > 0){
						html.push("<p>截至"+endTerm+"期，该组号码中过一等奖"+p1+"次、二等奖"+p2+"次，投注请注意</p>");
          				html.push("<span class='cllbtn'><a class='default' href='javascript:historyCheckBox.close();'><i></i><em>确定</em></a></span>");
					}else{
						html.push("<p>截至"+endTerm+"期，该组号码历史上没有中出过一等奖或二等奖。</p>");
          				html.push("<span class='cllbtn'><a class='default' href='javascript:historyCheckBox.close();'><i></i><em>确定</em></a></span>");
					}
					$(".history_tip").html(html.join(""));
				}else{
					cll_alert("对不起，系统出错没有找到历史开奖记录！");
				}
			}
		}); 
}

historyCheckBox.showInfo = function (index){
	//检查是否打开
	if($("#fl_p"+index).hasClass("history_open_row")){
		$("#fl_p"+index).removeClass("history_open_row");
		$(".js_level_"+index).hide();
	}else{
		for(var i = 1;i < 7;i++){
			if(i == index){
				var p = $("#fl_p"+index);
				p.addClass("history_open_row");
				$(".js_level_"+index).show();
				var o = $(".history_table");
				o.scrollTop(p.offset().top + o.scrollTop() - o.offset().top)
			}else{
				$("#fl_p"+i).removeClass("history_open_row");
				$(".js_level_"+i).hide();
			}
		}
	}
}

historyCheckBox.close = function (){
	closeDragWindow("lfAlert2");
}

//切换验证期数
$("#select_Box").delegate("a","click",function(){
   	var data=$(this).attr("value");
   	if(data == "all"){
   		data = "";
   	}
   	if(historyCheckBox.currentCountTerm != data){
   		historyCheckBox.findHistoryOpenResult2(data);
   		historyCheckBox.currentCountTerm = data;
   	}
});

historyCheckBox.init = function(){
	historyCheckBox.currentCountTerm = -1;
}

/**************************************投注框号码验证end*************************************************************/