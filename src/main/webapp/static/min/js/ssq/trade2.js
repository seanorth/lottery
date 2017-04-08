function tradeInit(){
	//初始化投注列表
	tradeSelectInitNew("tradeList");
	tradeInitInner();

}

//新玩法初始化
function tradeNewInit(){
	tradeSelectNewInit("tradeListfast"); //随缘号码
	tradeSelectNewInit("tradeListPerson"); //个性
	tradeInitInner();
}

function tradeInitInner(){
	
	trade.lotteryType = "100";		//彩种编号
	trade.lotteryTypeName = "双色球";	//彩种名称	
	trade.codeCount = 7;			//投注框列表

	//初始化每个选项的默认玩法
	tagDefaultPlayTypeMap.put("fs","fs");
	tagDefaultPlayTypeMap.put("dt","dt");
	tagDefaultPlayTypeMap.put("ds","ds");
	tagDefaultPlayTypeMap.put("gj","xzjz");
	tagDefaultPlayTypeMap.put("upload","upload");
	
	//文件上传(因再次购买功能移到最前面初始化，公用pVale造成)
	initPlayType("upload", 1, "文件上传", 1);//此玩法只为了前端判断而设

	//initPlayType(pName,pVale,pLabel,pAreaCount)	
	initPlayType("fs", 2, "标准", 2);
	initPlayType("dt",	3, "胆拖", 3,"2:1-5#1:1-*"); // 关联行号-关联行号:最少个数-最多个数  # 关联区号:最少个数-最多个数
	initPlayType("ds", 2, "标准", 2);
	
	initPlayType("glds", 1, "单式", 1);

	initPlayType("xzjz", 1110, "旋转矩阵", 2);//此玩法只为了前端判断而设，包含以下三种子玩法
	initPlayType("z6b5", 1111, "旋转矩阵(中6保5)", 2);
	initPlayType("z6b4", 1112, "旋转矩阵(中6保4)", 2);
	initPlayType("z5b5", 1113, "旋转矩阵(中5保5)", 2);
	
	initPlayType("ddshjx", 1117, "定胆杀号机选", 2);
	
	//如果页面地址有planNo，加入到列表框
	analyURL();

	trade.selectedTab = "fs";     	//默认选项
	trade.playType = "fs";    		//默认进入的玩法

	//初始化彩期信息
	initTermInfo(trade.lotteryType);
	
	//初始化追号的XML数据
	updateChaseXML();
}

$(document).ready(function(){
	//初始化信息展示
	tradeInfo.init();
});

/**
 * 
 * @param {} o 哪个对象
 * @param {} row 哪一行
 * @param {} code 号码多少
 */
function selectNum(o,row,code){
	if(trade.playType == "ddshjx") {//定胆杀号机选处理
		if(o.className == "li2" || o.className == "ball-hot-red" || o.className == "ball-t-red") {
			o.className = "lion";
		} else if(o.className == "lion") {
			o.className = "red-kill";
		} else if(o.className == "red-kill") {
			o.className = "li2";
		} else if(o.className == "blue-off"  || o.className == "ball-hot-blue" || o.className == "ball-t-blue") {
			o.className = "blue-on";
		} else if(o.className == "blue-on") {
			o.className = "blue-kill";
		} else if(o.className == "blue-kill") {
			o.className = "blue-off";
		} else {
			return;
		}
		tradeInfo.ddshjx(o,row,code);
	} else {
		//1#用当前玩法拿到行的信息map
		var map = trade.cbMap.get(trade.playType);
		
		if(map.get(row).containsKey(code)){
			//如果已经被选，则取消被选
			map.get(row).remove(code);
			if(o.className == "lion")o.className="li2";	//红球
			if(o.className == "blue-on")o.className="blue-off";	//蓝球
			
		}else{
			
			var infoMap = playTypeInfoMap.get(trade.playType);

			if(infoMap)
			{
				//取得信息
				var rowInfo = infoMap.get(row);
				if(rowInfo)
				{
					//判断该区号码个数是否正确
					var a = map.get(row);
					if( (rowInfo.max!="*" && a.size()>= Number(rowInfo.max))){
						cll_alert("超出选号的个数!");
						return;
					}
					//判断关联行是否选中,选中则取消
					for(var r = 0; r < rowInfo.relation.length; r++)
					{
						var rRow = rowInfo.relation[r];
						if(map.get(rRow).containsKey(code))
						{
							var ball = map.get(rRow).get(code).o;
							if(ball.className == "lion")ball.className="li2";	//红球
							if(ball.className == "blue-on")ball.className="blue-off";	//蓝球
							map.get(rRow).remove(code);
						}
					}

				}
			}
		
		
			var b = new Ball();
			b.code = code;
			b.o = o;
			map.get(row).put(code,b);
			if(o.className == "li2" || o.className == "ball-hot-red" || o.className == "ball-t-red") o.className="lion";	//红球
			if(o.className == "blue-off" || o.className == "ball-hot-blue" || o.className == "ball-t-blue")o.className="blue-on";	//蓝球
		}
	}
	showSelectInfo();
	tradeInfo.showHotAndPushByAll();
}

