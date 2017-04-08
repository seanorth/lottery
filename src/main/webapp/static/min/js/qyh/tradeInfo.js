tradeInfo = {};

//定时更新
tradeInfo.setUp = function(id, cb, s){
	document.getElementById(id) && (cb(), window.setInterval(cb, s*1000));	
}

//初始化
tradeInfo.init = function(o){
	tradeInfo.xml = "http://127.0.0.1:8080/lottery/jsonp/static/qyh/";
	tradeInfo.posName = ["百","十","个"];
	o = o || {};
	
	if(typeof(lottery_animation_control_id) == "undefined")
		tradeInfo.setUp("openPanel", tradeInfo.setOpenHTML, o.open||30); //开奖号码
	tradeInfo.setUp("openPanel", tradeInfo.setRxMissClickBoard , o.missClickBoard||30);//选号区遗漏 任选
	tradeInfo.setUp("openPanel", tradeInfo.setShunMissClickBoard , o.missClickBoard||30);//选号区遗漏 顺选 围1
	tradeInfo.setUp("openPanel", tradeInfo.setWei5MissClickBoard , o.Wei5MissClickBoard||30);//选号区遗漏 围5
	tradeInfo.setUp("openPanel", tradeInfo.setWei4MissClickBoard , o.Wei4MissClickBoard||30);//选号区遗漏 围4
	tradeInfo.setUp("openPanel", tradeInfo.setWei3MissClickBoard , o.Wei3MissClickBoard||30);//选号区遗漏 围3
	tradeInfo.setUp("openPanel", tradeInfo.setWei2MissClickBoard , o.Wei2MissClickBoard||30);//选号区遗漏 围2
	tradeInfo.setUp("openPanel", tradeInfo.setYlFx, o.YlFx||30);	//冷热遗漏信息
	tradeInfo.setUp("newlyPrizeMar", tradeInfo.setNewlyPrizeMar, o.newlyPrizeMar||60);
	moveList("newlyPrizeMar");
	moveNewsList("newslistRoll");
	setLimitNumber(ctx_jsonp+"/static/qyh/");//限号
}

//开奖号码
tradeInfo.setOpenHTML = function(){
	$("#openPanel").load(tradeInfo.xml+'newlyopenlist.html?v='+new Date().getTime(),function(response){
		var t;
		if(response.indexOf(tradeTerm.openTerm.substring(2)) == -1) {
			t = setTimeout(tradeInfo.setOpenHTML, 1000);
		} else {
			if(t != null) {
				clearTimeout(t);
			}
		}
	});
}

//选号区遗漏
tradeInfo.setRxMissClickBoard = function(){
	var missDiv = new Array("rx1_miss","rx2_miss","rx2dt1_miss","rx2dt2_miss","rx3_miss","rx3dt1_miss","rx3dt2_miss","rx4_miss","rx4dt1_miss",
		                    "rx4dt2_miss","rx5_miss","rx5dt1_miss","rx5dt2_miss","rx6_miss","rx6dt1_miss","rx6dt2_miss","rx7_miss","rx7dt1_miss",
		                    "rx7dt2_miss","rx8_miss","rx9_miss","rx10_miss"); 
	var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var index = (i-1)*10+c+1;
							var n = obj.attr(index>9?'c'+index:'c0'+index);
							$(divEle).html(n);
						});
					}
				}
			});
		}
	}

	$.get(tradeInfo.xml+'miss.xml?v='+new Date().getTime(),callback);
}

//选号区遗漏 围选5
tradeInfo.setWei5MissClickBoard = function(){
	var missDiv = new Array("wei5_miss","wei5dt1_miss","wei5dt2_miss"); 
	var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var index = (i-1)*10+c+1;
							var n = obj.attr(index>9?'c'+index:'c0'+index);
							$(divEle).html(n);
						});
					}
				}
			});
		}
	}

	$.get(tradeInfo.xml+'zux5Miss.xml?v='+new Date().getTime(),callback);
}

//选号区遗漏 围选4
tradeInfo.setWei4MissClickBoard = function(){
	var missDiv = new Array("wei4_miss","wei4dt1_miss","wei4dt2_miss"); 
	var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var index = (i-1)*10+c+1;
							var n = obj.attr(index>9?'c'+index:'c0'+index);
							$(divEle).html(n);
						});
					}
				}
			});
		}
	}

	$.get(tradeInfo.xml+'zux4Miss.xml?v='+new Date().getTime(),callback);
}

//选号区遗漏 围选3
tradeInfo.setWei3MissClickBoard = function(){
	var missDiv = new Array("wei3_miss","wei3dt1_miss","wei3dt2_miss"); 
	var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var index = (i-1)*10+c+1;
							var n = obj.attr(index>9?'c'+index:'c0'+index);
							$(divEle).html(n);
						});
					}
				}
			});
		}
	}

	$.get(tradeInfo.xml+'zux3Miss.xml?v='+new Date().getTime(),callback);
}

//选号区遗漏 围选2
tradeInfo.setWei2MissClickBoard = function(){
	var missDiv = new Array("wei2_miss","wei2dt1_miss","wei2dt2_miss"); 
	var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var index = (i-1)*10+c+1;
							var n = obj.attr(index>9?'c'+index:'c0'+index);
							$(divEle).html(n);
						});
					}
				}
			});
		}
	}

	$.get(tradeInfo.xml+'zux2Miss.xml?v='+new Date().getTime(),callback);
}

//选号区遗漏 顺选 围1
tradeInfo.setShunMissClickBoard = function(){
	var missDiv = new Array("shun1_miss", "shun2_miss","shun3_miss","wei1_miss");
	var callback = function(xmlDoc) {
		for(var i=1; i<=3; i++){
			$(xmlDoc).find("r"+i).each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					for(var p=1; p<=2; p++){
						if($("#"+missDiv[k]+"_p"+i+"_"+p).length > 0){
							$("#"+missDiv[k]+"_p"+i+"_"+p+">div").each(function(c, divEle){
								var index = (p-1)*10+c+1;
								var n = obj.attr(index>9?'c'+index:'c0'+index);
								$(divEle).html(n);
							});
						}
					}
				}
			});
		}
	}

	$.get(tradeInfo.xml+'shunMiss.xml?v='+new Date().getTime(),callback);
}

//遗漏冷热分析
tradeInfo.setYlFx = function(){
	$("#tab_1_1").load(tradeInfo.xml+'lrfx.html?v='+new Date().getTime());
}

//最新中奖
tradeInfo.setNewlyPrizeMar = function(){
    var html = ""
	var callback = function(xmlDoc){
		$(xmlDoc).find("row").each(function(){
			var obj = $(this);
			html += "<div class='t tl001'>·<strong>"+ obj.attr("account") + "</strong>喜中"+ obj.attr("playType") + "<strong>"+ obj.attr("prize") +"</strong>元</div>";
		});

		if($(xmlDoc).find("row").length%2 != 0){
			html += "<div class='t tl001'></div>";
		}
		$("#newlyPrizeMar").html(html);
	}

	$.get('/static/lottery/qyhNewlyPrize.xml?v='+new Date().getTime(),callback);
}
