tradeInfo = {};

//定时更新
tradeInfo.setUp = function(id, cb, s){
	document.getElementById(id) && (cb(), window.setInterval(cb, s*1000));	
}

//初始化
tradeInfo.init = function(o){
	tradeInfo.xml = "http://127.0.0.1:8080/lottery/jsonp/static/ssq/";
	tradeInfo.posName = ["百","十","个"];
	o = o || {};
	
	tradeInfo.setUp("openPanel", tradeInfo.setOpenHTML, o.open||30); //开奖号码

	tradeInfo.setUp("openPanel", tradeInfo.setRedYlFx, o.YlFx||60);	//red冷热分析
	tradeInfo.setUp("openPanel", tradeInfo.setBlueYlFx, o.YlFx||60);	//blue冷热分析
	
	tradeInfo.setUp("newlyPrizeMar", tradeInfo.setNewlyPrizeMar, o.newlyPrizeMar||60);

	$("#areaBtn0").bind("click",function() {tradeInfo.ssqPush(0);});
	$("#areaBtn1").bind("click",function() {tradeInfo.ssqPush(1);});
}

//开奖号码
tradeInfo.setOpenHTML = function(){
	/*var html = "";
	var callback = function(xmlDoc) {
		$(xmlDoc).find("row").each(function(i){
			var o = $(this);
			if(i>=10) return false;
			var result=o.attr("opencode");
			var bigAndSamill=tradeInfo.bigAndSamill(result);
			var singleAndTwo=tradeInfo.singleAndTwo(result);
			html += '<tr><td>'+o.attr("expect").slice(0)+'</td><td>'+o.attr("opencode")+'</td><td>'+bigAndSamill+'</td><td>'+singleAndTwo+'</td></tr>';
		});
		$("#historyOpenPanel").html(html);
	}

	$.get(tradeInfo.xml+'newlyopenlist.xml?v='+new Date().getTime(),callback);*/
	$("#openPanel").load(tradeInfo.xml+'newlyopenlist.html?v='+new Date().getTime());
}

tradeInfo.bigAndSamill = function(result){
	var bigAndSmaill="";
	var smaill=0;
	var big=0;
	var redStr=result.split("|")[0].split(",");
	for(var i=0;i<redStr.length;i++){
		var temp=parseInt(redStr[i],10);
		if(temp>=1 && temp<=16){
			smaill++;
		}
		else if(temp>=17 && temp<=33){
			big++;
		}
	}
 
    bigAndSmaill = big+":"+smaill;
    return bigAndSmaill;
}

tradeInfo.singleAndTwo = function(result){
	 var singleAndTwo="";
	 var two=0;
	 var single=0;
	 var blueStr=result.split("|")[0].split(",");
	for(var i=0;i<blueStr.length;i++){
		var temp=parseInt(blueStr[i],10);
		if(temp%2!=0){
			single++;
		}else{
			two++;
		}
	}

	singleAndTwo=""+single+":"+two;
	return singleAndTwo;
}

tradeInfo.redYlArray = new Array();
//red整理遗漏数据
tradeInfo.setRedYlFx = function(){
	var callback = function(xmlDoc) {
		var o;
		//准备数据
		for(var i=1; i<=33; i++){
			$(xmlDoc).find("sort"+i).each(function(){
				var obj = $(this);
				o = {};
				o.code = obj.attr("code");
				o.currMiss = obj.attr("currMiss");
				o.count = obj.attr("count");
				o.open = obj.attr("open");
			});
			tradeInfo.redYlArray[i-1] = o;
		}

		//tradeInfo.setRedLrFx();	
		tradeInfo.setRedMissClickBoard();
		tradeInfo.setDtRedMissClickBoard();
	}
	
	$.get(tradeInfo.xml+'redYlfx.xml?v='+new Date().getTime(),callback);
}