/**
 * 得到投注的号码格式，不同玩法不同处理
 * @return
 */
function getContent(){
	var content ="";
	map = trade.cbMap.get(trade.playType);
	if(trade.playType=="fs" || trade.playType=="xzjz" || trade.playType=="ddshjx")
	{
		return combinContent(map,",","|");
	}
	if(trade.playType=="dt")
	{
		for(var i = 1; i<= map.size(); i++)
		{
			var row = map.get(i);
			if(row.size() > 0)
			{
				if(i==1)	content += getFromMap(row.values(),",")+"#";
				else		content += getFromMap(row.values(),",")+"|";
			}
		}
		content = content.substring(0,content.length-1);
	}
	return content; 
}

//得到URL地址里面的注数
function getUrlCount(){
	var zhushu = 1;
	
	//计算注数
	var targetCount = 0 ;
	if(trade.playType == "fs" || trade.playType == "ds" ) zhushu = fsGetCount(content);
	if(trade.playType == "dt") zhushu = dtGetCount(content);
	if(trade.playType == "z6b5" || trade.playType == "z6b4" || trade.playType == "z5b5") zhushu = xzjzGetCount(content);
	if(trade.playType == "ddshjx") zhushu = fsGetCount(content);
	return zhushu;
}


//得到选号区里面的注数，不同玩法不同算法
function getCount(){
	var zhushu = 0;
	var ballCount = 0 ;
	var red=0; //红球的个数
	var blue=0; //蓝球的个数
	//计算球的个数
	map = trade.cbMap.get(trade.playType);
	for(var i = 1; i<= map.size(); i++)
	{
		 var row = map.get(i).size();
		 ballCount +=row;
	}
	
	//计算注数
	var targetCount = 0 ;
	if(trade.playType == "fs" || trade.playType == "xzjz") {
		zhushu = fsGetCount(getContent());
		red=map.get(1).size();
        blue=map.get(2).size();
    }
	if(trade.playType == "dt") {
		zhushu = dtGetCount(getContent());
		red=map.get(1).size()+map.get(2).size();
        blue=map.get(3).size();
    }
	if(trade.playType == "ds") {
		var list = dsGetList();
		for(var i=0;i<list.length;i++){
			zhushu+=dsGetCount(list[i]);
		}
	}
	if(trade.playType == "glds") {
		var list = gldsGetList();
		zhushu = list!=null?list.length:0;
	}
	if(trade.playType == "ddshjx") { 
		zhushu = fsGetCount(getContent());
		red=tradeInfo.redDanMap.size();
        blue=tradeInfo.blueDanMap.size();
    }
	fw.dom.get("cbRed").innerHTML=red;
	fw.dom.get("cbBlue").innerHTML=blue;
	return zhushu;
}

function dsGetCount(values){
	var lines=values.split("|");
	var redBallCount=lines[0].split(",").length;
	var blueBallCount=lines[1].split(",").length;
	if(redBallCount==6 && blueBallCount==1){
		return 1; 
	}else{
		return  fsGetCount(values);
	}
}


