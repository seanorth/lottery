function tradeInit(){
	//初始化投注列表
	tradeSelectInitNew("tradeList");

	trade.lotteryType = "102";		//彩种编号
	trade.lotteryTypeName = "福彩3D";	//彩种名称	
	trade.codeCount = 3;			//开奖号个数

	//初始化每个选项的默认玩法
	tagDefaultPlayTypeMap.put("zx","zx");
	tagDefaultPlayTypeMap.put("zs","zhuxuan");
	tagDefaultPlayTypeMap.put("zl","zl");	
	tagDefaultPlayTypeMap.put("sg","glzx");
	tagDefaultPlayTypeMap.put("upload","zhixdsUpload");
	tagDefaultPlayTypeMap.put("Done","1d");
	tagDefaultPlayTypeMap.put("Dtwo", "2d");
	tagDefaultPlayTypeMap.put("tx","tx");
	tagDefaultPlayTypeMap.put("hs","hs");
	tagDefaultPlayTypeMap.put("bx","bx3");
	tagDefaultPlayTypeMap.put("dx","dx");
	tagDefaultPlayTypeMap.put("jiou","jiou");
	tagDefaultPlayTypeMap.put("c3t","c3t");
	tagDefaultPlayTypeMap.put("tlj","tlj");
	
	//initPlayType(pName,pVale,pLabel,pAreaCount,"",maxPrize)	
	initPlayType("zx", 		28,	"直选标准", 3,"",1040);
	initPlayType("zxHz",	31,	"直选和值", 2,"",1040);
	initPlayType("zhuxuan",29001,"组三标准", 3,"",346);
	initPlayType("zs", 29, "组三包号", 1,"",346);
	initPlayType("zsHz", 32, "组三和值", 2,"",346);
	initPlayType("zl", 30, "组六包号", 1,"",173);
	initPlayType("zlHz", 33, "组六和值", 2,"",173);
	initPlayType("zlDt", 38, "组六胆拖", 2,"2:1-2#1:1-*",173); // 关联行号-关联行号:最少个数-最多个数  # 关联行号-关联行号:最少个数-最多个数
	
	initPlayType("glzx", 	28,	"直选标准", 0,"",1040);
	initPlayType("glzhux", 	40,	"组选单式", 0,"",1040);
	
	initPlayType("zxDt", 29002, "直选胆拖", 2,"2:1-2#1:1-*",1040); // 关联行号-关联行号:最少个数-最多个数  # 关联行号-关联行号:最少个数-最多个数
	initPlayType("zxKd", 29003, "直选跨度", 1,"",1040);
	initPlayType("zxBh", 29004, "直选包号", 3,"",1040);

	initPlayType("1d", 29008, "1D", 3,"",10);
	initPlayType("2d", 29009, "2D", 3,"",104);
	initPlayType("c1d", 29010, "猜1D", 1,"",230);
	initPlayType("c2d", 29011, "猜2D", 2,"",37);
	initPlayType("tx", 29012, "通选", 3,"",470);
	initPlayType("hs", 29013, "和数", 1,"",1040);
	initPlayType("bx3", 29014, "包选三", 3,"",693);
	initPlayType("bx6", 29015, "包选六", 3,"",606);
	initPlayType("dx", 29016, "大小", 1,"",6);
	initPlayType("jiou", 29017, "奇偶", 1,"",8);
	initPlayType("c3t", 29018, "猜三同", 1,"",104);
	initPlayType("tlj", 29019, "拖拉机", 3,"",65);
	
	initPlayType("zhixdsUpload", 29006, "直选单式上传", 1);
	initPlayType("zuxdsUpload", 29007, "组选单式上传", 1);
	
	
	//如果页面地址有planNo，加入到列表框
	analyURL();

	trade.selectedTab = "zx";     	//默认选项
	trade.playType = "zx";    		//默认进入的玩法

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
	//1#用当前玩法拿到行的信息map
	var map = trade.cbMap.get(trade.playType);
	if(map.get(row).containsKey(code)){
		//如果已经被选，则取消被选
		map.get(row).remove(code);
		if(o.className == "lion")o.className="li2";	//红球
		
		//同步十位
		if(trade.playType == "zhuxuan" && row == 1)
		{
			$("#zhuxuan2 >li").each(function(j, divEle){
				if(divEle.innerHTML == o.innerHTML)
				{
					map.get(2).remove(code);
					divEle.className="li2";
				}
			});	
		}
		
	}else{
		//胆拖的个数验证和号码转移
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
		if(o.className == "li2") o.className="lion";	//红球
		
		//同步十位
		if(trade.playType == "zhuxuan" && row == 1)
		{
			$("#zhuxuan2 >li").each(function(j, divEle){
				if(divEle.innerHTML == o.innerHTML)
				{
					map.get(2).put(code,b);
					divEle.className="lion";
				}
			});
		}
	}
	showSelectInfo();
}