//red选号区遗漏
tradeInfo.setRedMissClickBoard = function() {
	var missDiv = new Array("fs_red_miss","xzjz_red_miss","ddshjx_red_miss")
	for(var i=1 ;i<=3; i++){
		for(var k = 0; k< missDiv.length; k++){
			if($("#"+missDiv[k]+"_"+i).length > 0){
				$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
					var code = (i-1)*11+c+1;//索引对应号码
					for(var y = 0; y<=32 ; y++) {
						if(parseInt(code,10) == parseInt(tradeInfo.redYlArray[y].code,10)) {
							divEle.innerHTML = tradeInfo.redYlArray[y].currMiss;
							break;
						}
					}
				});
			}
		}
	}
}

//red选号区遗漏
tradeInfo.setDtRedMissClickBoard = function() {
	var missDiv = new Array("dt_red_miss1","dt_red_miss2")
	for(var i=1 ;i<=2; i++){
		for(var k = 0; k< missDiv.length; k++){
			if($("#"+missDiv[k]+"_"+i).length > 0){
				$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
					var code = (i-1)*18+c+1;//索引对应号码
					for(var y = 0; y<=32 ; y++) {
						if(parseInt(code,10) == parseInt(tradeInfo.redYlArray[y].code,10)) {
							divEle.innerHTML = tradeInfo.redYlArray[y].currMiss;
							break;
						}
					}
				});
			}
		}
	}
}

tradeInfo.hotRedArray = new Array();//最热红球
tradeInfo.pushRedArray = new Array();//推荐红球

//red冷热分析
tradeInfo.setRedLrFx = function(){
	var callback = function(xmlDoc) {
		var  o;
		var oArray = new Array(33);
		var indexs = 1;
		
		for(var i=1; i<=33; i++){
			$(xmlDoc).find("sort"+i).each(function(){
				var obj = $(this);
				o = {};
				o.code = obj.attr("code");
				o.code = Number(o.code)<10?"0"+o.code:o.code;
				o.currMiss = obj.attr("currMiss");
				o.count = obj.attr("count");
				o.open = obj.attr("open");
				for(var y = 0; y<=32 ; y++){
					if(Number(o.code) == Number(tradeInfo.redYlArray[y].code)){
						o.currMiss = tradeInfo.redYlArray[y].currMiss;
						o.open = tradeInfo.redYlArray[y].open;
						break;
					}
				}
				oArray[i-1] = o;
			});
		}
		//按号码排序
		cll.objcetBubbleSort(oArray,"code");
		var array1 = oArray.slice(0,11);
		var array2 = oArray.slice(11,22);
		var array3 = oArray.slice(22,33);
		//分别按次数排序
		cll.objcetBubbleSort(array1,"count");
		cll.objcetBubbleSort(array2,"count");
		cll.objcetBubbleSort(array3,"count");
		//处理各区
		setRedArea(array1,1);
		setRedArea(array2,2);
		setRedArea(array3,3);
		
		//设置6个最热红球
		tradeInfo.hotRedArray[0] = array1[10];
		tradeInfo.hotRedArray[1] = array1[9];
		tradeInfo.hotRedArray[2] = array2[10];
		tradeInfo.hotRedArray[3] = array2[9];
		tradeInfo.hotRedArray[4] = array3[10];
		tradeInfo.hotRedArray[5] = array3[9];

		//分别按欲出几率最大排序
		cll.objcetBubbleSort(array1,"open");
		cll.objcetBubbleSort(array2,"open");
		cll.objcetBubbleSort(array3,"open");
		//设置6个推荐红球
		tradeInfo.pushRedArray[0] = array1[10];
		tradeInfo.pushRedArray[1] = array1[9];
		tradeInfo.pushRedArray[2] = array2[10];
		tradeInfo.pushRedArray[3] = array2[9];
		tradeInfo.pushRedArray[4] = array3[10];
		tradeInfo.pushRedArray[5] = array3[9];

		//绑定事件
		$("a[name='hotRedBtn']").bind("click",tradeInfo.setHotRed);
		$("a[name='pushRedBtn']").bind("click",tradeInfo.setPushRed);
		$("a[name='clearRedHightBtn']").bind("click",tradeInfo.clickClearRedBtn);
		tradeInfo.setRedTip();
	}
	
	$.get(tradeInfo.xml+'redLrfx.xml?v='+new Date().getTime(),callback);
}