function fsGetCount(values){
	v = values.split("|");
	if(v.length <= 1){
		return 0;
	}
	if(v[1] == ""){
		return 0;
	}
	red = v[0].split(",");
	blue = v[1].split(",");
	return cll.C(red.length,6)*blue.length;
}
function dtGetCount(values){
	var qh = values.split("|");
	if(qh.length < 2){
		return 0;
	}
	if(qh[0] == "" || qh[1] == ""){
		return 0;
	}
	var dt = qh[0].split("#");
	if(dt.length < 2){
		return 0;
	}
	if(dt[0] == ""||dt[1] == ""){
		return 0;
	}
	var dt1 = dt[0].split(",");
	var dt2 = dt[1].split(",");
	if(dt1.length + dt2.length <= 6){//胆拖(红球)只有一注，不算胆拖
		return 0;
	}
	var blue = qh[1].split(",");
	return cll.C(dt2.length,6-dt1.length)*blue.length;
}

function xzjzGetCount(values) {
	var line = values.split("|");
	if(line.length < 2){
		return 0;
	}
	if(line[0] == "" || line[1] == ""){
		return 0;
	}
	
	var redBallCount = line[0].split(",").length;
	var blueBallCount = line[1].split(",").length;
	if(redBallCount == 0 || blueBallCount == 0){
		return 0;
	}
	
	var map = ssqShrink.typeMap.get(trade.playType);
	var shrinkCount = map.get(redBallCount);//红球缩水注数
	if(shrinkCount == null) {
		shrinkCount = 0;
	}
	var totalCount = shrinkCount*blueBallCount;//总注数=红球缩水注数*蓝球个数
	return totalCount;
}

function dsGetList(){
	var reg1 = /\D+/;
	var reg2 = /(^0[1-9]$)|(^1[0-9]$)|(^2[0-9]$)|(^3[0-3]$)/;
	var reg3 = /(^0[1-9]$)|(^1[0-6]$)/;
	var content = $("#"+trade.playType + "_cText").val();
	var lines = content.split("\n");
	var betList = new Array();
	var qianqu=0;
	var houqu=0;
	for(var i=0; i<lines.length; i++){
		var nums=lines[i].replace(":","|");
		if($.trim(nums) == ""){
			continue;
		}
		
		var line = nums.split("|");
		if(line.length != 2) {
			cll_alert("第"+(i+1)+"行号码格式不正确,请检查!");
			return;
		}
		
		var redNum = line[0].split(reg1);
		var redSet = new Set();
		for(var j=0; j<redNum.length; j++){
			var n = redNum[j];
			if(n=="1"||n=="2"||n=="3"||n=="4"||n=="5"||n=="6"||n=="7"||n=="8"||n=="9"){
				n = "0"+n;
			}
			if(reg2.test(n)){
				redSet.push(n);
			}
		}
		if(redSet.size() != redNum.length){
			cll_alert("第"+(i+1)+"行红球号码格式不能被识别!");
			return;
		}

		var blueNum = line[1].split(reg1);
		var blueSet = new Set();
		for(var j=0; j<blueNum.length; j++){
			var n = blueNum[j];
			if(n=="1"||n=="2"||n=="3"||n=="4"||n=="5"||n=="6"||n=="7"||n=="8"||n=="9"){
				n = "0"+n;
			}
			if(reg3.test(n)){
				blueSet.push(n);
			}
		}
		if(blueSet.size() != blueNum.length){
			cll_alert("第"+(i+1)+"行蓝球号码格式不能被识别!");
			return;
		}
		if(redSet.size() < 6 || blueSet.size() <1){
			cll_alert("第"+(i+1)+"行号码格式不正确,请检查!");
			return;
		}
		betList.push(redSet.elements.join(",") + "|" + blueSet.elements.join(","));
		qianqu+=redNum.length;
		houqu+=blueNum.length;
	}
		fw.dom.get("cbRed").innerHTML=qianqu;
		fw.dom.get("cbBlue").innerHTML=houqu;
	return betList;
}

function gldsGetList(){
	//判断内容格式
	var content = $("#"+trade.playType + "_cText").val();
	var lines = $.trim(content).split(/\s*\n\s*/g);
	if( lines[0]!="" && lines[0].split("|").length == 2 )
	{//有后区内容的
		//隐藏后区选择div
		$("#fs2").hide();
		return dsGetList();
	}
	else
	{
		$("#fs2").show();
		return  gldsGetList_();
	}
	
}