//得到选中当前选中号码个数
function changeBetInfo(){
	var playType = trade.playType;
	var len = $("#"+playType+"_playTypeDiv .balls .lion").length;
	$("#cbBlue").html(len);
	if(playType == "glzx" || playType == "glzhux") {
		$("#cbgs").hide();
		$("#cbfs").hide();
		$("#cbds").show();
	} else {
		$("#cbgs").show();
		$("#cbfs").show();
		$("#cbds").hide();
	}
}

//得到url地址里面的注数
function getUrlCount(){
	if(trade.playType == "zx" || trade.playType == "glzx" || trade.playType == "tx" ){
		var m = content.split("|");
		if(m.length < 3){
			return 0;
		}
		var count = 1;
		for(var i = 0; i< m.length; i++){
			var row = m[i].split(",").length;
			if(row < 1){
				return 0;
			}
			count *= row;
		}
		return count;
	}//96e79218965eb72c92a549dd5a330112
	if(trade.playType == "zxHz"){
		return zxHzGetValue(content);
	}
	if(trade.playType == "zhuxuan"){
		var m = content.split("|");
		if(m.length < 3){ 
			return 0;
		}
		var row1 = m[0].split(",");
		var row3 = m[2].split(",");
		zhushu = row1.length*row3.length;
		var baozi = 0;
		
		//减去豹子的注数
		for(var i=0;i<row1.length;i++){
			for(var j=0; j<row3.length; j++){
				if(row1[i] == row3[j])
				{
						baozi ++;
				}
			}
		}
		zhushu -= baozi;
		return zhushu;
	}
	if(trade.playType == "zs"){
		return zsGetValue(content);
	}
	if(trade.playType == "zsHz"){
		return zsHzGetValue(content);
	}
	if(trade.playType == "zl"){
		return zlGetValue(content);
	}
	if(trade.playType == "zlHz"){
		return zlHzGetValue(content);
	}
	if(trade.playType == "zlDt"){
		return zlDtGetValue(content);
	}
	if(trade.playType == "zxDt"){
		return zxDtGetValue(content);
	}
	if(trade.playType == "zxKd"){
		return zxKdGetValue(content);
	}
	if(trade.playType == "zxBh"){
		var flag = false;
		for(var i = 1; i<= map.size(); i++) {
			var row = map.get(i).size();
			if(row >= 10) {//必须有一位全选
				flag = true;
				break;
			}
		}

		var count = 1;
		if(flag) {
			for(var i = 1; i<= map.size(); i++){
				var row = map.get(i).size();
				count *=row;
			}
		} else {
			count = 0;
		}
		return count;
	}
	if (trade.playType == "dx" || trade.playType == "jiou" || trade.playType == "c3t"||trade.playType == "tlj"){
		content = content.replace("1","小").replace("2","大").replace("5","奇").replace("4","偶").replace("C3T","猜三同").replace("TLJ","拖拉机");
		return getDxJoCount(content);
	}
	if(trade.playType == "c1d"||trade.playType == "hs"){
		return getDxJoCount(content);
	}
	if(trade.playType == "bx3" || trade.playType == "bx6"){
		return getBXCount(content,trade.playType);
	}
	if(trade.playType == "c2d"){
		return getC2dCount(content);
	}
	if(trade.playType == "2d"){
		return get2dCount(content);
	}
	if(trade.playType == "1d"){
		var m = content.split("|");
		if(m.length < 3){ 
			return 0;
		}
		var arr1 = m[0];
		var arr2 = m[1];
		var arr3 = m[2];
		var row1Ok = arr1.indexOf("*") == -1?true:false;
		var row2Ok = arr2.indexOf("*") == -1?true:false;
		var row3Ok = arr3.indexOf("*") == -1?true:false;
		  var row1Len = !row1Ok?0:arr1.split(",").length;
		  var row2Len = !row2Ok?0:arr2.split(",").length;
		  var row3Len = !row3Ok?0:arr3.split(",").length;
		  
		  return row1Len+row2Len+row3Len;
		
	}
}

