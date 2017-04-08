function tradeInit(){
	//初始化投注列表
	tradeSelectInit("tradeList");

	trade.lotteryType = "162"; //彩种编号
	trade.lotteryTypeName = "山东群英会";	//彩种名称	
	trade.codeCount = 5;			//开奖号码个数

	//初始化每个选项的默认玩法
	tagDefaultPlayTypeMap.put("rx","rx1");
	tagDefaultPlayTypeMap.put("rxdt","rx2dt");
	tagDefaultPlayTypeMap.put("wei","wei2");
	tagDefaultPlayTypeMap.put("weidt","wei2dt");
	tagDefaultPlayTypeMap.put("shun","shun1");


	//initPlayType(pName,pVale,pLabel,pAreaCount,"",maxPrize)	
	initPlayType("rx1", 15401, "任选一", 1,"",4);
	initPlayType("rx2",	15402, "任选二", 1,"",22);
	initPlayType("rx3", 15403, "任选三", 1,"",57);
	initPlayType("rx4", 15404, "任选四", 1,"",820);
	initPlayType("rx5", 15405, "任选五", 1,"",10000);
	initPlayType("rx6", 15406, "任选六", 1,"",3000);
	initPlayType("rx7", 15407, "任选七", 1,"",855);
	initPlayType("rx8", 15408, "任选八", 1,"",320);
	initPlayType("rx9", 15409, "任选九", 1,"",142);
	initPlayType("rx10", 15410, "任选十", 1,"",71);
	
	initPlayType("rx2dt", 15482, "任二胆拖", 2,"2:1-1#1:1-*",22);
	initPlayType("rx3dt", 15483, "任三胆拖", 2,"2:1-2#1:1-*",57);
	initPlayType("rx4dt", 15484, "任四胆拖", 2,"2:1-3#1:1-*",820);
	initPlayType("rx5dt", 15485, "任五胆拖", 2,"2:1-4#1:1-*",10000);
	initPlayType("rx6dt", 15486, "任六胆拖", 2,"2:1-5#1:1-*",3000);
	initPlayType("rx7dt", 15487, "任七胆拖", 2,"2:1-6#1:1-*",855);
	initPlayType("rx8dt", 15488, "任八胆拖", 2,"2:1-7#1:1-*",320);

	
	//initPlayType("wei1", 15411, "围1", 1,"",25);
	initPlayType("wei2", 15412, "围2", 1,"",130);
	initPlayType("wei3", 15413, "围3", 1,"",1000);
	initPlayType("wei4", 15414, "围4", 1,"",5000);
	initPlayType("wei5", 15419, "围5", 1,"",10000);
	
	initPlayType("wei2dt", 15415, "围2胆拖", 2,"2:1-1#1:1-*",130);
	initPlayType("wei3dt", 15416, "围3胆拖", 2,"2:1-2#1:1-*",1000);
	initPlayType("wei4dt", 15417, "围4胆拖", 2,"2:1-3#1:1-*",5000);
	initPlayType("wei5dt", 15418, "围5胆拖", 2,"2:1-4#1:1-*",10000);

	initPlayType("shun1", 15421, "顺1", 1,"",23);
	initPlayType("shun2", 15422, "顺2", 2, "2:1-*#1:1-*",350);
	initPlayType("shun3", 15423, "顺3", 3,"2-3:1-*#1-3:1-*#1-2:1-*",7700);
	
	//如果页面地址有planNo，加入到列表框
	analyURL();

	trade.selectedTab = "rx";     	//默认选项
	trade.playType = "rx1";    		//默认进入的玩法

	//初始化彩期信息
	initTermInfo(trade.lotteryType);
	
	//关闭遮盖层 
	hideBackground();
	
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
		
	}else{
	
		//任选 围选 顺选1 不能超过13注码
		if(trade.selectedTab == "rx" || trade.selectedTab =="wei" || trade.playType =="shun1") {
			if(trade.cbMap.get(trade.playType).get(1).size() > 12){
				cll_alert("该玩法选择号码不能大于13个注码！");
				return false;
			}
		}
		
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
		
	}
	showSelectInfo();
}

/**
 * 得到投注的号码格式，不同玩法不同处理
 * @return
 */
function getContent(){
	var content ="";
	map = trade.cbMap.get(trade.playType);
	if(trade.playType == "rx2dt"||trade.playType == "rx3dt"||trade.playType == "rx4dt"||trade.playType == "rx5dt"||trade.playType == "rx6dt"||trade.playType == "rx7dt"||trade.playType == "rx8dt"){
		return combinContent(map,",","#");
	}else if(trade.playType == "shun2"||trade.playType == "shun3"){
		return combinContent(map,",","|");
	}else if(trade.playType == "wei2dt"||trade.playType == "wei3dt"||trade.playType == "wei4dt"||trade.playType == "wei5dt"){
		return combinContent(map,",","#");
	}else{//任选标准，围选，顺1
		return combinContent(map,",","");
	}
}