function setRedArea(a,areaNo)
{
	for(var i=11;i>=1;i--){
			var temp = "";
			var flag = 1;
			if(i <= 3){
				if(i == 3){
					indexs =1;
				}
				temp = "Cool";
			}else if(i >= 9){
				if(i == 11){
					indexs =1;
				}
				temp = "Hot";
			}else if(i >= 4 && i<=8){
				if(i == 8){
					indexs =1;
				}
				temp = "Common";
			}
			else
			{	
				flag = 0;
			}
			if(flag){
				o = a[i-1];
				$("#d"+areaNo+temp+"Code"+indexs).html(o.code);
				$("#d"+areaNo+temp+"Yl"+indexs).html(o.currMiss);
				$("#d"+areaNo+temp+"Cx"+indexs).html(o.count);
				$("#d"+areaNo+temp+"Yc"+indexs).html(o.open);
				indexs += 1;
			}
		}
}


tradeInfo.blueYlArray = new Array();
//blue整理遗漏数据
tradeInfo.setBlueYlFx = function(){
	var callback = function(xmlDoc) {
		var o;
		//准备数据
		for(var i=1; i<=16; i++){
			$(xmlDoc).find("sort"+i).each(function(){
				var obj = $(this);
				o = {};
				o.code = obj.attr("code");
				o.currMiss = obj.attr("currMiss");
				o.count = obj.attr("count");
				o.open = obj.attr("open");
			});
			tradeInfo.blueYlArray[i-1] = o;
		}

		//tradeInfo.setBlueLrFx();	
		tradeInfo.setBlueMissClickBoard();
		tradeInfo.setDtBlueMissClickBoard();
	}
	
	$.get(tradeInfo.xml+'blueYlfx.xml?v='+new Date().getTime(),callback);
}

//blue选号区遗漏
tradeInfo.setBlueMissClickBoard = function() {
	var missDiv = new Array("fs_blue_miss","xzjz_blue_miss","ddshjx_blue_miss");
	for(var i=1 ;i<=3; i++){
		for(var k = 0; k< missDiv.length; k++){
			if($("#"+missDiv[k]+"_"+i).length > 0){
				$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
					var code = (i-1)*6+c+1;//索引对应号码
					for(var y = 0; y<=16 ; y++) {
						if(parseInt(code,10) == parseInt(tradeInfo.blueYlArray[y].code,10)) {
							divEle.innerHTML = tradeInfo.blueYlArray[y].currMiss;
							break;
						}
					}
				});
			}
		}
	}
}

//blue选号区遗漏
tradeInfo.setDtBlueMissClickBoard = function() {
	var missDiv = new Array("dt_blue_miss1","dt_blue_miss2");
	for(var i=1 ;i<=2; i++){
		for(var k = 0; k< missDiv.length; k++){
			if($("#"+missDiv[k]+"_"+i).length > 0){
				$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
					var code = (i-1)*16+c+1;//索引对应号码
					for(var y = 0; y<=16 ; y++) {
						if(parseInt(code,10) == parseInt(tradeInfo.blueYlArray[y].code,10)) {
							divEle.innerHTML = tradeInfo.blueYlArray[y].currMiss;
							break;
						}
					}
				});
			}
		}
	}
}


tradeInfo.hotBlueArray = new Array();//最热蓝球
tradeInfo.pushBlueArray = new Array();//推荐蓝球