//得到选号区里面的注数，不同玩法不同算法
function getCount(){
	//得到选中当前选中号码个数
	changeBetInfo();

	map = trade.cbMap.get(trade.playType);
	if(trade.playType == "zx" || trade.playType == "tx" ){
		var count = 1;
		for(var i = 1; i<= map.size(); i++)
		{
		 	var row = map.get(i).size();
		 	count *=row;
		}
		return count;
	}
	if(trade.playType == "zxHz"){
		return zxHzGetValue(getContent());
	}
	if(trade.playType == "zhuxuan"){
		var row1 = map.get("1").values() ;
		var row3 = map.get("3").values();
		zhushu = row1.length*row3.length;
		var baozi = 0;
		
		//减去豹子的注数
		for(var i=0;i<row1.length;i++){
			for(var j=0; j<row3.length; j++){
				if(row1[i].code == row3[j].code)
				{
						baozi ++;
				}
			}
		}
		zhushu -= baozi;
		return zhushu;
	}
	if(trade.playType == "zs"){
		return zsGetValue(getContent());
	}
	if(trade.playType == "zsHz"){
		return zsHzGetValue(getContent());
	}
	if(trade.playType == "zl"){
		return zlGetValue(getContent());
	}
	if(trade.playType == "zlHz"){
		return zlHzGetValue(getContent());
	}
	if(trade.playType == "zlDt"){
		return zlDtGetValue(getContent());
	}
	if(trade.playType == "glzx" ) {
		var list = glzxGetList();
		return list!=null?list.length:0;
	}
	if(trade.playType == "glzhux") {
		var list = glzhuxGetList();
		return list!=null?list.length:0;
	}
	if(trade.playType == "zxDt"){
		return zxDtGetValue(getContent());
	}
	if(trade.playType == "zxKd"){
		return zxKdGetValue(getContent());
	}
	if(trade.playType == "zxBh"){
		var flag = false;
		for(var i = 1; i<= map.size(); i++) {
			var row = map.get(i).size();
			if(row >= 10) {//必须有一位全选
				flag = true;
				break;
			}
		}

		var count = 1;
		if(flag) {
			for(var i = 1; i<= map.size(); i++){
				var row = map.get(i).size();
				count *=row;
			}
		} else {
			count = 0;
		}
		return count;
	}
	if (trade.playType == "dx" || trade.playType == "jiou" || trade.playType == "c3t"||trade.playType == "tlj" ||trade.playType == "c1d"||trade.playType == "hs"){
		return getDxJoCount(getContent());
	}
	if(trade.playType == "1d"){
		var row1 = map.get("1").values();
		var row2 = map.get("2").values();
		var row3 = map.get("3").values();
		return row1.length+row2.length+row3.length
	}
	if(trade.playType == "bx3" || trade.playType == "bx6"){
		return getBXCount(getContent(),trade.playType);
	}
	if(trade.playType == "c2d"){
		return getC2dCount(getContent());
	}
	if(trade.playType == "2d"){
		return get2dCount(getContent());
	}
}
function get2dCount(content){
	var rows = content.split("|");
	if(rows.length == 3){
		var row1 = rows[0];
		var row2 = rows[1];
		var row3 = rows[2];
		
		var rows1Len = row1.indexOf("*")==-1 ?row1.split(",").length:0;
		var rows2Len = row2.indexOf("*")==-1 ?row2.split(",").length:0;
		var rows3Len = row3.indexOf("*")==-1 ?row3.split(",").length:0;
		
		var count = 0;
		if((rows1Len != 0 && rows2Len != 0)||(rows1Len != 0 && rows3Len != 0)||(rows3Len != 0 && rows2Len != 0)){
			count = rows1Len*rows2Len + rows2Len*rows3Len + rows1Len*rows3Len;
		}
	}
	return count;
}