//得到URL地址里面的注数
function getUrlCount(){
	var zhushu = 0;
	var ballCount = 0 ;
	//处理目标个数
	var targetCount = getTargetCount();
	
	if(							 trade.playType == "rx2dt"
	||trade.playType == "rx3dt"||trade.playType == "rx4dt"
	||trade.playType == "rx5dt"||trade.playType == "rx6dt"
	||trade.playType == "rx7dt"||trade.playType == "rx8dt" ){
		zhushu = dtGetValue(content,targetCount);
	}
	if(trade.playType == "rx1"||trade.playType == "rx2"
	||trade.playType == "rx3"||trade.playType == "rx4"
	||trade.playType == "rx5"||trade.playType == "rx6"
	||trade.playType == "rx7"||trade.playType == "rx8"
	||trade.playType == "rx9"||trade.playType == "rx10" 
	||trade.playType == "wei1"||trade.playType == "wei2" 
	||trade.playType == "wei3"||trade.playType == "wei4" ||trade.playType == "wei5"){
		zhushu = rxGetValue(content,targetCount);
	}

	if(trade.playType == "shun1"){
		zhushu = qxGetValue(content,1);
	}
	if(trade.playType == "shun2"){
		zhushu = qxGetValue(content,2);
	}
	if(trade.playType == "shun3"){
		zhushu = qxGetValue(content,3);
	}
	
	if(	trade.playType == "wei2dt"||trade.playType == "wei3dt"||trade.playType == "wei4dt"||trade.playType == "wei5dt"){
		zhushu = dtGetValue(content,targetCount);
	}

	return zhushu;
}

//得到选号区里面的注数，不同玩法不同算法
function getCount(){
	var zhushu = 0;
	var ballCount = 0 ;
	//处理目标个数
	var targetCount = getTargetCount() ;
	
	if(							 trade.playType == "rx2dt"
	||trade.playType == "rx3dt"||trade.playType == "rx4dt"
	||trade.playType == "rx5dt"||trade.playType == "rx6dt"
	||trade.playType == "rx7dt"||trade.playType == "rx8dt" ){
		zhushu = dtGetValue(getContent(),targetCount);
	}
	if(trade.playType == "rx1"||trade.playType == "rx2"
	||trade.playType == "rx3"||trade.playType == "rx4"
	||trade.playType == "rx5"||trade.playType == "rx6"
	||trade.playType == "rx7"||trade.playType == "rx8"
	||trade.playType == "rx9"||trade.playType == "rx10" 
	||trade.playType == "wei1"||trade.playType == "wei2" 
	||trade.playType == "wei3"||trade.playType == "wei4" || trade.playType == "wei5"){
		zhushu = rxGetValue(getContent(),targetCount);
	}

	if(trade.playType == "shun1"){
		zhushu = qxGetValue(getContent(),1);
	}
	if(trade.playType == "shun2"){
		zhushu = qxGetValue(getContent(),2);
	}
	if(trade.playType == "shun3"){
		zhushu = qxGetValue(getContent(),3);
	}
	
	if(	trade.playType == "wei2dt"||trade.playType == "wei3dt"||trade.playType == "wei4dt"||trade.playType == "wei5dt"){
		zhushu = dtGetValue(getContent(),targetCount);
	}

	return zhushu;
}

function getTargetCount() {
	var targetCount = 0 ;
	if(trade.playType == "rx1" 							 ) targetCount = 1 ;
	if(trade.playType == "rx2"||trade.playType == "rx2dt") targetCount = 2 ;
	if(trade.playType == "rx3"||trade.playType == "rx3dt") targetCount = 3 ;
	if(trade.playType == "rx4"||trade.playType == "rx4dt") targetCount = 4 ;
	if(trade.playType == "rx5"||trade.playType == "rx5dt") targetCount = 5 ;
	if(trade.playType == "rx6"||trade.playType == "rx6dt") targetCount = 6 ;
	if(trade.playType == "rx7"||trade.playType == "rx7dt") targetCount = 7 ;
	if(trade.playType == "rx8"||trade.playType == "rx8dt") targetCount = 8 ;
	if(trade.playType == "rx9"||trade.playType == "rx9dt") targetCount = 9 ;
	if(trade.playType == "rx10"||trade.playType == "rx10dt") targetCount = 10 ;
	
	if(trade.playType == "wei1") targetCount = 1 ;
	if(trade.playType == "wei2"||trade.playType == "wei2dt") targetCount = 2 ;
	if(trade.playType == "wei3"||trade.playType == "wei3dt") targetCount = 3 ;
	if(trade.playType == "wei4"||trade.playType == "wei4dt") targetCount = 4 ;
	if(trade.playType == "wei5"||trade.playType == "wei5dt") targetCount = 5 ;
	return targetCount;
}