//blue冷热分析
tradeInfo.setBlueLrFx = function(){
	var callback = function(xmlDoc){
		var  o;
		var oArray = new Array();
		var indexs = 1;
		//准备数据
		for(var i=1; i<=16; i++){
			$(xmlDoc).find("sort"+i).each(function(){
				var obj = $(this);
				o = {};
				o.code = obj.attr("code");
				o.code = Number(o.code)<10?"0"+o.code:o.code;
				o.currMiss = obj.attr("currMiss");
				o.count = obj.attr("count");
				o.open = obj.attr("open");
				for(var y = 0; y<=16 ; y++){
					if(Number(o.code) == Number(tradeInfo.blueYlArray[y].code)){
						o.currMiss = tradeInfo.blueYlArray[y].currMiss;
						o.open = tradeInfo.blueYlArray[y].open;
						break;
					}
				}
				oArray[i-1] = o;
			});
		}

		for(var i=16;i>=1;i--){
			var temp = "";
			var flag = 1;
			if(i <= 5){
				if(i == 5){
					indexs =1;
				}
				temp = "Cool";
			}else if(i >= 12){
				if(i == 16){
					indexs =1;
				}
				temp = "Hot";
			}else if(i >= 6 && i<=11){
				if(i == 11){
					indexs =1;
				}
				temp = "Common";
			}
			else
			{	
				flag = 0;
			}
			if(flag){
				o = oArray[i-1];
				$("#d4"+temp+"Code"+indexs).html(o.code);
				$("#d4"+temp+"Yl"+indexs).html(o.currMiss);
				$("#d4"+temp+"Cx"+indexs).html(o.count);
				$("#d4"+temp+"Yc"+indexs).html(o.open);
				indexs += 1;
			}
		}


		//分别按次数最多排序
		cll.objcetBubbleSort(oArray,"count");
		//设置2个最热蓝球
		tradeInfo.hotBlueArray[0] = oArray[13];
		tradeInfo.hotBlueArray[1] = oArray[14];
		tradeInfo.hotBlueArray[2] = oArray[15];

		//分别按欲出几率最大排序
		cll.objcetBubbleSort(oArray,"open");
		//设置2个推荐蓝球
		tradeInfo.pushBlueArray[0] = oArray[13];
		tradeInfo.pushBlueArray[1] = oArray[14];
		tradeInfo.pushBlueArray[2] = oArray[15];

		//绑定事件
		$("a[name='hotBlueBtn']").bind("click",tradeInfo.setHotBlue);
		$("a[name='pushBlueBtn']").bind("click",tradeInfo.setPushBlue);
		$("a[name='clearBlueHightBtn']").bind("click",tradeInfo.clickClearBlueBtn);
		tradeInfo.setBlueTip();
	}

	$.get(tradeInfo.xml+'blueLrfx.xml?v='+new Date().getTime(),callback);
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

	$.get('/static/lottery/otherNewlyPrize.xml?v='+new Date().getTime(),callback);	
}

//保存点击最热红球和推荐红球标记
tradeInfo.clickRedMap = new Map();
//保存点击最热蓝球和推荐蓝球标记
tradeInfo.clickBlueMap = new Map();

//清空最热和推荐的红球
tradeInfo.clearHotAndPushByRed = function() {
	for(var i=1; i<=33; i++) {
		var code = i;
		if(code < 10) code = "0" + code;
		var ballObj = document.getElementById(trade.playType + "_rc" + code);
		if(ballObj == null) return; 
		if(ballObj.className == "ball-hot-red" || ballObj.className == "ball-t-red") {
			ballObj.className="li2";
		}
	}
}

//清空最热和推荐的蓝球
tradeInfo.clearHotAndPushByBlue = function() {
	for(var i=1; i<=16; i++) {
		var code = i;
		if(code < 10) code = "0" + code;
		var ballObj = document.getElementById(trade.playType + "_bc" + code);
		if(ballObj == null) return; 
		if(ballObj.className == "ball-hot-blue" || ballObj.className == "ball-t-blue") {
			ballObj.className="blue-off";
		}
	}
}

//点击红球的清空按钮
tradeInfo.clickClearRedBtn = function() {
	var redValue = tradeInfo.clickRedMap.get(trade.playType);
	if(redValue != null) {
		tradeInfo.clickRedMap.remove(trade.playType);
	}
	tradeInfo.clearHotAndPushByRed();
}

//点击蓝球的清空按钮
tradeInfo.clickClearBlueBtn = function() {
	var blueValue = tradeInfo.clickBlueMap.get(trade.playType);
	if(blueValue != null) {
		tradeInfo.clickBlueMap.remove(trade.playType);
	}
	tradeInfo.clearHotAndPushByBlue();
}