function getC2dCount(content){
	var tempMap= new Map();
	var count = 0;
	if(content.indexOf("|")!=-1){
		var rows1 = content.split("|")[0].split(",");
		var rows2 = content.split("|")[1].split(",");
		for(var k = 0 ;k<rows1.length ;k++){
			for(var j = 0 ;j<rows2.length;j++){
				var betNum1 = rows1[k];
				var betNum2 = rows2[j];
				if(parseInt(betNum2) < parseInt(betNum1)){
					var temp = betNum2;
					betNum2 = betNum1;
					betNum1 = temp;
				}
				var tempNum = betNum1+","+betNum2;
				if(!tempMap.containsKey(tempNum)){
					tempMap.put(tempNum);
					count++;
				}
			}
		}
	}
	return count;
}

function getBXCount(countent,playType){
	var rows = countent.split("|");	
	var bx3Count = 0;
	var bx6Count = 0;
	if(rows.length == 3){ 	
		var row1 = rows[0].split(",");
		var row2 = rows[1].split(",");
		var row3 = rows[2].split(",");	
		for(var i = 0 ;i<row1.length;i++){
			for(var j = 0 ;j<row2.length;j++){
				for(var k = 0 ;k<row3.length;k++){
					var code1 = row1[i];
					var code2 = row2[j];
					var code3 = row3[k];
					if(code1 == code2 && code2 == code3 && code1 == code3){
					}else if(code1 == code2 || code2 == code3 || code1 == code3){
						bx3Count++;
					}else{
						bx6Count++;
					}
				}
			}
		}
	}
	if(playType == "bx3"){
		return bx3Count;
	}else{
		return bx6Count;
	}
	
}

function getDxJoCount(content){
	var count = 0;	
	if(content != ""){
		count = content.split(",").length;
	}
	return count;
}
/**
 * 得到投注的号码格式，不同玩法不同处理
 * @return
 */
function getContent(){
	map = trade.cbMap.get(trade.playType);
	if(trade.playType == "zx" || trade.playType == "tx"){
		return combinContent(map,",","|");
	}
	if(trade.playType == "zxHz"){
		return combinContent(map,"|","|");
	}
	if(trade.playType == "zhuxuan"){
		return combinContent(map,",","|");
	}
	if(trade.playType == "zs"){
		return combinContent(map,",","");
	}
	if(trade.playType == "zsHz"){
		return combinContent(map,"|","|");
	}
	if(trade.playType == "zl"){
		return combinContent(map,",","");
	}
	if(trade.playType == "zlHz"){
		return combinContent(map,"|","|");
	}
	if(trade.playType == "zlDt"){
		return combinContent(map,",","|");
	}
	if(trade.playType == "zxDt"){
		return combinContent(map,",","|");
	}
	if(trade.playType == "zxKd"){
		return combinContent(map,"|","|");
	}
	if(trade.playType == "zxBh" || trade.playType == "bx3" || trade.playType == "bx6" || trade.playType == "c2d"){
		return combinContent(map,",","|");
	}
	if(trade.playType == "dx" || trade.playType == "jiou" || trade.playType == "c3t"||trade.playType == "tlj"||trade.playType == "c1d"||trade.playType == "hs"){
		return combinContent(map,",","");
	}
	if(trade.playType == "1d" || trade.playType == "2d"){		
		return build1DContent(map);
	}
	if(trade.playType == "2d"){		
		return build2DContent(map);
	}
}

function build1DContent(map){
	var row1BetCount = map.get("1").size();
	var row2BetCount = map.get("2").size();
	var row3BetCount = map.get("3").size();
	var b = new Ball();
	b.code = "*";
	b.o = "li2";
	if(row1BetCount == 0){
		map.get(1).put("*",b)
	}
	if(row2BetCount == 0){
		map.get(2).put("*",b)
	}
	if(row3BetCount == 0){
		map.get(3).put("*",b) 
	}
	var buildContent = combinContent(map,",","|");
	if(row1BetCount == 0){
		map.get(1).remove("*")
	}
	if(row2BetCount == 0){
		map.get(2).remove("*")
	}
	if(row3BetCount == 0){
		map.get(3).remove("*")
	}
	return buildContent;
}

