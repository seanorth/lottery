/**
 * info:双色球旋转矩阵缩水
 * date:2011-10-12
 * author:sxh
 */
var ssqShrink = {};

//注意与页面的radio value值保持一致
ssqShrink.z6b5 = "z6b5";
ssqShrink.z6b4 = "z6b4";
ssqShrink.z5b5 = "z5b5";

ssqShrink.z6b5Map = new Map();
ssqShrink.z6b5Map.put("8",4);
ssqShrink.z6b5Map.put("9",7);
ssqShrink.z6b5Map.put("10",14);
ssqShrink.z6b5Map.put("11",25);
ssqShrink.z6b5Map.put("12",44);
ssqShrink.z6b5Map.put("13",74);
ssqShrink.z6b5Map.put("14",118);
ssqShrink.z6b5Map.put("15",174);
ssqShrink.z6b5Map.put("16",260);
ssqShrink.z6b5Map.put("17",402);
ssqShrink.z6b5Map.put("18",569);
ssqShrink.z6b5Map.put("19",783);
ssqShrink.z6b5Map.put("20",1073);

ssqShrink.z6b4Map = new Map();
ssqShrink.z6b4Map.put("8",3);
ssqShrink.z6b4Map.put("9",3);
ssqShrink.z6b4Map.put("10",3);
ssqShrink.z6b4Map.put("11",5);
ssqShrink.z6b4Map.put("12",6);
ssqShrink.z6b4Map.put("13",10);
ssqShrink.z6b4Map.put("14",14);
ssqShrink.z6b4Map.put("15",19);
ssqShrink.z6b4Map.put("16",25);
ssqShrink.z6b4Map.put("17",34);
ssqShrink.z6b4Map.put("18",42);
ssqShrink.z6b4Map.put("19",54);
ssqShrink.z6b4Map.put("20",66);

ssqShrink.z5b5Map = new Map();
ssqShrink.z5b5Map.put("8",12);
ssqShrink.z5b5Map.put("9",30);
ssqShrink.z5b5Map.put("10",50);
ssqShrink.z5b5Map.put("11",100);
ssqShrink.z5b5Map.put("12",132);
ssqShrink.z5b5Map.put("13",245);
ssqShrink.z5b5Map.put("14",371);
ssqShrink.z5b5Map.put("15",579);
ssqShrink.z5b5Map.put("16",808);
ssqShrink.z5b5Map.put("17",1213);
ssqShrink.z5b5Map.put("18",1547);
ssqShrink.z5b5Map.put("19",2175);
ssqShrink.z5b5Map.put("20",2850);

ssqShrink.typeMap = new Map();
ssqShrink.typeMap.put(ssqShrink.z6b5,ssqShrink.z6b5Map);
ssqShrink.typeMap.put(ssqShrink.z6b4,ssqShrink.z6b4Map);
ssqShrink.typeMap.put(ssqShrink.z5b5,ssqShrink.z5b5Map);

ssqShrink.shrinkTypeLalelMap = new Map();
ssqShrink.shrinkTypeLalelMap.put(ssqShrink.z6b5,"旋转矩阵(中6保5)");
ssqShrink.shrinkTypeLalelMap.put(ssqShrink.z6b4,"旋转矩阵(中6保4)");
ssqShrink.shrinkTypeLalelMap.put(ssqShrink.z5b5,"旋转矩阵(中5保5)");

//获取所选过数(参数[红球:1 蓝球:2])
ssqShrink.getSelectBallCount = function(i) {
	var ballCount = 0 ;
	var map = trade.cbMap.get(trade.playType);
	if(map.containsKey(i)){
		ballCount = map.get(i+"").size();
	}
	return ballCount;
}

//获取当前缩水类别
ssqShrink.getCurrentShrinkType = function() {
	//获取当前选中的缩水类型
	var type = $('input:radio[name="shrinkType"]:checked').val();
	if(type == undefined || type == null) {
		alert("请选择缩水类型！");
		return;
	}
	return type;
}

//获取当前缩水注数
ssqShrink.getCurrentShrinkCount = function() {
	var type = ssqShrink.getCurrentShrinkType();
	var map = ssqShrink.typeMap.get(type);
	var redBallCount = ssqShrink.getSelectBallCount(1);
	var blueBallCount = ssqShrink.getSelectBallCount(2);

	var shrinkCount = map.get(redBallCount);//红球缩水注数
	if(shrinkCount == null) {
		shrinkCount = 0;
	}
	var totalCount = shrinkCount*blueBallCount;//总注数=红球缩水注数*蓝球个数
	return totalCount;
}


//缩水金额显示
ssqShrink.showShrinkMoney = function(){
	var redBallCount = ssqShrink.getSelectBallCount(1);
	var blueBallCount = ssqShrink.getSelectBallCount(2);
	var z6b4Count = 0;
	var z6b5Count = 0;
	var z5b5Count = 0;

	if(redBallCount < 8 || redBallCount > 20 || blueBallCount < 1) {
		z6b4Count = 0;
		z6b5Count = 0;
		z5b5Count = 0;
	} else {
		var z6b5Map = ssqShrink.typeMap.get(ssqShrink.z6b5);
		var z6b4Map = ssqShrink.typeMap.get(ssqShrink.z6b4);
		var z5b5Map = ssqShrink.typeMap.get(ssqShrink.z5b5);

		if(z6b5Map != null) z6b5Count= z6b5Map.get(redBallCount);
		if(z6b4Map != null) z6b4Count= z6b4Map.get(redBallCount);
		if(z5b5Map != null) z5b5Count= z5b5Map.get(redBallCount);
	}

	$("#z6b4Money").html(z6b4Count*blueBallCount*2);
	$("#z6b5Money").html(z6b5Count*blueBallCount*2);
	$("#z5b5Money").html(z5b5Count*blueBallCount*2);
}