//重新显示
tradeInfo.showHotAndPushByAll = function() {
	var redValue = tradeInfo.clickRedMap.get(trade.playType);
	if(redValue != null) {
		if(redValue == 1) {
			tradeInfo.setHotRed();
		} else {
			tradeInfo.setPushRed();
		} 
	}

	var blueValue = tradeInfo.clickBlueMap.get(trade.playType);
	if(blueValue != null) {
		if(blueValue == 1) {
			tradeInfo.setHotBlue();
		} else {
			tradeInfo.setPushBlue();
		} 
	}
}

//设置最热红球
tradeInfo.setHotRed = function() {
	tradeInfo.clickRedMap.put(trade.playType,1);
	tradeInfo.clearHotAndPushByRed();
	var arr = tradeInfo.hotRedArray;
	for(var i=0; i<arr.length; i++) {
		var code = arr[i].code;
		var ballObj = document.getElementById(trade.playType + "_rc" + code);
		if(ballObj == null) return; 
		if(ballObj.className == "li2") {
			ballObj.className="ball-hot-red";
		}
	}
}

//设置推荐红球
tradeInfo.setPushRed = function() {
	tradeInfo.clickRedMap.put(trade.playType,2);
	tradeInfo.clearHotAndPushByRed();
	var arr = tradeInfo.pushRedArray;
	for(var i=0; i<arr.length; i++) {
		var code = arr[i].code;
		var ballObj = document.getElementById(trade.playType + "_rc" + code);
		if(ballObj == null) return; 
		if(ballObj.className == "li2") {
			ballObj.className="ball-t-red";
		}
	}
}

//设置最热蓝球
tradeInfo.setHotBlue = function() {
	tradeInfo.clickBlueMap.put(trade.playType,1);
	tradeInfo.clearHotAndPushByBlue();
	var arr = tradeInfo.hotBlueArray;
	for(var i=0; i<arr.length; i++) {
		var code = arr[i].code;
		var ballObj = document.getElementById(trade.playType + "_bc" + code);
		if(ballObj == null) return; 
		if(ballObj.className == "blue-off") {
			ballObj.className="ball-hot-blue";
		}
	}
}

//设置推荐蓝球
tradeInfo.setPushBlue = function() {
	tradeInfo.clickBlueMap.put(trade.playType,2);
	tradeInfo.clearHotAndPushByBlue();
	var arr = tradeInfo.pushBlueArray;
	for(var i=0; i<arr.length; i++) {
		var code = arr[i].code;
		var ballObj = document.getElementById(trade.playType + "_bc" + code);
		if(ballObj == null) return; 
		if(ballObj.className == "blue-off") {
			ballObj.className="ball-t-blue";
		}
	}
}

//添加到选号区
tradeInfo.ssqPush = function(i) {
	if(trade.playType == 'ds') return cll_alert("该玩法不支持此功能!");;
	disSelect();//清空选号区

	var pushRed = $("#areaRed"+i).html();
	var pushBlue = $("#areaBlue"+i).html();
	
	if(pushRed == "" || pushBlue == ""){
		return;
	}

	var redArr = pushRed.split(",");
	for(var k=0; k<redArr.length; k++) {
		var code = redArr[k];
		var ballObj = document.getElementById(trade.playType + "_rc" + code);
		var rows = 1;//红球对应第1列
		if(trade.playType == 'dt') rows = 2;
		selectNum(ballObj,rows,code);
		
	}
	
	var blueArr = pushBlue.split(",");
	for(var k=0; k<blueArr.length; k++) {
		var code = blueArr[k];
		var ballObj = document.getElementById(trade.playType + "_bc" + code);
		var rows = 2;//蓝球对应第2列
		if(trade.playType == 'dt') rows = 3;
		selectNum(ballObj,rows,code);
	}
}