function glzhuxGetList()
{
	var content =  document.getElementById("glzhux_cText").value;
	if(content.length < 2) return null;
	var passCount = 0;
	var index = 0;
	var lines = $.trim(content).split(/\s*\n\s*/g);
	for(var i=0;i<lines.length;i++){
		index++;
		if(/^[0-9]{3}$/.test(lines[i])){
			passCount ++;
			var tmp  = lines[i];
			if(tmp.substring(0,1) == tmp.substring(1,2) && tmp.substring(0,1) == tmp.substring(2,3))
			{	cll_alert("组选方案不能包含豹子： " + tmp + " ！");
				return null;
				break;
			}
			lines[i] = tmp.substring(0,1) + "|" +tmp.substring(1,2) + "|"+ tmp.substring(2,3);
		}else{
			cll_alert("第"+(i+1)+"行号码格式不正确,请检查!");
			return null;
			break;
		}
	}
	return lines;
}

function glzxGetList(){
	var content =  document.getElementById("glzx_cText").value;
	if(content.length < 2) return null;
	var passCount = 0;
	var index = 0;
	var lines = $.trim(content).split(/\s*\n\s*/g);
	for(var i=0;i<lines.length;i++){
		index++;
		if(/^[0-9]{3}$/.test(lines[i])){
			passCount ++;
			var tmp  = lines[i];
			lines[i] = tmp.substring(0,1) + "|" +tmp.substring(1,2) + "|"+ tmp.substring(2,3);
		}else{
			cll_alert("第"+(i+1)+"行号码格式不正确,请检查!");
			return null;
			break;
		}
	}
	return lines;
}

function zsGetValue(values){
	v = values.split(",");
	return cll.C(v.length,2)*2;
}

function zlGetValue(values){
	v = values.split(",");
	return cll.C(v.length,3);
}

function zxHzGetValue(values){
	value = values.split("|");
	var ret = 0;
	for(var i=0;i<value.length;i++){
		ret += zxHzGetValueSingle(value[i]);
	}
	return ret;
}
function zsHzGetValue(values){
	value = values.split("|");
	var ret = 0;
	for(var i=0;i<value.length;i++){
		ret += zsHzGetValueSingle(value[i]);
	}
	return ret;
}
function zlHzGetValue(values){
	value = values.split("|");
	var ret = 0;
	for(var i=0;i<value.length;i++){
		ret += zlHzGetValueSingle(value[i]);
	}
	return ret;
}

function zxHzGetValueSingle(value){
	if(value == "0"){
		return 1;
	}
	if(value == "1"){
		return 3;
	}
	if(value == "2"){
		return 6;
	}
	if(value == "3"){
		return 10;
	}
	if(value == "4"){
		return 15;
	}
	if(value == "5"){
		return 21;
	}
	if(value == "6"){
		return 28;
	}
	if(value == "7"){
		return 36;
	}
	if(value == "8"){
		return 45;
	}
	if(value == "9"){
		return 55;
	}
	if(value == "10"){
		return 63;
	}
	if(value == "11"){
		return 69;
	}
	if(value == "12"){
		return 73;
	}
	if(value == "13"){
		return 75;
	}
	if(value == "14"){
		return 75;
	}
	if(value == "15"){
		return 73;
	}
	if(value == "16"){
		return 69;
	}
	if(value == "17"){
		return 63;
	}
	if(value == "18"){
		return 55;
	}
	if(value == "19"){
		return 45;
	}
	if(value == "20"){
		return 36;
	}
	if(value == "21"){
		return 28;
	}
	if(value == "22"){
		return 21;
	}
	if(value == "23"){
		return 15;
	}
	if(value == "24"){
		return 10;
	}
	if(value == "25"){
		return 6;
	}
	if(value == "26"){
		return 3;
	}
	if(value == "27"){
		return 1;
	}
	return 0;
}