function gldsGetList_(){

	var result = new Array() ;
	//判断蓝色球是否选中
	var blue = combinContent(map,",","").split(",");
	if(blue.length == 0 || blue[0] == "")
	{
		return null;
	}

	var content = $("#"+trade.playType + "_cText").val();
	if(content.length < 2) return null;
	var passCount = 0;
	var index = 0;
	var lines = $.trim(content).split(/\s*\n\s*/g);
	for(var i=0;i<lines.length;i++){
		index++;
		if(/^(?:(?:^|,)(?:0[1-9]|[12][0-9]|3[0-3])){6}$/.test(lines[i])){
			for( var j= 0; j<blue.length; j++){
				result[	passCount ++ ] = lines[i] + "|" + blue[j];
			}
			
		}else{
			cll_alert("号码内容格式有误!");
			return null;
			break;
		}
	}
	return result;
}

function JSNEW(count){
	var codeCount ,codeCount2;
	if(trade.playType == 'fs' || trade.playType == 'ds'){
		codeCount = 6;
		codeCount2= 1;
		
	}else{
		cll_alert("该玩法不支持机选功能!");
		return;
	}
	jsPlayType = trade.playType;
	for(var i=1;i<=count;i++){
		reds = new Array();
		for(var j=1;j<=codeCount;j++){
			codeInt = cll.random(1,33);
			code = codeInt+"";
			if(codeInt<=9){
				code = "0"+codeInt;
			}
			while(reds.toString().indexOf(code) != -1){
				codeInt = cll.random(1,33);
				code = codeInt+"";
				if(codeInt<=9){
					code = "0"+codeInt;
				}
			}
			reds.push(code);
		}
		
		blues = new Array();
		for(var j=1;j<=codeCount2;j++){
			codeInt = cll.random(1,16);
			code = codeInt+"";
			if(codeInt<=9){
				code = "0"+codeInt;
			}
			while(blues.toString().indexOf(code) != -1){
				codeInt = cll.random(1,16);
				code = codeInt+"";
				if(codeInt<=9){
					code = "0"+codeInt;
				}
			}
			blues.push(code);
			cll.bubbleSort(reds);
			var line = reds.join(",")+"|"+blues.toString();
			
			addOptionByJx(line,line)
		}
		
	}
}

//随机红球
function JxRed(r){
	clearRed(r);
	var count = $("#"+ trade.playType +"_getRandomRed").val();
	var arrs = new Array();
	map = trade.cbMap.get(trade.playType);
	var red=map.get(1).keys();
	var len=red.length;
	if(trade.playType=='dt'&&count>30&&len==4){
		arrs=selectAllNum();
	}else{
		var code=0;
		for(var j=1;j<=count;j++){
			code=ran(r);
			code=checkRan(r,code);
			while(arrs.toString().indexOf(code) != -1){
				code=ran(r);
				code=checkRan(r,code);
			}
			arrs.push(code);
			cll.bubbleSort(arrs);
		}
	}
	for(var k=0; k<arrs.length; k++) {
		var code = arrs[k];
		var ballObj = document.getElementById(trade.playType + "_rc" + code);
		var rows = r;//红球对应第几列
		selectNum(ballObj,rows,code);
	}
}