//设置双色球红色提示号码
tradeInfo.setRedTip =  function(){
	var hotRedArr = tradeInfo.hotRedArray;
	var hotRedHtml = "";
	for(var i=0; i<hotRedArr.length; i++) {
		var code = hotRedArr[i].code;
	    hotRedHtml += code;
		if(i+1 < hotRedArr.length) {
			hotRedHtml += ",";
		}
	}
	$("#hotRedTip").html(hotRedHtml);

	var pushRedArr = tradeInfo.pushRedArray;
	var pushRedHtml = "";
	for(var i=0; i<pushRedArr.length; i++) {
		var code = pushRedArr[i].code;
	    pushRedHtml += code;
		if(i+1 < pushRedArr.length) {
			pushRedHtml += ",";
		}
	}
	$("#pushRedTip").html(pushRedHtml);
}

//设置双色球蓝色提示号码
tradeInfo.setBlueTip =  function(){
	var hotBlueArr = tradeInfo.hotBlueArray;
	var hotBlueHtml = "";
	for(var i=0; i<hotBlueArr.length; i++) {
		var code = hotBlueArr[i].code;
	    hotBlueHtml += code;
		if(i+1 < hotBlueArr.length) {
			hotBlueHtml += ",";
		}
	}
	$("#hotBlueTip").html(hotBlueHtml);

	var pushBlueArr = tradeInfo.pushBlueArray;
	var pushBlueHtml = "";
	for(var i=0; i<pushBlueArr.length; i++) {
		var code = pushBlueArr[i].code;
	    pushBlueHtml += code;
		if(i+1 < pushBlueArr.length) {
			pushBlueHtml += ",";
		}
	}
	$("#pushBlueTip").html(pushBlueHtml);
}

//##############################定胆杀号机选相关js begin#########################################
//保存点击红球定胆标记
tradeInfo.redDanMap = new Map();
//保存点击红球杀号标记
tradeInfo.redKillMap = new Map();
//保存点击蓝球定胆标记
tradeInfo.blueDanMap = new Map();
//保存点击蓝球杀号标记
tradeInfo.blueKillMap = new Map();
//多余胆码是否自动做杀号处理标记(0:否 1:是)
tradeInfo.autoKillCodeFlag = 0;
//定胆杀号机选红球select的ID
tradeInfo.redSelectId = "#ddshjx_getRandomRed";
//定胆杀号机选蓝球select的ID
tradeInfo.blueSelectId = "#ddshjx_getRandomBlue";
//定胆杀号机选组数select的ID
tradeInfo.groupSelectId = "#ddshjx_getRandomGroup";
//红球className
tradeInfo.redOff = "li2";
tradeInfo.redOn = "lion";
tradeInfo.redKill = "red-kill";
//蓝球className
tradeInfo.blueOff = "blue-off";
tradeInfo.blueOn = "blue-on";
tradeInfo.blueKill = "blue-kill";

//定胆杀号机选
tradeInfo.ddshjx = function(o,row,code) {
	var ballType;//球类别(1:红球定胆 2:红球杀号 3:红球未选状态 4:蓝球定胆 5:蓝球杀号 6:蓝球未选状态 7:未知)
	if(o == null) return;

	if(o.className == tradeInfo.redOn) {
		ballType = 1;
	} else if(o.className == tradeInfo.redKill) {
		ballType = 2;
	} else if(o.className == tradeInfo.redOff) {
		ballType = 3;
	} else if(o.className == tradeInfo.blueOn) {
		ballType = 4;
	} else if(o.className == tradeInfo.blueKill){
		ballType = 5;
	} else if(o.className == tradeInfo.blueOff) {
		ballType = 6;
	} else {
		ballType = 7;
	}

	if(ballType == 1) {
		tradeInfo.saveRedDan(o,row,code);
	} else if(ballType == 2) {
		if(tradeInfo.redDanMap.containsKey(code)) {
			tradeInfo.redDanMap.remove(code);
		}
		tradeInfo.saveRedKill(o,row,code);
	} else if(ballType == 3) {
		if(tradeInfo.redKillMap.containsKey(code)) {
			tradeInfo.redKillMap.remove(code);
		}
		tradeInfo.changeRedSelect();
	} else if(ballType == 4) {
		tradeInfo.saveBlueDan(o,row,code);
	} else if(ballType == 5) {
		if(tradeInfo.blueDanMap.containsKey(code)) {
			tradeInfo.blueDanMap.remove(code);
		}
		tradeInfo.saveBlueKill(o,row,code);
	} else if(ballType == 6) {
		if(tradeInfo.blueKillMap.containsKey(code)) {
			tradeInfo.blueKillMap.remove(code);
		}
		tradeInfo.changeBlueSelect();
	} else {
		return;
	}
}