function zsHzGetValueSingle(value){
	if(value == "1"){
		return 1;
	}
	if(value == "2"){
		return 2;
	}
	if(value == "3"){
		return 1;
	}
	if(value == "4"){
		return 3;
	}
	if(value == "5"){
		return 3;
	}
	if(value == "6"){
		return 3;
	}
	if(value == "7"){
		return 4;
	}
	if(value == "8"){
		return 5;
	}
	if(value == "9"){
		return 4;
	}
	if(value == "10"){
		return 5;
	}
	if(value == "11"){
		return 5;
	}
	if(value == "12"){
		return 4;
	}
	if(value == "13"){
		return 5;
	}
	if(value == "14"){
		return 5;
	}
	if(value == "15"){
		return 4;
	}
	if(value == "16"){
		return 5;
	}
	if(value == "17"){
		return 5;
	}
	if(value == "18"){
		return 4;
	}
	if(value == "19"){
		return 5;
	}
	if(value == "20"){
		return 4;
	}
	if(value == "21"){
		return 3;
	}
	if(value == "22"){
		return 3;
	}
	if(value == "23"){
		return 3;
	}
	if(value == "24"){
		return 1;
	}
	if(value == "25"){
		return 2;
	}
	if(value == "26"){
		return 1;
	}
	return 0;
}

function zlHzGetValueSingle(value){
	if(value == "3"){
		return 1;
	}
	if(value == "4"){
		return 1;
	}
	if(value == "5"){
		return 2;
	}
	if(value == "6"){
		return 3;
	}
	if(value == "7"){
		return 4;
	}
	if(value == "8"){
		return 5;
	}
	if(value == "9"){
		return 7;
	}
	if(value == "10"){
		return 8;
	}
	if(value == "11"){
		return 9;
	}
	if(value == "12"){
		return 10;
	}
	if(value == "13"){
		return 10;
	}
	if(value == "14"){
		return 10;
	}
	if(value == "15"){
		return 10;
	}
	if(value == "16"){
		return 9;
	}
	if(value == "17"){
		return 8;
	}
	if(value == "18"){
		return 7;
	}
	if(value == "19"){
		return 5;
	}
	if(value == "20"){
		return 4;
	}
	if(value == "21"){
		return 3;
	}
	if(value == "22"){
		return 2;
	}
	if(value == "23"){
		return 1;
	}
	if(value == "24"){
		return 1;
	}
	return 0;
}

function zlDtGetValue(values){
	value = values.split("|");
	if(!value[0] || value[0] == ""){
		return 0;
	}
	if(!value[1] || value[1] == ""){
		return 0;
	}
	var danCount = value[0].split(",").length;
	var tuoCount = value[1].split(",").length;
	return cll.C(tuoCount,3-danCount);
}

function zxDtGetValue(values){
	value = values.split("|");
	if(!value[0] || value[0] == ""){
		return 0;
	}
	if(!value[1] || value[1] == ""){
		return 0;
	}
	var danCount = value[0].split(",").length;
	var tuoCount = value[1].split(",").length;
	return cll.C(tuoCount,3-danCount)*6;
}

function zxKdGetValue(values){
	value = values.split("|");
	var ret = 0;
	for(var i=0;i<value.length;i++){
		ret += zxKdGetValueSingle(value[i]);
	}
	return ret;
}

function zxKdGetValueSingle(value){
	if(value == "0"){
		return 10;
	}
	if(value == "1"){
		return 54;
	}
	if(value == "2"){
		return 96;
	}
	if(value == "3"){
		return 126;
	}
	if(value == "4"){
		return 144;
	}
	if(value == "5"){
		return 150;
	}
	if(value == "6"){
		return 144;
	}
	if(value == "7"){
		return 126;
	}
	if(value == "8"){
		return 96;
	}
	if(value == "9"){
		return 54;
	}
	return 0;
}

function JSNEW(count){
	if(trade.playType == "zx" || trade.playType == "tx"){
		JS(trade.playType,3,0,9,count,3,true)
	}else if(trade.playType == "zhuxuan"){
		jsPlayType = trade.playType;
		for(var i=1;i<=count;i++){
			reds = new Array();
			for(var j=1;j<= 2 ;j++){
				codeInt = cll.random(0,9);
				code = codeInt+"";
				while(reds.toString().indexOf(code) != -1){
					codeInt = cll.random(0,9);
					code = codeInt+"";
				}
				reds.push(code);
			}
			cll.bubbleSort(reds);
			reds.push (reds[1]);
			reds[1] = reds[0];
			var line = reds.join("|");
			addOptionByJx(line,line);
		}
	}else{
		cll_alert("该玩法不支持机选功能!");
	}
}