function dtGetValue(values , num){
	//num = 2;
	v = values.split("#");
	if(v.length < 2){
		return 0;
	}
	d1 = v[0].split(",");
	d2 = v[1].split(",");
	if(d1.length == 0){
		return 0;
	}
	if(d2.length == 0){
		return 0;
	}
	if(d1.length + d2.length <= num){//胆拖只有一注，不算胆拖
		return 0;
	}
	return fw.math.C(d2.length,num-d1.length);
}

function rxGetValue(values , num){
	//num = 2;
	if(values.length == 0) return 0;
	v = values.split(",");
	if(v.length < 1){
		return 0;
	}
	return fw.math.C(v.length,num);
}

function qxGetValue(values,count){
	value = values.split("|");
	if(value.length < count)
		return 0;
		
	var ret = 1;
	for(var i=0;i<count;i++){
		if(value[i] == ""){
			return 0;
		}else{
			ret *=  value[i].split(",").length;
		}
	}
	return ret;
}

function JSNEW(count){
	var codeCount = 0;
	if(trade.playType == 'rx1'||trade.playType == 'wei1'||trade.playType == 'shun1'){
		codeCount = 1;
	}else if(trade.playType == 'rx2'||trade.playType == 'wei2'){
		codeCount = 2;
	}else if(trade.playType == 'rx3'||trade.playType == 'wei3'){
		codeCount = 3;
	}else if(trade.playType == 'rx4'||trade.playType == 'wei4'){
		codeCount = 4;
	}else if(trade.playType == 'rx5'||trade.playType == 'wei5'){
		codeCount = 5;
	}else if(trade.playType == 'rx6'){
		codeCount = 6;
	}else if(trade.playType == 'rx7'){
		codeCount = 7;
	}else if(trade.playType == 'rx8'){
		codeCount = 8;
	}else if(trade.playType == 'rx9'){
		codeCount = 9;
	}else if(trade.playType == 'rx10'){
		codeCount = 10;
	}else{
		cll_alert("该玩法不支持机选功能!");
		return;
	}
	jsPlayType = trade.playType;
	for(var i=1;i<=count;i++){
		reds = new Array();
		for(var j=1;j<=codeCount;j++){
			codeInt = fw.math.random(1,20);
			code = codeInt+"";
			if(codeInt<=9){
				code = "0"+codeInt;
			}
			while(reds.toString().indexOf(code) != -1){
				codeInt = fw.math.random(1,20);
				code = codeInt+"";
				if(codeInt<=9){
					code = "0"+codeInt;
				}
			}
			reds.push(code);
		}
		fw.math.bubbleSort(reds);
		var line = reds.join(",");
		
		addOptionByJx(line,line);
	}
}

//任选胆拖最低中奖注数计算
function prizeCountDt_low(targetCount){
	var map = trade.cbMap.get(trade.playType);
	var os_dan = map.get(1+"").values();
	var os_tuo = map.get(2+"").values();
	var dan=os_dan.length;
	var tuo=os_tuo.length;
	if(trade.playType=="rx2dt"||trade.playType=="rx3dt"||trade.playType=="rx4dt"){
		var unselect=20-dan-tuo;//未选中的拖码个数
		var select=5-unselect-dan;//一定会中奖的拖码个数
		if(select>1){
			return cll.C(select,targetCount-dan);
		}else{
			return 1;
		}
	}else{
			return 1;					
	}
}

function getOverridePrize(bean){
//循环bean中的内容统计出每个玩法的最小值
	if(bean==null){
		return 0;
	}
 var minPrize=0;
 var playType=bean.playType;
 var targetCount=getTargetCount();  //处理目标个数
 var prize = playTypePrizeMap.get(playType); //奖金
 if(playType=="rx6"||playType=="rx7"||playType=="rx8"||playType=="rx9"||playType=="rx10" || playType.indexOf("dt")!=-1){
 	if(playType=="rx6"||playType=="rx7"||playType=="rx8"||playType=="rx9"||playType=="rx10"){
		//计算注数
		var targetCount=playType.substring(2)*1;
		var selectnum=bean.content.split(",").length;//选中号码的个数
		var zs=cll.C(selectnum-5,targetCount-5);
		prize=prize*zs;
	}else{
		prize=prize*prizeCountDt_low(targetCount);
	}
	//计算最小prize
	if(minPrize==0){
		minPrize=prize;
	}else{
		minPrize=prize>minPrize?minPrize:prize
	}
 }else{
	minPrize=playTypePrizeMap.get(playType);
}
 return minPrize;
}