//保存红球定胆
tradeInfo.saveRedDan = function(o,row,code) {
	var redDanSize = tradeInfo.getRedDanSize();
	if((redDanSize+1) > 5) {
		var tip = "您好,红球最多只能定5个胆码,红球("+ code +")是否做为杀号选择?<br/><br/><input id=\"killCodeCheckBox\" type=\"checkbox\" value=\"0\"><label for=\"killCodeCheckBox\" style=\"font-size:14px;color:red\">多余胆码自动做杀号处理</label>";
		if(tradeInfo.autoKillCodeFlag == 0) {
			cll_confirm(tip,
				function(){
					var killCodeCheckBox = $("#killCodeCheckBox");
					if(killCodeCheckBox.attr("checked")){
						tradeInfo.autoKillCodeFlag = 1;
					}
					tradeInfo.saveRedKill(o,row,code);
				},
				function(){
					o.className = tradeInfo.redOff;
				}
			);
			return;
		} else {
			tradeInfo.saveRedKill(o,row,code);
			return;
		}
	}
	o.className = tradeInfo.redOn;
	tradeInfo.redDanMap.put(code,row);
	tradeInfo.changeRedSelect();
}

//保存红球杀号
tradeInfo.saveRedKill = function(o,row,code) {
	var redKillSize = tradeInfo.getRedKillSize();
	if((redKillSize+1) > 27) {
		o.className = tradeInfo.redOff;
		cll_alert("您好,红球最多只能杀27个号码!");
		tradeInfo.changeRedSelect();
		return;
	}
	o.className = tradeInfo.redKill;
	tradeInfo.redKillMap.put(code,row);
	tradeInfo.changeRedSelect();
}

//保存蓝球定胆
tradeInfo.saveBlueDan = function(o,row,code) {
	o.className = tradeInfo.blueOn;
	tradeInfo.blueDanMap.put(code,row);
	tradeInfo.changeBlueSelect();
}

//保存蓝球杀号
tradeInfo.saveBlueKill = function(o,row,code) {
	var blueKillSize = tradeInfo.getBlueKillSize();
	if((blueKillSize+1) > 15) {
		o.className = tradeInfo.blueOff;
		cll_alert("您好,蓝球最多只能杀15个号码!");
		tradeInfo.changeBlueSelect();
		return;
	}
	o.className = tradeInfo.blueKill;
	tradeInfo.blueKillMap.put(code,row);
	tradeInfo.changeBlueSelect();
}

//获取红球定胆数
tradeInfo.getRedDanSize = function() {
	return tradeInfo.redDanMap.size();
}

//获取红球杀号数
tradeInfo.getRedKillSize = function() {
	return tradeInfo.redKillMap.size();
}

//获取蓝球定胆数
tradeInfo.getBlueDanSize = function() {
	return tradeInfo.blueDanMap.size();
}

//获取蓝球杀号数
tradeInfo.getBlueKillSize = function() {
	return tradeInfo.blueKillMap.size();
}

//动态改变红球select
tradeInfo.changeRedSelect = function() {
	var selectId = tradeInfo.redSelectId;
	var danSize = tradeInfo.getRedDanSize();
	var killSize = tradeInfo.getRedKillSize();
	var beginValue = 6;
	var endValue = 16;
	var removeValue = 17;

	beginValue = beginValue - danSize;
	if((danSize + killSize) > removeValue) {
		endValue = endValue - ((killSize + danSize) - removeValue);
	} 
	tradeInfo.initSelectOption(selectId,beginValue,endValue);
}