//直选和值转变为直选单式
function zxHzConvertZx(contents) {
	var list = new Array();
	var content = contents.split("|");
	for(var s=0;s<content.length;s++){
		var m = 9;
		var n = parseInt(content[s],10);
		if (n < 9) {
			m = n;
		}
		for (var i = 0; i <= m; i++) {
			for (var j = 0; j <= m; j++) {
				for (var k = 0; k <= m; k++) {
					if (i + j + k == n) {
						list.push(i + "|" + j + "|" + k);
					}
				}
			}
		}
	}
	addConvertData(list,"zx");
}

//组3和值转变为组3单式
function zsHzConvertZs(contents) {
	var list = new Array();
	var content = contents.split("|");
	for(var s=0;s<content.length;s++){
		var m = 9;
		var n = parseInt(content[s],10);
		if (n < 9) {
			m = n;
		}
		for (var i = 0; i <= m; i++) {
			for (var j = 0; j <= m; j++) {
				if (2 * i + j == n && i != j) {
					list.push(i + "|" + i + "|" + j);
				}
			}
		}
	}
	addConvertData(list,"zhuxuan");
}

//组6和值转变为组6单式
function zlHzConvertZl(contents) {
	var list = new Array();
	var content = contents.split("|");
	for(var s=0;s<content.length;s++){
		var n = parseInt(content[s],10);
		for (var i = 0; i < 8; i++) {
			for (var j = i + 1; j < 9; j++) {
				for (var k = j + 1; k < 10; k++) {
					if (i + j + k == n) {
						list.push(i + "," + j + "," + k);
					}
				}
			}
		}
	}
	addConvertData(list,"zl");
}

//添加转换的数据
function addConvertData(list,playType) {
	for(var i=0;i<list.length;i++){
		var bean = new contentBean();
		bean.content = list[i];
		bean.baseCount = 1;
		bean.playType = playType;
		trade.contentList.push(bean);

		var option = document.createElement("OPTION");
		option.text = playTypeNameMap.get(bean.playType) + ": " + bean.content;
		option.value = option.text;
		option.title = option.text;
		fw.dom.get("tradeList").options.add(option);
	}
}

function getOverridePrize(bean){
	var content=bean.content.split(",");
 	var playType=bean.playType;
 	var minPrize = 0;
 	if(playType == "hs"){
 		minPrize = getHSMinPrize(content);
 	}else{
 		minPrize = playTypePrizeMap.get(playType);	
 	}
 	return minPrize;
}

//取和数的最小奖金
function getHSMinPrize(content_){
	var minPrize = 0
	for(var i = 0;i<content_.length;i++){
		var hs = content_[i];
		var hsPrize = getHSLevelPrize(hs);
		if(minPrize == 0){
			minPrize = getHSLevelPrize(hs);
		}else if(hsPrize < minPrize){
			minPrize = hsPrize;
		}
	}
	return minPrize
}

function getHSLevelPrize(hs){
	//hs = parseInt(hs);
	if(hs == 0 || hs == 27){
		return 1040;
	}else if(hs == 1 || hs == 26){
		return 345;
	}else if(hs == 2 || hs == 25){
		return 172;
	}else if(hs == 3 || hs == 24){
		return 104;
	}else if(hs == 4 || hs == 23){
		return 69;
	}else if(hs == 5 || hs == 22){
		return 49;
	}else if(hs == 6 || hs == 21){
		return 37;
	}else if(hs == 7 || hs == 20){
		return 29;
	}else if(hs == 8 || hs == 19){
		return 23;
	}else if(hs == 9 || hs == 18){
		return 19;
	}else if(hs == 10 || hs == 17){
		return 16;
	}else if(hs == 11 || hs == 16 || hs == 12 || hs == 15){
		return 15;
	}else if(hs == 13 || hs == 14){
		return 14;
	}
}