function selectAllNum(){
	var red=map.get(1).keys();
	var len=red.length;
	var arrs=[];
	for(var i=1;i<=33;i++){
		var val=i;
		if(i<10){
			val="0"+i;
		}
		arrs.push(val);
	}
	for(var i=arrs.length;i>0;i--){
		for(var j=0;j<len;j++){
			if(red[j]==arrs[i]){
				arrs.splice(i,1);
			}
		}
	}
	return arrs;

}
function checkRan(r,code){
	if(trade.playType=='dt'){
		map = trade.cbMap.get(trade.playType);
		var red=map.get(1).keys();
		var blue=map.get(3).keys();
		var arr=[];
		if(r==2){
			arr=red;
		}else if(r==4){
			arr=blue;
		}
		for(var z=0;z<arr.length;z++){
			if(arr[z]==code){
				code=ran(r);
				code=checkRan(r,code);
			}
		}
	}
	return code;
}
function ran(r){
	var codeInt = 0;
	if(trade.playType=='dt'){
		if(r==2){
			codeInt=cll.random(1,33);
		}else if(r==4){
			codeInt=cll.random(1,16)
		}
	}else{
		if(r==1){
			codeInt=cll.random(1,33);
		}else if(r==2){
			codeInt=cll.random(1,16)
		}
	}
	var code = codeInt+"";
	if(codeInt<=9){
		code = "0"+codeInt;
	}
	return code;
}
//随机蓝球
function JxBlue(r) {
	clearBlue(r);
	var count = $("#"+ trade.playType +"_getRandomBlue").val();
	var arrs = new Array();
	for(var j=1;j<=count;j++){
		codeInt = cll.random(1,16);
		code = codeInt+"";
		if(codeInt<=9){
			code = "0"+codeInt;
		}
		while(arrs.toString().indexOf(code) != -1){
			codeInt = cll.random(1,16);
			code = codeInt+"";
			if(codeInt<=9){
				code = "0"+codeInt;
			}
		}
		arrs.push(code);
		cll.bubbleSort(arrs);
	}
	for(var k=0; k<arrs.length; k++) {
		var code = arrs[k];
		var ballObj = document.getElementById(trade.playType + "_bc" + code);
		var rows = r;//蓝球对应第几列
		selectNum(ballObj,rows,code);
	}
}

/**
 * 清空随机红球
 */
function clearRed(r){
	if(trade.playType == "ddshjx") {//定胆杀号机选处理
		$("#ddshjx_playTypeDiv").find("li[id^='ddshjx_rc']").each(function(){
		  $(this).attr("className",tradeInfo.redOff);
		});
		tradeInfo.redDanMap.clear();
		tradeInfo.redKillMap.clear();
		tradeInfo.changeRedSelect();
		fw.dom.get("cbRed").innerHTML=0;
	} else {
		var map = trade.cbMap.get(trade.playType);
		var rows = r;//红球对应第几列
		if(map.containsKey(rows)){
			os = map.get(rows+"").values();
			if(os){
				map.get(rows+"").clear();
				for(var j=0;j<os.length;j++){
					selectNum(os[j].o,rows,os[j].code); selectNum(os[j].o,rows,os[j].code);	//两次点击，清理同步位
				}
			}
		}
	}
}

/**
 * 清空随机蓝球
 */
function clearBlue(r){
	if(trade.playType == "ddshjx") {//定胆杀号机选处理
		$("#ddshjx_playTypeDiv").find("li[id^='ddshjx_bc']").each(function(){
		  $(this).attr("className",tradeInfo.blueOff);
		});
		tradeInfo.blueDanMap.clear();
		tradeInfo.blueKillMap.clear();
		tradeInfo.changeBlueSelect();
		fw.dom.get("cbBlue").innerHTML=0;
	} else {
		var map = trade.cbMap.get(trade.playType);
		var rows = r;//蓝球对应第几列
		if(map.containsKey(rows)){
			os = map.get(rows+"").values();
			if(os){
				map.get(rows+"").clear();
				for(var j=0;j<os.length;j++){
					selectNum(os[j].o,rows,os[j].code); selectNum(os[j].o,rows,os[j].code);	//两次点击，清理同步位
				}
			}
		}
	}
}

//点击“确认选号并添加到投注区”提示信息
function tiShiInfo(){
	var red=map.get(1).keys();
	var len=red.length;
	if(trade.playType=="fs"){
		if(map.get(1).size()==0 && map.get(2).size()==0){
			str="请至少选择6个红球和1个蓝球!";
		}else{
			if(map.get(1).size()<6){
				str="请至少选择6个红球！";
			}
			if(map.get(2).size()<1){
				str="请至少选择1个蓝球！";
			}
		}
	}
	if(trade.playType=="dt"){
		if(map.get(1).size()==0){
			str="请至少选择1个胆码！";
		}else if(map.get(2).size()<6){
			str="红球号码需大于6个!";
		}else{
			str="请至少选1个篮球！";
		}
	}
	if(trade.playType=="xzjz"){
		if(map.get(1).size()==0 && map.get(2).size()==0){
			str="请选择8-20个红球号码和1-16个蓝球号码！";
		}else{
			if(map.get(1).size()<8){
				str="请至少选择8个红球！";
			}
			if(map.get(2).size()<1){
				str="请至少选择1个蓝球！";
			}
		}
	}
	return str;
}