//动态改变蓝球select
tradeInfo.changeBlueSelect = function() {
	var selectId = tradeInfo.blueSelectId;
	var danSize = tradeInfo.getBlueDanSize();
	var killSize = tradeInfo.getBlueKillSize();
	var beginValue = 1;
	var endValue = 16;
	var removeValue = 0;

	beginValue = (beginValue - danSize);
	if(beginValue < 0) {
		beginValue = 0;
	}
	if((danSize + killSize) > removeValue) {
		endValue = endValue - ((killSize + danSize) - removeValue);
	} 
	tradeInfo.initSelectOption(selectId,beginValue,endValue);
}

//初始化指定select的option
tradeInfo.initSelectOption = function(selectId,beginValue,endValue) {
	$(selectId).empty();
	for(var i=beginValue; i<=endValue; i++) {
		$(selectId).append("<option value='"+ i +"'>"+ i +"</option>");
	}
}

//获取定胆杀号机选内容
tradeInfo.getContentByddshjx = function() {
	var group = $(tradeInfo.groupSelectId).val();
	for(var i=0; i<group; i++) {
		var count = $(tradeInfo.redSelectId).val();
		var danMap = tradeInfo.redDanMap;
		var killMap = tradeInfo.redKillMap;
		var maxBall = 33;
		var row = 1;//红球对应第一列
		var ballFlag = "_rc";
		tradeInfo.handleCode(count,danMap,killMap,maxBall,row,ballFlag);
		
		count = $(tradeInfo.blueSelectId).val();
		danMap = tradeInfo.blueDanMap;
		killMap = tradeInfo.blueKillMap;
		maxBall = 16;
		row = 2;//蓝球对应第一列
		ballFlag = "_bc";
		tradeInfo.handleCode(count,danMap,killMap,maxBall,row,ballFlag);

		zhuShu = getCount();
		if(zhuShu > 0){
			if(zhuShu > 10000) {
				cll_alert("单张彩票金额不能超过2万元！");
				return;
			}
			content = getContent();
			var bean = new contentBean();
			bean.content = content;
			bean.baseCount = zhuShu;
			bean.playType = trade.playType;

			var option = document.createElement("OPTION");
			option.text = playTypeNameMap.get(trade.playType) + ": " + getContent(1);
			option.value = option.text;
			option.title = option.text;

			trade.contentList.push(bean);
			fw.dom.get("tradeList").options.add(option);
			scrollSelectList("tradeList");
			showInLineInfo();
		}
	}
}

//处理号码
tradeInfo.handleCode = function(count,danMap,killMap,maxBall,row,ballFlag) {
	var arrs = new Array();
	for(var i=0;i<danMap.size();i++){//定胆
		arrs.push(danMap.element(i).key);
	}

	for(var j=1;j<=count;j++){
		var code = tradeInfo.getRandomCode(danMap,killMap,maxBall);
		while(arrs.toString().indexOf(code) != -1){
			code = tradeInfo.getRandomCode(danMap,killMap,maxBall);
		}
		arrs.push(code);
		cll.bubbleSort(arrs);
	}

	var map = trade.cbMap.get(trade.playType);
	if(map.get(row).size() > 0) {
		map.get(row).clear();
	}
	for(var k=0; k<arrs.length; k++) {
		var code = arrs[k];
		var o = document.getElementById(trade.playType + ballFlag + code);

		var b = new Ball();
		b.code = code;
		b.o = o;

		map.get(row).put(code,b);
	}
}

//获取随机号码
tradeInfo.getRandomCode = function(danMap,killMap,maxBall) {
	var code = cll.random(1,maxBall);
	if(parseInt(code,10) <= 9) {
		code = "0" + code;
	}
	while(killMap.containsKey(code) || danMap.containsKey(code)) {//随机的号码不包括定胆和杀号
		return tradeInfo.getRandomCode(danMap,killMap,maxBall);
	}
	return code;
}
//##############################定胆杀号机选相关js end#########################################
