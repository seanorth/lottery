 //定义每一个球的信息
function Ball(){
	this.code;//号码
	this.o;//对象
}
//选单区bean定义
function contentBean(){
	this.content = "";
	this.playType = 0;
	this.baseCount = 0;
	this.name = "";
	this.add = 0;
}
//rowInfoBean定义
function RowInfoBean(){
	this.relation = new Array(); //关联行号 (row)
	this.max = 0;
	this.min = 0;
}

var trade = {};
trade.cbMap = new Map();
playTypeValueMap = new Map();
playTypeNameMap = new Map();
playTypeLabelMap = new Map();
playTypeInfoMap = new Map();
playTypePrizeMap = new Map();
tagDefaultPlayTypeMap = new Map(); //每个选项的默认玩法
trade.contentList = new Array();//选单区列表
trade.contentListFast=new Array();  //幸运选号之随缘号码
trade.contentListPerson=new Array();//幸运选号之个性选号

//----------------------------------------------------追号-----------------------------------------------------------
tradeChase = {};
//定义追号的BEAN
function chaseBean(){
	this.term;
	this.mutiple;
	this.indexs;
	this.checked;
	this.amount;
}

tradeChase.xml = ctx_jsonp+"/static/chase/";
//存储追号的BEAN
tradeChase.chaseBeanList = new Array();
//彩期结束时重生成列表
tradeChase.onTermEnd = function(term){
	changeChaseCount();
}
//存储追号的XML数据
tradeChase.chaseXmlDoc;

/**
 * 被调用，用于显示追号的金额和总的追号金额
 */
function showChaseInfo(){
	//检查是否幸运选号并转化投注列表
	checkLuckyToConver();

	//获得注数
	var count = fw.dom.get("inLineCount").innerHTML;
	baseCount = parseInt(count,10);
	//计算单倍金额
	var amount = 0 ;
	if( fw.dom.get("multipleDG") != 0)
	{
		amount = parseInt(fw.dom.get("inLineAmount").innerHTML,10) / parseInt(fw.dom.get("multipleDG").value,10);
	}
	var totalAmount = 0;
	var chaseCount = 0;
	
	if(fw.get("chaseSumAmount")) {
		fw.get("chaseSumAmount").innerHTML = totalAmount;
	}
	if(fw.get("chaseSumCheapAmount")) {
		fw.get("chaseSumCheapAmount").innerHTML = parseFloat(totalAmount * 0.92).toFixed(2);;
	}
}

//设置追号的html--优化
function setChaseHTML(xmlDoc){
	var html = new Array();
	tradeChase.chaseBeanList = new Array();
	$(xmlDoc).find("row").each(function(r){
		if(r == pzChaseCount){
			return false;
		}
		var o = {};
		o.expect = $(this).attr("expect");
		o.endtime = $(this).attr("endtime");
		o.able = $(this).attr("able");

		//获取初始化倍数
		var initMutiple = 1;
		if($("#chaseMultiple")) {
			initMutiple = $("#chaseMultiple").val();
		}

		var index = r+1;
		
		html.push('<tr id="tr'+ r +'" style="background:#fff;" class="highlight">');
		
        html.push("<th id='"+o.expect+"_th'>"+index+"</th>");
        html.push("<td id='"+o.expect+"_td'>");
        if(o.able == 1) {//停售
			html.push("(停售)<span class='cllcheckbox' style='display:none;'><a href='javascript:cancelChecked("+r+");' class='select' id='pselect"+r+"' name='pselect"+o.expect+"'><i></i><em></em></a></span>");
		} else {
			html.push("<span class='cllcheckbox'><a href='javascript:cancelChecked("+r+");' class='select' id='pselect"+r+"' name='pselect"+o.expect+"'><i></i><em></em></a></span>");
		}
		html.push("<span>"+o.expect+"</span>");
		if(r == 0){
        	html.push("<span id='term_"+o.expect+"'>当前期</span>");
        }else{
        	html.push("<span id='term_"+o.expect+"'></span>");
        }
        html.push("</td>");
        html.push("<td><span class='cllinput'><input type='text' class='default' id='pfee"+r+"' name='pfee"+o.expect+"' onkeyup='gainfun()' onblur='gainfun()' value='"+initMutiple+"'></span>&nbsp;倍</td>");
        html.push("<td><span id='chaseAmount"+r+"' name='chaseAmount"+o.expect+"' class='this'>0</span>&nbsp;元</td>");
        html.push("<td id='accumulateAmount"+o.expect+"'>0元</td>");
        html.push("<td id='currentAmount"+o.expect+"'>0元</td>");
        html.push("<td id='accumulateProfit"+o.expect+"'>0元</td>");
        html.push("<td id='accumulateRate"+o.expect+"'>--</td>");
        html.push("</tr>");
		var bean = new chaseBean();
		bean.term = o.expect;
		bean.mutiple = initMutiple;
		bean.amount = 0;
		bean.indexs = r;
		bean.checked = true;
		tradeChase.chaseBeanList.push(bean);
	});
	$("#chaseTermSubShow").html(html.join(""));
	showChaseInfo();
	gainfun();
}

//用户切换不同的追号期数，重新显示--优化
function changeChaseCount(count){
	$("#5_radio").attr("class","default");
	$("#10_radio").attr("class","default");
	$("#20_radio").attr("class","default");
	count = count.replace(/\D/g,"");
	if (count == "" || count <= 0) count = 1;
	if (count > 100) count = 100;
	pzChaseCount = count;
	//同步三个位置的期次信息
	$("#chaseCount").val(count);
	$("#chaseTermCountByList").val(count);
	
	$("#"+count+"_radio").attr("class","select");
	
	//更新追号列表
	setChaseHTML(tradeChase.chaseXmlDoc);
}

//用户输入追号倍数,重新显示--优化
function changeChaseMultiple(multiple){
	multiple = multiple.replace(/\D/g,"");
	if (multiple == "" || multiple <= 0) multiple = 1;
	if (multiple > 100) multiple = 100;
	$("#chaseMultiple").val(multiple);
	for(var i=0;i<pzChaseCount;i++){
		if($("#pselect"+(i)).attr("class") != "disable") {
			$("#pfee"+(i)).val(multiple);
		}
	}
	gainfun();
}

//用户选了哪一期的追号，需要把checkbox打开，并重新计算追号金额
function onChaseSelect(indexs){
	if(fw.get("chaseCheck"+indexs).checked){
		tradeChase.chaseBeanList[indexs].checked = true;
		tradeChase.chaseBeanList[indexs].mutiple = parseInt(fw.get("chaseMutiple"+indexs).value , 10);
		fw.get("chaseMutiple"+indexs).disabled = false;
	}else{
		tradeChase.chaseBeanList[indexs].checked = false;
		fw.get("chaseMutiple"+indexs).disabled = true;
	}
	showChaseInfo();
}
//追号的全选功能
function onChaseTFSelectAll(){
	var tf = document.getElementById("allSelect").checked;
	for(var i=1;i<tradeChase.chaseBeanList.length;i++){
		if(fw.get("chaseCheck"+i)) {
			if(tf == true){
				tradeChase.chaseBeanList[i].checked = true;
				tradeChase.chaseBeanList[i].mutiple = Number(fw.get("chaseMutiple"+i).value);
				fw.get("chaseMutiple"+i).disabled = false;
				fw.get("chaseCheck"+i).checked = true;
			}else{
				tradeChase.chaseBeanList[i].checked = false;
				fw.get("chaseMutiple"+i).disabled = true;
				fw.get("chaseCheck"+i).checked = false;
			}
		}
	}
	
	showChaseInfo();
	
}

//累计中奖金额的输入验证
function totalPrizeChange(value){
	var totalPrize = calculateTotalPrize();
	value = value.replace(/\D/g,"");
	if (value =="") $("#totalPrize").val(1);
	if (value >"0") $("#totalPrize").val(value);
}

//追号倍数改变，并重新追号金额
function onMutipleChange(indexs,obj, isblur){
	obj.value = obj.value.replace(/\D/g,"");
	if (isblur&&obj.value=="") obj.value=1;
	if (obj.value=="0") obj.value=1;
	if(indexs == 9999){
		for(var i=0;i<tradeChase.chaseBeanList.length;i++){
			if(tradeChase.chaseBeanList[i].checked){
				tradeChase.chaseBeanList[i].mutiple = Number(obj.value);
				fw.get("chaseMutiple"+i).value = obj.value;
			}
		}
	}else{
		tradeChase.chaseBeanList[indexs].mutiple = obj.value;
	}
	showChaseInfo();
}

//累计奖金输入
function onTotalPrizeChange(obj, isblur){
	obj.value = obj.value.replace(/\D/g,"");
	if (isblur&&obj.value=="") obj.value=1;
	if (obj.value=="0") obj.value=1;
}

//根据选择显示累计奖金输入区域
function showTotalPrize(obj) {
	if(obj.checked){
		$("#totalPrizeSpan").show();
		$("#continueChaseSpan").hide();
	}else{
		$("#totalPrizeSpan").hide();
		$("#continueChaseSpan").show();
	}
}

function onlyChoose(ch) {
    var obj1 = document.getElementById("chaseStopCondition");
    var obj2 = document.getElementById("bingoStopCondition");
    
    if (obj1 != ch && obj2.checked) {
        obj1.checked = false;
        obj2.checked = true;
    }
    if (obj2 != ch && obj1.checked) {
        obj1.checked = true;
        obj2.checked = false;
    }
}

//每期截止后调用此方法:更新页面数据
function updateChaseList(oldTerm,currentTerm){
	if(oldTerm == "" || currentTerm == ""){
		return;
	}
	if(oldTerm == currentTerm){
		return;
	}
	
	//普通追号
	if($("#pzCurrentTerm")) {
		//更新页面的当前彩期信息
		$("#pzCurrentTerm").html(currentTerm);

		if(fw.get("buyTypeZh").checked){
			if(tradeChase.chaseBeanList.length > 0 ){
				var index = Number($("#"+oldTerm+"_th").html()) - 1;
				//取消选中
				cancelChecked(index);
				//将过期的期数设置不可点击
				$("#pselect"+index).attr("class","disable");
				$("#term_"+oldTerm).remove();
				$("#pfee"+index).attr("disabled","true");
				$("#term_"+currentTerm).html("当前期");
			}
		}
	}
	
	//智能追号
	if($("#zzCurrentTerm")){
		//更新页面的当前彩期信息
		$("#zzCurrentTerm").html(currentTerm);
		
		if(fw.get("buyTypeZz").checked){
			if(tradeInteChase.iChaseBeanList.length > 0 ){
				var index = Number($("#"+oldTerm+"_thzz").html()) - 1;
				//取消选中
				zzcancelChecked(index);
				//将过期的期数设置不可点击
				$("#zzpselect"+index).attr("class","disable");
				$("#zzterm_"+oldTerm).remove();
				$("#zzpfee"+index).attr("disabled","true");
				$("#zzterm_"+currentTerm).html("当前期");
			}
		}

		//更新彩期下拉选择框
		if($("#zzbingoPrize")){
			//获取当前选中值
			var zzbingoPrize = $("#zzbingoPrize").val();
			//如果起追号过期还要清空智能追号的设置和追号列表
			if(oldTerm == zzbingoPrize){
				//clearSelect();
			}
			$("#zzbingoPrize option[value='"+oldTerm+"']").remove();  //删除过期的期次Option
			$("#zzbingoPrize option[value='"+currentTerm+"']").attr("select",true);
			$("#zzbingoPrize option[value='"+currentTerm+"']").text(currentTerm+"当前期");
		}
	}
	//更新追号的XML数据
	updateChaseXML();
}

//更新追号的XML数据
function updateChaseXML(){
	//防止浏览器刷新不清空选中状态
	$("#buyTypeDg").attr("checked",true);
	$("#buyTypeHm").attr("checked",false);
	$("#buyTypeZh").attr("checked",false);

	$.get(ctx_jsonp+"/static/chase/"+trade.lotteryType+".xml?v="+new Date().getTime(),function (xmlDoc){
		tradeChase.chaseXmlDoc = xmlDoc;
	});
}
//----------------------------------------------------追号结束-----------------------------------------------------------

//----------------------------------------------------智能追号开始-----------------------------------------------------------

tradeInteChase = {};
//定义智能追号的BEAN
function iChaseBean(){
	this.term;
	this.mutiple;
	this.indexs;
	this.checked;
	this.amount;
}

//存储智能追号的BEAN
tradeInteChase.iChaseBeanList = new Array();
tradeInteChase.iMaxChaseTerm = 100;

//初始化显示智能追号的彩期--优化
function initZzTerm(){
	setZzChaseHTML(tradeChase.chaseXmlDoc,true);
	gainfun_zz();
}

//设置智能追号彩期的html--优化
function setZzChaseHTML(xmlDoc,tag){
	var html = new Array();
	tradeInteChase.iChaseBeanList = new Array();
	var selectHtml = new Array();
	$(xmlDoc).find("row").each(function(r){
		if(r == zzChaseCount){
			return false;
		}
		
		var o = {};
		o.expect = $(this).attr("expect");
		o.endtime = $(this).attr("endtime");
		o.able = $(this).attr("able");

		var index = r+1;
		
		html.push('<tr id="tr'+ r +'" style="background:#fff;">');
		
        html.push("<th id='"+o.expect+"_thzz'>"+index+"</th>");
        html.push("<td id='o.expect_td'>");
       	
        if(r == 0){
        	if(o.able == 1) {//停售
				html.push("(停售)<span class='cllcheckbox' style='display:none;'><a href='javascript:zzcancelChecked("+r+");' class='select' id='zzpselect"+r+"' name='pselect'><i></i><em></em></a></span>");
			} else {
				html.push("<span class='cllcheckbox'><a href='javascript:zzcancelChecked("+r+");' class='select' id='zzpselect"+r+"' name='pselect'><i></i><em></em></a></span>");
			}
        }else{
        	if(o.able == 1) {//停售
				html.push("(停售)<span class='cllcheckbox' style='display:none;'><a href='javascript:zzcancelChecked("+r+");' class='default' id='zzpselect"+r+"' name='pselect'><i></i><em></em></a></span>");
			} else {
				html.push("<span class='cllcheckbox'><a href='javascript:zzcancelChecked("+r+");' class='default' id='zzpselect"+r+"' name='pselect'><i></i><em></em></a></span>");
			}
        }
        html.push("<span>"+o.expect+"</span>");
        if(r == 0){
        	html.push("<span id='zzterm_"+o.expect+"'>当前期</span>");
        } else {
        	html.push("<span id='zzterm_"+o.expect+"'></span>");
        }
        html.push("</td>");
        html.push("<td><span class='cllinput'><input type='text' class='default' id='zzpfee"+r+"' name='pfee' onkeyup='gainfun_zz()' onblur='gainfun_zz()'></span>&nbsp;倍</td>");
        html.push("<td><span id='chaseAmount"+r+"' class='this'>0</span>&nbsp;元</td>");
        html.push("<td id='zzaccumulateAmount"+o.expect+"'>0元</td>");
        html.push("<td id='zzcurrentAmount"+o.expect+"'>0元</td>");
        html.push("<td id='zzaccumulateProfit"+o.expect+"'>0元</td>");
        html.push("<td id='zzaccumulateRate"+o.expect+"'>--</td>");
        html.push("</tr>");
        
		var bean = new chaseBean();
		bean.term = o.expect;
		bean.mutiple = 1;
		bean.amount = 0;
		bean.indexs = r;
		bean.checked = true;
		if(r == 0){
			bean.checked = true;
		}else{
			bean.checked = false;
		}
		tradeInteChase.iChaseBeanList.push(bean);
		
		//给彩期下拉框添加选项--生成追号方案时不需要重置彩期下拉框
		if(tag){
			if(r == 0){
				selectHtml.push("<option value="+o.expect+" selected>"+o.expect+"当前期</option>");
			}else{
				selectHtml.push("<option value="+o.expect+">"+o.expect+"</option>");
			}
		}
	});
	if(tag){
		$("#zzbingoPrize").html(selectHtml.join(""));
	}
	$("#zzchaseTermSubShow").html(html.join(""));
	showChaseInfo();
}

//智能追号倍数输入
function oniMutipleChange(obj, isblur){
	obj.value = obj.value.replace(/\D/g,"");
	if (isblur&&obj.value=="") obj.value=1;
	if (obj.value=="0") obj.value=1;
}

//显示计算按钮
function showZzingButton() {
	$("#zzButon").html("计算中");
	$("#period_table").hide();
}

//显示计算中按钮
function showZzButton() {
	$("#zzButon").html("生成追号方案");
	$("#period_table").show();
}

function zzPlan() {
	showZzingButton();
	setTimeout("innerZzPlan()",0);
}


function innerZzPlan(){	

	var chaseSelect = parseInt(fw.get("zzCountSelect").value,10); //追号期数
	var ptab=fw.get("period_table");
	var totalCount = fw.get("inLineCount").innerHTML;//总注数
	var maxValue = getMaxValue();//收益奖金基数
	//var maxFund = fw.get("maxFund").value; //最多投入资金
	var minWinFund = fw.get("minWinFund").value;//最低盈利金额
	var minRate = fw.get("minRate").value;//最低回报率
	var initBet = fw.get("zzInitBet").value;//初始倍数
	var maxBet = 999;//最大倍投
	var firstP=0;
	var firstF= parseInt(initBet,10);//初始期数的倍数
	var totalsum=0;
	//新增数据
	var qi=fw.get("qi").value;//前多少期
	var qgain=fw.get("qgain").value;//之前收益率 %
	var hgain=	fw.get("hgain").value;//之后收益率 %
	qgain = qgain*0.01;
	hgain = hgain*0.01;
	var startChaseTerm = Number($("#zzbingoPrize").val());//开始期数

	//清除没有选中的数据
	var syType1 = fw.get("syType1");
	var syType3 = fw.get("syType3");
	if(syType1.checked){	 	 	
		qgain=0
		hgain=0
		qi=0;	 	 	
	}
	if(syType3.checked){
		minWinFund=0;
		minRate=0;
	}
	
	/*
	必要的判断：初始期数
	*/
	for(var i = 0;i < zzChaseCount;i++){
		if(fw.get("zzpselect"+i)){
			if(tradeInteChase.iChaseBeanList[i].term == startChaseTerm){
				firstP = i;
				$("#zzpfee"+i).val(firstF);
				tradeInteChase.iChaseBeanList[i].checked = true;
				tradeInteChase.iChaseBeanList[i].mutiple = firstF;
				break;
			}	
		}
	}
	
	zzChaseCount = chaseSelect + firstP;
	if(zzChaseCount > 1000) zzChaseCount = 1000;
	//重新对追号列表绘画
	setZzChaseHTML(tradeChase.chaseXmlDoc,false);
	
	if(firstP===""){
		cll_alert("必须要选择一期作为追号的首期！");
		showZzButton();
		return false;
	}
	if(isNaN(firstF) || firstF<=0 || firstF.toString().indexOf(".")!=-1 || firstF==""){
		cll_alert("首期倍数必须为大于0的整数！");
		showZzButton();
		return false;
	}
	//条件判断
	if((isNaN(minWinFund) || minWinFund=="") && (isNaN(minRate) || minRate=="")&&(isNaN(qi) || qi=="")){
		cll_alert("回报设置至少必须填写一项！");
		showZzButton();
		return false;
	}
	//新增数据条件判断
	if((!isNaN(qi) && qi!="") && qgain<=0){
		cll_alert("回报设置至少必须填写一项！");
		showZzButton();
		return false;
	}
	
	// 按百分比计算收益
	if((!isNaN(minRate) && minRate!="") && minRate<=0){
	}else if((!isNaN(minRate) && minRate!="") && minRate>0){
		minRate=parseFloat(minRate)/100;
	}
	if(document.getElementById("tradeList").options.length==0){
		cll_alert("请先选号再做计划！");
		showZzButton();
		return false;
	}
	for(var v = firstP; v < zzChaseCount;v++){
		tradeInteChase.iChaseBeanList[v].checked = false;
	}
	//totalsum = totalCount*firstF*2;
	var chaseSelectCount = firstP+chaseSelect;
	for(var j = firstP;j < chaseSelectCount;j++){
		if(fw.get("zzpselect"+j)==null){
			cll_alert("计划期数超出当前可选期数！");
			showZzButton();
			return false;
		}
		
		var qicount = j-firstP;
		var count=firstF;
		for(count = firstF;count<maxBet;count++ ){
			if( minWinFundC(minWinFund,totalsum,totalCount,maxValue,count)
			 && minRateC(minRate,totalsum,totalCount,maxValue,count)
			 &&qiRate(totalsum,totalCount,maxValue,count,qi,qgain,hgain,qicount)){
				break;
			 }
		}
		var flag1 = false,flag2 = false,flag3 = false;
					
		if(qicount<qi){
			if(!isNaN(qgain) && qgain!=""){
				flag1 = (maxValue*count-(totalsum+totalCount*count*2))/(totalsum+totalCount*count*2)<qgain;
			}
		}else{
			if(!isNaN(hgain) && hgain!=""){
				flag1 = (maxValue*count-(totalsum+totalCount*count*2))/(totalsum+totalCount*count*2)<hgain;
			}else{
				flag1 = (maxValue*count-(totalsum+totalCount*count*2))/(totalsum+totalCount*count*2)>=Number.POSITIVE_INFINITY;
			}
		}
		
		if(!isNaN(minWinFund) && minWinFund!=""){
			flag2 = maxValue*count-(totalsum+totalCount*count*2)<minWinFund;
		}
		if(!isNaN(minRate) && minRate!=""){
			flag3 = (maxValue*count-(totalsum+totalCount*count*2))/(totalsum+totalCount*count*2)<minRate;
		}
		if(flag1 || flag2 || flag3){
			gainfun_zz();
			if(j == 1){
				$("#zzCountSelect").val(2);
			}else{
				$("#zzCountSelect").val(j);
			}
			cll_alert("该计划只能计算到第"+j+"期！");
			showZzButton();
			return;
		}

		totalsum+=totalCount*count*2;
		tradeInteChase.iChaseBeanList[j].checked = true;
		tradeInteChase.iChaseBeanList[j].mutiple = count;
		$("#zzpselect"+j).attr("checked",true);
		$("#zzpfee"+j).val(count);
	}
	
	gainfun_zz();
}
//最大资金投入
/*
function maxFundInputC(maxFund,totalsum,totalCount,count){
	if(!isNaN(maxFund) && maxFund!=""){
		return (totalsum+totalCount*count*2)<=maxFund;
	}else{
		return true;
	}
}
*/
//最低盈利金额
function minWinFundC(minWinFund,totalsum,totalCount,maxValue,count){
	if(!isNaN(minWinFund) && minWinFund!=""){
		return maxValue*count-(totalsum+totalCount*count*2)>=minWinFund;
	}else{
		return true;
	}
}

//前期盈利与后期盈利
function qiRate(totalsum,totalCount,maxValue,count,qi,qgain,hgain,qicount){

	if(qicount<qi){
		if(!isNaN(qgain) && qgain!=""){
			return (maxValue*count-(totalsum+totalCount*count*2))/(totalsum+totalCount*count*2)>=qgain;
		}else{
			return true;
		}
	}else{
		if(!isNaN(hgain) && hgain!=""){
			return (maxValue*count-(totalsum+totalCount*count*2))/(totalsum+totalCount*count*2)>=hgain; //NEGATIVE_INFINITY
		}else{
		var flag = (maxValue*count-(totalsum+totalCount*count*2))/(totalsum+totalCount*count*2)>=Number.NEGATIVE_INFINITY;
			return flag;
		}
	}
}


//最低回报率
function minRateC(minRate,totalsum,totalCount,maxValue,count){
	if(!isNaN(minRate) && minRate!=""){
		return (maxValue*count-(totalsum+totalCount*count*2))/(totalsum+totalCount*count*2)>=minRate;
	}else{
		return true;
	}
}

//取消选中
function cancelChecked(i) {
    var index = Number(i);
	var checked =$("#pselect"+index).attr("class");
	if(checked == "select"){
		$("#pselect"+index).attr("class","default");
		tradeChase.chaseBeanList[index].checked = false;
	}else if(checked == "default"){
		$("#pselect"+index).attr("class","select");
		tradeChase.chaseBeanList[index].checked = true;
	}else if(checked == "disable"){
		tradeChase.chaseBeanList[index].checked = false;
	}
	tradeChase.chaseBeanList[index].mutiple = fw.get("pfee"+index).value;
	//showChaseInfo();
	gainfun();
}

//取消选中--智能追号
function zzcancelChecked(i){
	var index = Number(i);
	var checked =$("#zzpselect"+index).attr("class");
	if(checked == "select"){
		$("#zzpselect"+index).attr("class","default");
		tradeInteChase.iChaseBeanList[index].checked = false;
	}else if(checked == "default"){
		$("#zzpselect"+index).attr("class","select");
		tradeInteChase.iChaseBeanList[index].checked = true;
	}else if(checked == "disable"){
		tradeInteChase.iChaseBeanList[index].checked = false;
	}
	tradeInteChase.iChaseBeanList[index].mutiple = fw.get("zzpfee"+index).value;
	gainfun_zz();
}

//优化
function gainfun(){
	var summary=0;
	var totalFree=0;
	var buyTypeZh = $("#buyTypeZh").attr("checked");
	var buyTypeZz = $("#buyTypeZz").attr("checked");
	var ptab = document.getElementById("period_table");
	var maxValue=getMaxValue();
	var totalCount=parseInt(fw.get("inLineCount").innerHTML,10);//注数
	var amount = 0 ;//单倍注数金额
	var chaseCount = 0;//追号总期数
	if( fw.dom.get("multipleDG") != 0)
	{
		amount = parseInt(fw.dom.get("inLineAmount").innerHTML,10) / parseInt(fw.dom.get("multipleDG").value,10);
	}
	for(var i=0;i<pzChaseCount;i++){
		if(tradeChase.chaseBeanList[i].checked) {
			var fee=fw.get("pfee"+(i)).value;
			fee = fee.replace(/\D/g,"");
			if (fee == "" || fee <= 0) fee = 1;
			if(fee!="" && fee>=0 && !isNaN(fee)){
				//正确的倍数
				fee = parseInt(fee,10);
				totalFree += fee;
				var currsum = (amount) * fee; // 当期投入
				var summary = summary + currsum; // 累计投入
				var currgain = maxValue * fee;//当期收益
				var totalgain = currgain - summary;//累计收益
				if(summary <= 0) 
					var totalgainfee = 0;
				else
					var totalgainfee = parseInt(totalgain*10000/summary,10)/100;//累计收益率
				if(totalgainfee == 0) totalgainfee+=".00";
				
				$("#"+"pselect"+i).attr("class","select");
				$("#pfee"+i).val(fee);
				ptab.rows[i].cells[3].innerHTML=currsum;
				ptab.rows[i].cells[4].innerHTML=summary;
				ptab.rows[i].cells[5].innerHTML=currgain;
				ptab.rows[i].cells[6].innerHTML=totalgain;
				ptab.rows[i].cells[7].innerHTML=totalgainfee;
				
				tradeChase.chaseBeanList[i].amount = currsum;
				tradeChase.chaseBeanList[i].checked = true;
				tradeChase.chaseBeanList[i].mutiple = fee;
			}
			chaseCount++;
			$("#tr" + i).show();
		}else{
		    if($("#"+"pselect"+i).attr("class") != "disable"){
		    	$("#"+"pselect"+i).attr("class","default");	
		    	$("#pfee"+i).val(1);
		    }
			ptab.rows[i].cells[3].innerHTML="--";
			ptab.rows[i].cells[4].innerHTML="--";
			ptab.rows[i].cells[5].innerHTML="--";
			ptab.rows[i].cells[6].innerHTML="--";
			ptab.rows[i].cells[7].innerHTML="--";
			
			tradeChase.chaseBeanList[i].checked = false;
			tradeChase.chaseBeanList[i].mutiple = 1;
			tradeChase.chaseBeanList[i].amount = 0;
		}
	}
	document.getElementById("chaseSumAmount").innerHTML = (amount*totalFree);
	//pzChaseCount = chaseCount;
	document.getElementById("chaseSumCount").innerHTML = chaseCount;
}


//智能追号优化
function gainfun_zz(){
	var summary=0;
	var totalFree=0;
	var buyTypeZh = $("#buyTypeZh").attr("checked");
	var buyTypeZz = $("#buyTypeZz").attr("checked");
	var startChaseTerm = Number($("#zzbingoPrize").val());
	var ptab = document.getElementById("zzperiod_table");
	var maxValue=getMaxValue();
	var totalCount=parseInt(fw.get("inLineCount").innerHTML,10);//注数
	var amount = 0 ;//单倍注数金额
	var chaseCount = 0;//追号总期数
	if( fw.dom.get("multipleDG") != 0)
	{
		amount = parseInt(fw.dom.get("inLineAmount").innerHTML,10) / parseInt(fw.dom.get("multipleDG").value,10);
	}
	for(var i = 0;i < zzChaseCount;i++){
		if(tradeInteChase.iChaseBeanList[i].checked && tradeInteChase.iChaseBeanList[i].term >= startChaseTerm) {
			var fee=fw.get("zzpfee"+(i)).value;
			fee = fee.replace(/\D/g,"");
			if (fee == "" || fee <= 0) fee = 1;
			if(fee!="" && fee>=0 && !isNaN(fee)){
				//正确的倍数
				fee = parseInt(fee,10);
				totalFree += fee;
				var currsum = (amount) * fee; // 当期投入
				var summary = summary + currsum; // 累计投入
				var currgain = maxValue * fee;//当期收益
				var totalgain = currgain - summary;//累计收益
				if(summary <= 0)
					var totalgainfee = 0;
				else
					var totalgainfee = parseInt(totalgain*10000/summary,10)/100;//累计收益率
				if(totalgainfee == 0) totalgainfee+=".00";
				$("#"+"zzpselect"+i).attr("class","select");
				$("#zzpfee"+i).val(fee);
				ptab.rows[i].cells[3].innerHTML=currsum;
				ptab.rows[i].cells[4].innerHTML=summary;
				ptab.rows[i].cells[5].innerHTML=currgain;
				ptab.rows[i].cells[6].innerHTML=totalgain;
				ptab.rows[i].cells[7].innerHTML=totalgainfee;
				
				tradeInteChase.iChaseBeanList[i].amount = currsum;
				tradeInteChase.iChaseBeanList[i].checked = true;
				tradeInteChase.iChaseBeanList[i].mutiple = fee;
			}
			chaseCount++;
			$("#tr" + i).show();
		}else{
			if($("#"+"zzpselect"+i).attr("class") != "disable"){
				$("#"+"zzpselect"+i).attr("class","default");	
				$("#zzpfee"+i).val(1);
			}
			ptab.rows[i].cells[3].innerHTML="--";
			ptab.rows[i].cells[4].innerHTML="--";
			ptab.rows[i].cells[5].innerHTML="--";
			ptab.rows[i].cells[6].innerHTML="--";
			ptab.rows[i].cells[7].innerHTML="--";
			
			tradeInteChase.iChaseBeanList[i].checked = false;
			tradeInteChase.iChaseBeanList[i].mutiple = 1;
			tradeInteChase.iChaseBeanList[i].amount = 0;
		}
	}
	$("#zzChaseSumAmount").html(amount*totalFree)
	$("#iChaseSumAmount").html(amount*totalFree)
	$("#iChaseSumCount").html(chaseCount)
	showZzButton();
}

function changeType(){

	var syType1 = fw.get("syType1");
	var syType3 = fw.get("syType3");
	if(syType1.checked){
		$("#minWinFund").attr("disabled",false); 		 	
		$("#minRate").attr("disabled",false); 
		$("#qi").attr("disabled",true); 
		$("#qgain").attr("disabled",true); 
		$("#hgain").attr("disabled",true);
		$("#syDiv1").attr("class","catch grayrow");
		$("#syDiv3").attr("class","terms check");
		return;
	}
	
    if(syType3.checked){
        $("#qi").attr("disabled",false); 
		$("#qgain").attr("disabled",false); 
		$("#hgain").attr("disabled",false);  
		$("#minWinFund").attr("disabled",true); 
		$("#minRate").attr("disabled",true); 	
		$("#syDiv3").attr("class","catch grayrow");
		$("#syDiv1").attr("class","terms check");		
		 return;		
    }
}

function getMaxValue(){
	return calculateTotalPrize();
}

function clearSelect(){
	fw.get("qi").value="";//前多少期
	fw.get("qgain").value="";//之前收益率 %
	fw.get("hgain").value="";//之后收益率 %
	
	fw.get("minWinFund").value = "";
	fw.get("minRate").value = "";
	fw.get("iChaseSumAmount").innerHTML = 0;
	fw.get("zzCountSelect").value = 30;
	fw.get("zzInitBet").value = 1;
	
	var ptab=document.getElementById("zzperiod_table");
	for(var i=0;i<ptab.rows.length;i++){
		if(fw.get("zzpselect"+i)) {
			var pselect = $("#zzpselect"+i).attr("class");
			if(pselect == "select"){
				$("#zzpselect"+i).attr("class","default");
				tradeInteChase.iChaseBeanList[i].checked = false;
			}
		}
	}
	if(fw.get("pselect0")) {
		$("#pselect0").attr("class","select");
	}
	if(fw.get("zzpselect0")){
		$("#zzpselect0").attr("class","select");
		$("#zzpfee0").val("1");
		tradeInteChase.iChaseBeanList[0].checked = true;
	}
	//智能追号期数恢复初始值
	zzChaseCount = 10;
	//重新绘画智能追号列表
	setZzChaseHTML(tradeChase.chaseXmlDoc,true);
	if($("#buyTypeZz").attr("checked")){
		gainfun_zz();
	}else{
		gainfun();
	}
}

//根据选择显示累计奖金输入区域
function showZzTotalPrize(obj) {
	if(obj.checked){
		$("#itotalPrizeSpan").show();
		$("#icontinueChaseSpan").hide();
	}else{
		$("#itotalPrizeSpan").hide();
		$("#icontinueChaseSpan").show();
	}
}

//根据选择显示累计奖金输入区域
function onlyZzChoose(ch) {
	var obj1 = document.getElementById("ichaseStopCondition");
    var obj2 = document.getElementById("ibingoStopCondition");
    
    if (obj1 != ch && obj2.checked) {
        obj1.checked = false;
        obj2.checked = true;
    }
    if (obj2 != ch && obj1.checked) {
        obj1.checked = true;
        obj2.checked = false;
    }
}

//智能追号期数输入
function onZzTermCountChange(obj, isblur){
	obj.value = obj.value.replace(/\D/g,"");
	if (isblur&&obj.value=="") obj.value=100;
	if (obj.value=="0") obj.value=100;
	if (obj.value>1000) obj.value=100;
}

//回报设置输入
function onHuiBaoChange(obj, isblur){
	obj.value = obj.value.replace(/\D/g,"");
	if (obj.value<"0") obj.value="";
}

//智能追号初始倍数输入
function onZzInitBetChange(obj, isblur){
	obj.value = obj.value.replace(/\D/g,"");
	if (isblur&&obj.value=="") obj.value=1;
	if (obj.value=="0") obj.value=1;
	if (obj.value>9999) obj.value=1;
}

//智能追号最大倍投输入
function onZzMaxBetChange(obj, isblur){
	obj.value = obj.value.replace(/\D/g,"");
	if (isblur&&obj.value=="") obj.value=1500;
	if (obj.value=="0") obj.value=1500;
	if (obj.value>9999) obj.value=9999;
}
//----------------------------------------------------智能追号结束-----------------------------------------------------------


//----------------------------------------------------追号、代购、合买追号-----------------------------------------------------------
//普通追号总期数--默认为10期
var pzChaseCount = 10;
//智能追号总期数--默认为10期
var zzChaseCount = 10;
/**
 * 选择代购Radio
 * @return
 */
function changeDg(){
	$("#chaseSelect").hide();
	
	$('#multipleDG').attr("disabled",false);
	$("#hmSelect").hide();
	$("#inteChaseSelect").hide();
	
	$("#isHidden").addClass("hidden");
	$("#notPublic").attr("checked","true").parent().removeClass("hidden");
	$("#followPublic").parent().addClass("hidden");
}

/**
 * 选择追号Radio--优化
 * @return
 */
function changeZh(){
	$("#chaseSelect").css('display','inline-block'); 
	$("#hmSelect").hide();
	$("#inteChaseSelect").hide();
	//在追号的时候，上面的倍数文本框应置為无效
	$('#multipleDG').attr("disabled",true);
	setChaseHTML(tradeChase.chaseXmlDoc);
	
	$("#isHidden").addClass("hidden");
	$("#notPublic").attr("checked","true").parent().removeClass("hidden");
	$("#followPublic").parent().addClass("hidden");
	//初始化当前彩期
	$("#pzCurrentTerm").html(tradeTerm.currentTerm);
}
/**
 * 选择智能追号Radio
 * @return
 */
function changeZz(){
	$("#inteChaseSelect").css('display','inline-block'); 
	$("#hmSelect").hide();
	$("#chaseSelect").hide();
	//在追号的时候，上面的倍数文本框应置為无效
	$('#multipleDG').attr("disabled",true);
	//初始化一次智能追号期数总数
	zzChaseCount = 10;
	//显示追号列表
	initZzTerm();
	$("#isHidden").addClass("hidden");
	$("#notPublic").attr("checked","true").parent().removeClass("hidden");
	$("#followPublic").parent().addClass("hidden");
	$("#zzCurrentTerm").html(tradeTerm.currentTerm);
}
/**
 * 选择合买Radio
 * @return
 */
function changeHm(){
	$('#multipleDG').attr("disabled",false);
	$("#chaseSelect").hide();
	$("#inteChaseSelect").hide();
	$("#hmSelect").show();
	
	$("#isHidden").removeClass("hidden");
	$("#publicPlan").attr("checked","true");
	$("#notPublic").parent().addClass("hidden");
	$("#followPublic").parent().removeClass("hidden");
}

//获取停止追号的奖金
function getChaseStopPrize() {
	var totalPrize = calculateTotalPrize();
	if(isNaN(totalPrize) || totalPrize == 0) {
		totalPrize = 1;
	}

	if(fw.get("totalPrize")) {
		fw.get("totalPrize").value = totalPrize;
	}
	if(fw.get("itotalPrize")) {//智能追号
		fw.get("itotalPrize").value = totalPrize;
	}
}

//追号倍数改变，并重新追号金额
function onBuyMutipleChange(obj, isblur){
	obj.value = obj.value.replace(/\D/g,"");
	if (isblur&&obj.value=="") obj.value=1;
	if (obj.value=="0") obj.value=1;
	showInLineInfo();
}

//新版投注页改变倍数
function onBuyMutipleChangeNew(type){
    var multiple = $("#multipleDG").val();
	//增加
	if(type == "add"){
		multiple++;
	}else if(type == "minus"){
		multiple--;
	}
	if(multiple < 1){
		multiple = 1;
	}
	$("#multipleDG").val(multiple);
	showInLineInfo();
}
//----------------------------------------------------追号、代购、合买追号结束-----------------------------------------------------------

//----------------------------------------------------交易开始-----------------------------------------------------------
function tradeSubmit() {
	checkLogin(tradeSubmitInner);
}

isSubmit = false;
function tradeSubmitInner(){
	//检查是否幸运选号并转化投注列表
	checkLuckyToConver();

	if(trade.contentList.length == 0){
		cll_confirm_to_bet("投注内容为空！"
		,function (){ JSNEW(1);}
		,function() {
			isSubmit = false;
			return;
		});
		return;
	}

	var chaseCount = 0;
	var term = "";
	var multiple = "";
	var amounts = "";
	if(fw.get("buyTypeZh").checked){
		for(var i=0;i<tradeChase.chaseBeanList.length;i++){
			if(tradeChase.chaseBeanList[i].checked && tradeChase.chaseBeanList[i].amount != 0){
				chaseCount++;
				term += tradeChase.chaseBeanList[i].term +"^";
				multiple += tradeChase.chaseBeanList[i].mutiple +"^";
				amounts += tradeChase.chaseBeanList[i].amount +"^";;
			}
		}
		if(fw.get("buyTypeZh").checked && chaseCount == 0){
			cll_alert("追号至少选择一期！");
			isSubmit = false;
			return;
		}
	
		term = term.substring(0,term.length-1);
		multiple = multiple.substring(0,multiple.length-1);
		amounts = amounts.substring(0,amounts.length-1);
	}
	
	$("#publicStatus").val($("input[name='selectPublicStatus']:checked").val())
	//智能追号
	var iChaseCount = 0;
	var iTerm = "";
	var iMultiple = "";
	var iAmounts = "";
	if(fw.get("buyTypeZz")){
		if(fw.get("buyTypeZz").checked){
			for(var i=0;i<tradeInteChase.iChaseBeanList.length;i++){
				if(tradeInteChase.iChaseBeanList[i].checked && tradeInteChase.iChaseBeanList[i].amount != 0){
					iChaseCount++;
					iTerm += tradeInteChase.iChaseBeanList[i].term +"^";
					iMultiple += tradeInteChase.iChaseBeanList[i].mutiple +"^";
					iAmounts += tradeInteChase.iChaseBeanList[i].amount +"^";;
				}
			}
			if(fw.get("buyTypeZz").checked && iChaseCount == 0){
				cll_alert("智能追号至少选择一期！");
				isSubmit = false;
				return;
			}
		
			iTerm = iTerm.substring(0,iTerm.length-1);
			iMultiple = iMultiple.substring(0,iMultiple.length-1);
			iAmounts = iAmounts.substring(0,iAmounts.length-1);
		}
	}
	
	//玩法:选号~玩法:选号
	var content = "";
	var playType = 0;
	var playTypeTemp = 0;
	var isHt = false;
	var baseCount = 0;
	var isXZJZ = false;
	for(var i=0;i<trade.contentList.length;i++){
		var bean = trade.contentList[i];
		if(playTypeTemp == 0){
			playTypeTemp = bean.playType;
		}
		if(playTypeTemp != bean.playType){
			isHt = true;
		}
		if(document.getElementById("feiPan")&&document.getElementById("feiPan").checked){
			var tempPlayType=kl8PlayType[playTypeValueMap.get(bean.playType)];
			if(tempPlayType==null){
				cll_alert("飞盘与选号玩法冲突,飞盘模式只支持选1，选2，选3，选4，选5，选6，选7");
				isSubmit=false;
				return ;
			}
			content = content +tempPlayType+":"+bean.content+"~";
		}else{
			content = content + playTypeValueMap.get(bean.playType) +":"+bean.content+"~";
		}
		baseCount += bean.baseCount;
		
		if(bean.playType == "z6b5" || bean.playType == "z6b4" || bean.playType == "z5b5"
		 ||bean.playType == "z5b4" || bean.playType == "z5b3" || bean.playType == "z4b4") {//判断是否包含旋转矩阵玩法
			isXZJZ = true;
		}
	}
	baseCount = fw.get("inLineCount").innerHTML;
	content = content.substring(0,content.length-1);
	if(isHt){
		playType = "0";
	}else{
		playType = playTypeValueMap.get(playTypeTemp);
	}

	var xzjzInfo = "<br/><br/><font color='#FF0000'>温馨提示：旋转矩阵投注方式有利有弊，如您已知晓其中利弊，请点击确认！</font>";

	if(fw.get("buyTypeDg").checked){

		//非追号
		fw.get("multiple").value = fw.get("multipleDG").value;
		fw.get("amount").value = fw.get("inLineAmount").innerHTML;// baseCount * Number(fw.get("multipleDG").value)*2;
		fw.get("term").value = tradeTerm.currentTerm;
		fw.get("lotType").value = trade.lotteryType;
		fw.get("playType").value = playType;
		fw.get("content").value = content;
		if(fw.get("zj") ){
			 if(fw.get("zj").checked){
				fw.get("addAttribute").value = "0";
			}else{
				fw.get("addAttribute").value = "1";
			}
		}
		
		var confStr = "";
		confStr += "<b style=\"font-weight:bold;\">"+trade.lotteryTypeName+"</b>  "+tradeTerm.currentTerm+"期</br></br>";
		confStr += "投注方式： 代购</br></br>";
		//取消双色球92折活动所以更改条件为false
		if(false) {
			//var cheapAmount = parseFloat(fw.get("amount").value * 0.92).toFixed(2);
			confStr = "您选择了 " + baseCount  + "注 " + fw.get("multiple").value + "倍， 折后为 " + cheapAmount + "元，请确认！";
			
			if(isXZJZ) {
				confStr += xzjzInfo;
			}
		} else {
			confStr += "投注信息： 共" + baseCount  + "注 ," + fw.get("multiple").value + "倍， 总金额 <b style=\"color:red; font-weight:bold;\">" + fw.get("amount").value + "</b>元";
			if(isXZJZ) {
				confStr += xzjzInfo;
			}
		}
		cll_confirm_to_buy(confStr,
			function(){
				if(isSubmit) {
					cll_alert("正在提交");
					return false;
				}
				isSubmit = true;

				document.tradeForm.action = ctx+"/trade/dg.php";
				//alert("multiple:"+fw.get("multiple").value);
				//alert("amount:"+fw.get("amount").value);
				//alert("term:"+fw.get("term").value);
				//alert("lotType:"+fw.get("lotType").value);
				//alert("playType:"+fw.get("playType").value);
				//alert("content:"+fw.get("content").value);
				var json = {
					url : document.tradeForm.action,
					form : document.tradeForm,
					onsuccess :tradeBack,
					onfail : function (){
						cll_alert("提交失败！");
						isSubmit = false;
					}
				};
				json.charset="GBK";
				fw.ajax.request(json);
			},
			function() {
				isSubmit = false;
				return;
		});


	}else if(fw.get("buyTypeZh").checked){
		fw.get("multiple").value = multiple;
		fw.get("amounts").value = amounts;
		fw.get("amount").value = fw.get("chaseSumAmount").innerHTML;
		fw.get("term").value = term;
		fw.get("lotType").value = trade.lotteryType;
		fw.get("playType").value = playType;
		fw.get("content").value = content;
		if(fw.get("chaseStopCondition")) {
			if(fw.get("chaseStopCondition").checked){
				var itotalPrize = fw.get("totalPrize").value
				fw.get("stopCondition").value = "0#"+itotalPrize;
			}else{
				fw.get("stopCondition").value = "";
			}
		}
		
		if(fw.get("bingoStopCondition") && fw.get("bingoStopCondition").checked){//高频添加中奖停止追号
			var ibingoPrize = fw.get("bingoPrize").value;
			fw.get("stopCondition").value = "1#"+ibingoPrize;
		}
		
		
		if(fw.get("zj") ){
			 if(fw.get("zj").checked){
				fw.get("addAttribute").value = "0";
			}else{
				fw.get("addAttribute").value = "1";
			}
		}

		document.tradeForm.action = "/trade/zh.php";
		
		var confStr = "";
		confStr += "<b style=\"font-weight:bold;\">"+trade.lotteryTypeName+"</b>  "+tradeTerm.currentTerm+"期</br></br>";
		confStr += "投注方式： 追号</br></br>";
		//取消双色球92折活动所以更改条件为false
		if(false) {
			var cheapAmount = parseFloat(fw.get("amount").value * 0.92).toFixed(2);
			confStr = "您选择了 " + baseCount + "注，首期 " + multiple.split("^")[0] + "倍 " + amounts.split("^")[0] +"元，"
					 +"追 " +chaseCount+"期，折后为 " + cheapAmount + "元，请确认！";
			if(isXZJZ) {
				confStr += xzjzInfo;
			}
		} else {
			confStr += "投注信息： 共" + baseCount  + "注 ," + chaseCount + "期， 总金额 <b style=\"color:red; font-weight:bold;\">" + fw.get("amount").value + "</b>元";
			if(isXZJZ) {
				confStr += xzjzInfo;
			}
		}
		cll_confirm_to_buy(confStr,
			function(){
				if(isSubmit) {
					cll_alert("正在提交");
					return false;
				}
				isSubmit = true;

				var json = {
					url : document.tradeForm.action,
					form : document.tradeForm,
					onsuccess : tradeBack,
					onfail : function (){
						cll_alert("提交失败！");
						isSubmit = false;
					}
				};
				json.charset="GBK";
				fw.ajax.request(json);
			},	
			function(){
				isSubmit = false;
				return;
		});

		
	}else if(fw.get("buyTypeZz") && fw.get("buyTypeZz").checked){
		fw.get("multiple").value = iMultiple;
		fw.get("amounts").value = iAmounts;
		fw.get("amount").value = fw.get("zzChaseSumAmount").innerHTML;
		fw.get("term").value = iTerm;
		fw.get("lotType").value = trade.lotteryType;
		fw.get("playType").value = playType;
		fw.get("content").value = content;
		if(fw.get("ichaseStopCondition")) {
			if(fw.get("ichaseStopCondition").checked){
				var itotalPrize = fw.get("itotalPrize").value
				fw.get("stopCondition").value = "0#"+itotalPrize;
			}else{
				fw.get("stopCondition").value = "";
			}
		}
		
		if(fw.get("ibingoStopCondition") && fw.get("ibingoStopCondition").checked){//高频添加中奖停止追号
			var ibingoPrize = fw.get("ibingoPrize").value;
			fw.get("stopCondition").value = "1#"+ibingoPrize;
		}
		
		setChaseCondition(content);//检查是否设置追号条件

		document.tradeForm.action = "/trade/zh.php";
		
		if(trade.lotteryType == 157) {//江苏快3
			var multiplesTemp = iMultiple.split("^"); 
			for(var i=0;i<multiplesTemp.length;i++) {
				if(multiplesTemp[i] > 999) {
					cll_alert("为了降低您的购彩风险，最大只能投注999倍！");
					isSubmit = false;
					return false;
				}
			}
		}

		var confStr = "";
		confStr += "<b style=\"font-weight:bold;\">"+trade.lotteryTypeName+"</b>  "+tradeTerm.currentTerm+"期</br></br>";
		confStr += "投注方式： 智能追号</br></br>";
		confStr += "投注信息： 共" + baseCount  + "注 ," + iChaseCount + "期， 总金额 <b style=\"color:red; font-weight:bold;\">" + fw.get("amount").value + "</b>元";
		if(trade.lotteryType == 50 || trade.lotteryType == 52 || trade.lotteryType == 53 || trade.lotteryType == 54) {
			if(fw.get("startCondition")) { 
				if(fw.get("startCondition").value != "") {
					if(isHt){
						confStr += "<br/><br/><font color='#FF0000'>温馨提示：你选择混合投注，但条件追号只针对前一玩法进行设置！</font>";
					}
				}
			}
		}
		cll_confirm_to_buy(confStr,
			function(){
				if(isSubmit) {
					cll_alert("正在提交");
					return false;
				}
				isSubmit = true;

				var json = {
					url : document.tradeForm.action,
					form : document.tradeForm,
					onsuccess : tradeBack,
					onfail : function (){
						cll_alert("提交失败！");
						isSubmit = false;
					}
				};
				json.charset="GBK";
				fw.ajax.request(json);
			},	
			function(){
				isSubmit = false;
				return;
		});
		

	}else if(fw.get("buyTypeHm") && fw.get("buyTypeHm").checked){
		fw.get("multiple").value = fw.get("multipleDG").value;
		fw.get("amount").value = fw.get("inLineAmount").innerHTML;// baseCount * Number(fw.get("multipleDG").value)*2;
		fw.get("term").value = tradeTerm.currentTerm;
		fw.get("lotType").value = trade.lotteryType;
		fw.get("playType").value = playType;
		fw.get("content").value = content;
		if(fw.get("zj") ){
			 if(fw.get("zj").checked){
				fw.get("addAttribute").value = "0";
			}else{
				fw.get("addAttribute").value = "1";
			}
		}
		fw.get("founderAmount").value = fw.get("founderAmountInput").value;

		if(!fw.re.isNumber(fw.get("founderAmountInput").value)){
			cll_alert("认购金额有误！");
			isSubmit = false;
			return false;
		}

		fw.get("founderBdAmount").value = fw.get("founderBdAmountInput").value;

		if(!fw.re.isNumber(fw.get("founderBdAmountInput").value)){
			cll_alert("保底金额有误！");
			isSubmit = false;
			return false;
		}

		fw.get("other").value = encodeURIComponent(encodeURIComponent(fw.get("memoInput").value));

		var confStr = "";
		confStr += "<b style=\"font-weight:bold;\">"+trade.lotteryTypeName+"</b>  "+tradeTerm.currentTerm+"期</br></br>";
		confStr += "投注方式 ：合买</br></br>";
		//取消双色球92折活动所以更改条件为false
		if(false) {
			 var cheapAmount = parseFloat(fw.get("amount").value * 0.92).toFixed(2);
			 confStr = "您发起合买 " + baseCount  + "注 " + fw.get("multiple").value + "倍 折后为 " + cheapAmount
		             + "元，认购 "+ fw.get("founderAmountInput").value +"元 保底 "+ fw.get("founderBdAmountInput").value +"元\n方案成功出票后方可享受此折扣，请确认！";
			 if(isXZJZ) {
				confStr += xzjzInfo;
			 }
		} else {
		     var rengou= (Number(fw.get("founderAmountInput").value) / Number(fw.get("amount").value) * 100).toFixed(1);       
		     confStr += "投注信息 ：认购"+fw.get("founderAmountInput").value+"（"+rengou+"%）元，保底"+fw.get("founderBdAmountInput").value+"元，总金额<b style=\"color:red; font-weight:bold;\">"+fw.get("amount").value+"</b>元";
			if(isXZJZ) {
				confStr += xzjzInfo;
			}
		}
		cll_confirm_to_buy(confStr,
			function(){
				if(isSubmit) {
					cll_alert("正在提交");
					return false;
				}
				isSubmit = true;

				//alert(fw.get("commisionInput").options[fw.get("commisionInput").selectedIndex].text);
				fw.get("commision").value = fw.get("commisionInput").options[fw.get("commisionInput").selectedIndex].text;

				document.tradeForm.action = "/hm/hmCreate.php";

				var json = {
					url : document.tradeForm.action,
					form : document.tradeForm,
					onsuccess : tradeBack,
					onfail : function (){
						cll_alert("提交失败！");
						isSubmit = false;
					}
				};
				json.charset="GBK";
				fw.ajax.request(json);
			},	
			function(){
				isSubmit = false;
				return;
		});
	}
}

function tradeBack(o){
	isSubmit = false;
	var json = eval("(" + o + ")");
	if(json.code == "4002"){
		cll_confirm_to_charge(json.message
		,function (){ open("/uc/chargeInput.php");}
		,function() {
				return;
		})
	}else if(json.code == "0"){
		cll_alert(json.message);
	}else{
		cll_alert(json.message);
	}
	if(json.code == "0")
	{
		clearOption(0,false);
		$("#buyTypeDg").attr("checked",true);
		$("#buyTypeHm").attr("checked",false);
		$("#buyTypeZh").attr("checked",false);
		changeDg();
		fw.get("multipleDG").value = 1;
		
		
		if(fw.get("feiPan") ){
			 fw.get("feiPan").checked = false;
		}
		
		//将条件追号设置初始化状态
		if($("#cbMiss")){
			 $("#cbMiss").removeAttr("checked");
		     $("#missValueDiv").hide();
			 $("#chaseConditionTip").hide();
			 $("#startCondition").val("");
		}
		if($("#cbFollow") ){
			$("#cbFollow").removeAttr("checked");
			$("#followValueDiv").hide();
			$("#chaseConditionTip").hide();
			$("#startCondition").val("");
		}

		//初始化幸运选号随缘号码
		if(fw.get("fate_result_common")){
			$("#fate_result_common").hide();

			trade.contentListFast=null;
			trade.contentListFast = new Array();
			fw.dom.get("inFateLineCount").innerHTML = "0";
			fw.dom.get("inFateLineAmount").innerHTML = "0";
			
		}
		//初始化幸运选号个性选码
		if(fw.get("personality_result_common")){
			//初始化幸运选号个性选码
			$("#personality_result_common").hide();
			//清除子选项
			delAllOption();
			
			$("#condition_area_common").hide();
			$(".make_area").hide();
			
			trade.contentListPerson=null;
			trade.contentListPerson = new Array();
			
			fw.dom.get("inProLineCount").innerHTML = "0";
			fw.dom.get("inProLineAmount").innerHTML = "0";
		}
		if(document.getElementById("tradeListFrame")) {
			tradeListFrame.location.reload();
		} else if(typeof initRecords == "function"){
			try{
				// 增加加载记录等待提示
				$('#record tbody').prepend('<tr><td colspan="8"><div class="cllloading"><p><i class="loadimg"></i><span class="subtxt">投注记录正在更新，请稍后..</span></p></div></td></tr>');
				
				// 等待4秒刷新
				setTimeout("initRecords(1)", 4000);
			}catch(e){}
		}
		
	}
}

/**
 * 免费保存方案
 */
function freeSavePlan() {
	checkLogin(freeSavePlanInner);
}

/**
 * 免费保存方案
 */
function freeSavePlanInner() {
	if (isSubmit) {
		return;
	}
	isSubmit = true;
	
	// 检查是否幸运选号并转化投注列表
	checkLuckyToConver();
	
	if (trade.contentList.length == 0) {
		cll_confirm_to_bet("投注内容为空！", function(){JSNEW(1);}, function(){});
		isSubmit = false;
		return;
	}
	
	// 玩法:选号~玩法:选号
	var content = "";
	var playType = 0;
	var playTypeTemp = 0;
	var isHt = false;
	
	for(var i=0;i<trade.contentList.length;i++){
		var bean = trade.contentList[i];
		if(playTypeTemp == 0){
			playTypeTemp = bean.playType;
		}
		if(playTypeTemp != bean.playType){
			isHt = true;
		}
		
		content = content + playTypeValueMap.get(bean.playType) +":"+bean.content+"~";
	}
	
	content = content.substring(0,content.length-1);
	
	if(isHt){
		playType = "0";
	}else{
		playType = playTypeValueMap.get(playTypeTemp);
	}
	
	fw.get("multiple").value = fw.get("multipleDG").value;
	fw.get("amount").value = fw.get("inLineAmount").innerHTML; // baseCount * Number(fw.get("multipleDG").value)*2;
	fw.get("term").value = tradeTerm.currentTerm;
	fw.get("lotType").value = trade.lotteryType;
	fw.get("playType").value = playType;
	fw.get("content").value = content;
	if(fw.get("zj") ){
		 if(fw.get("zj").checked){
			fw.get("addAttribute").value = "0";
		}else{
			fw.get("addAttribute").value = "1";
		}
	}
    
	document.tradeForm.action = ctx+"/trade/dg.php?tradeType=1";
	
	var json = {
		url : document.tradeForm.action,
		form : document.tradeForm,
		onsuccess : function(jsonStr){
		    isSubmit = false;
		    var json = eval("(" + jsonStr + ")");
		    
		    if (json.code == "0") {
		    	cll_confirm_defined('温馨提示', '方案内容已保存，您可以在<a href="/uc/planList.php?action=savedPlanList" target="_blank" onclick="closeDragWindow(confirmWindowDIV)">已保存的方案</a>中查看方案详情', '查看详情', '知道了',
		    		function(){
		    		    open("/member/savedPlanShow.php?planNo=" + json.no);
		    	    },
	    			function(){}
		    	);
		    } else {
		    	cll_alert(json.message);
		    }
	    },
		onfail : function(){
			cll_alert("提交失败");
			isSubmit = false;
		}
	};
	json.charset="GBK";
	fw.ajax.request(json);
}
//----------------------------------------------------交易结束-----------------------------------------------------------

//----------------------------------------------------大小奇偶清功能键开始-----------------------------------------------------------

/**
 *群选 排列型
 *
*/
function selectRow(row,key,value)
{
	map = trade.cbMap.get(trade.playType).get(row);
	var danSet = new Set();
    if(trade.playType.indexOf("dt") != -1){
	    if(row == 2){//拖码
	    	var rowInfo = playTypeInfoMap.get(trade.playType).get(row);
	    	for(var r = 0; r < rowInfo.relation.length; r++){
				var rRow = rowInfo.relation[r];
				var rMap = trade.cbMap.get(trade.playType).get(rRow);
				if(!rMap.isEmpty()){
					var keys = rMap.keys();
					for(var n = 0 ; n < keys.length ; n++){
						var code = keys[n];
						danSet.add(code);
					}
				}
			}
	    }
    }
	map.clear();
	//排列三、排列五、3D选号dom为li
	if(trade.lotteryType == 3 || trade.lotteryType == 102 || trade.lotteryType == 4){ 
		 balls = fw.dom.getObjTag(trade.playType+row,"li");
	}else { 
		//默认为div
		balls = fw.dom.getObjTag(trade.playType+row,"div");
	}
	//balls = $("#" + trade.playType+row ).find("div");
	for(var j=0;j<balls.length;j++){
		//配合组选标准玩法
		selectNum(balls[j],row,j);
		selectNum(balls[j],row,j);
	}
	if(key=="clear")
	{
		
	}
	else if(key=="all")
	{
			for(var j=0;j<balls.length;j++)
			{
				if(!danSet.contain(j)){
				//balls[j].className="li2";
					selectNum(balls[j],row,j);
				}
			}
	}
	else if(key=="big")
	{
			for(var j=0;j<balls.length;j++)
			{
				//balls[j].className="li2";
				if(j>=value){	
					if(!danSet.contain(j)){
						selectNum(balls[j],row,j); 
					}
				}
			}
	}
	else if(key=="small")
	{
			for(var j=0;j<balls.length;j++)
			{
				//balls[j].className="li2";
				if(j<=value){	
					if(!danSet.contain(j)){
						selectNum(balls[j],row,j); 
					}
				}
			}
	}
	else if(key=="odd")
	{
			for(var j=0;j<balls.length;j++)
			{
				//balls[j].className="li2";
				if(j%2==1){
					if(!danSet.contain(j)){	
						selectNum(balls[j],row,j);
					} 
				}
			}
	}
	else if(key=="even")
	{
			for(var j=0;j<balls.length;j++)
			{
				//balls[j].className="li2";
				if(j%2==0){	
					if(!danSet.contain(j)){
						selectNum(balls[j],row,j);
					} 
				}
			}
	}
}
//乐透型
function selectRow2(row,key,value,codes)
{   
    map = trade.cbMap.get(trade.playType).get(row);
    var danSet = new Set();
    if(trade.playType.indexOf("dt") != -1){
	    if(row == 2){//拖码
	    	var rowInfo = playTypeInfoMap.get(trade.playType).get(row);
	    	for(var r = 0,len = rowInfo.relation.length; r < len; r++){
				var rRow = rowInfo.relation[r];
				var rMap = trade.cbMap.get(trade.playType).get(rRow);
				if(!rMap.isEmpty()){
					var keys = rMap.keys();
					for(var n = 0 ; n < keys.length ; n++){
						var code = keys[n];
						danSet.add(code);
					}
				}
			}
	    }
    }
	map.clear();
	var len= arguments.length; //传入的参数个数
	if(len>4){ 
		 balls = fw.dom.getObjTag(trade.playType+row,arguments[4]);	//如不为div时，传入第五个参数，取新参数的值
	}
	else { 
		//默认为div
		balls = fw.dom.getObjTag(trade.playType+row,"div");
	}
	$("#" + trade.playType + row + " .lion").attr("className", "li2");
	if(key=="clear")
	{	if($.isArray(codes)){
			var len = codes.length;
			for(var j=0;j<len;j++)
			{
				selectNum(balls[j],row,codes[j]);
				var map = trade.cbMap.get(trade.playType);
				map.get(row).remove(codes[j]);
			}
			if(len > 0){
				$(".cur_dan").attr("className","li2");
				$(".lion").attr("className","li2");
				$(".cb").attr("checked",false);
			}
		}
	}
	else if(key=="all")
	{
			var c = 0;
			for(var j = 0,len = balls.length;j < len;j++)
			{
				if(!danSet.contain(codes[c])){
					selectNum(balls[j],row,codes[c]);
				}
				c++;
			}
	}
	else if(key=="big")
	{
			var c = 0;
			for(var j = 0,len = balls.length;j < len;j++)
			{
				if(j>=value){ 
					if(!danSet.contain(codes[c])){
						selectNum(balls[j],row,codes[c]); 
					}
					c++; 
				}
			}
	}
	else if(key=="small")
	{
			var c = 0;
			for(var j = 0,len = balls.length;j < len;j++)
			{
				if(j<=value){	
					if(!danSet.contain(codes[c])){
						selectNum(balls[j],row,codes[c]); 
					}
					c++; 
				}
			}
	}
	else if(key=="even")
	{
			var c = 0;
			for(var j = 0,len = balls.length;j < len;j++)
			{
				if( j%2==value ){	
					if(!danSet.contain(codes[c])){
						selectNum(balls[j],row,codes[c]);
					}
					c++;  
				}
			}
	}
	else if(key=="odd")
	{
			var c = 0;
			for(var j = 0,len = balls.length;j < len;j++)
			{
				if( !(j%2==value)){	
					if(!danSet.contain(codes[c])){
						selectNum(balls[j],row,codes[c]);
					}
					c++;  
				}
			}
	}
}

function clearRow(r,b)
{
		map.get(r).clear();
		showSelectInfo();
		for(var j=0;j<b.length;j++)
		{
			b[j].className="li2";
		}
}
function getBalls(parentId)
{
	var tempLi=fw.dom.getObjTag(parentId,"div");
	//var tempLi = $("#" + parentId ).find("div");
	var tempDiv=[];
	for(var k=0;k<tempLi.length;k++)
	{
		tempDiv[k]=tempLi[k].getElementsByTagName("div")[0];
	}
	return tempDiv;
}
//----------------------------------------------------大小奇偶清功能键结束-----------------------------------------------------------

//----------------------------------------------------其它-----------------------------------------------------------
function getUrlPar(name){
    var reg = new RegExp("(^|\\?|&)"+ name +"=([^&]*)(\\s|&|$)", "i");
   	if (reg.test(location.href))
     	return unescape(RegExp.$2.replace(/\+/g, " "));
     
    return ""; 
}

function analyURL(){
	var contentList = new Object();
	var planNo = getUrlPar("planNo");
	if(planNo != "") {
		$.ajax({
			url:'/trade/findPlan.php?planNo='+ planNo,
			type: 'POST',
			dataType: 'json',
			async: false,
			success: function(json){
				var code = json.code;
				var contentAll = json.message;//通过json获取内容
				//alert("code=" + code + ",contentAll=" + contentAll);
	
				if(code == "0" && contentAll !="" ){
					var pieces = contentAll.split("~");
					for(var i = 0;i<pieces.length;i++){
						var bean = new contentBean();
						var keyvalue = pieces[i].split(":");
					
						if(keyvalue[0] ==""||keyvalue[1] == "")  return 0;
						contentList[keyvalue[0]] = keyvalue[0];
						contentList[keyvalue[1]] = keyvalue[1];
				
						trade.playType =contentList[keyvalue[0]];
						if(trade.lotteryType == "156") {//快乐8
							var tempPlayType = playTypeLabelMap.get(trade.playType);
							if(typeof tempPlayType == "undefined") {
								trade.playType = kl8PlayTypeReverse[trade.playType];
								trade.playType = playTypeLabelMap.get(trade.playType);
								document.getElementById("feiPan").checked = true;//选中
							} else {
								trade.playType = tempPlayType;
							}
						} else {//其他彩种
							trade.playType = playTypeLabelMap.get(trade.playType);
						}
						content = contentList[keyvalue[1]];
						
						zhuShu = getUrlCount();
						if(zhuShu > 0){
							bean.baseCount = zhuShu;
							bean.playType = trade.playType;
							bean.content = executeShowContent(bean.content,trade.lotteryType,trade.playType);							
							trade.contentList.push(bean);
							//处理显示的select框内容
							if(trade.lotteryType == "106" || trade.lotteryType == "105" || 
								trade.lotteryType == "150"||trade.lotteryType == "153" ||trade.lotteryType == "56"){
								content = getBallLabel(content);
							}
							option = document.createElement("OPTION");
							option.text = playTypeNameMap.get(trade.playType) + ": " + content;
							option.value = option.text;
							option.title = option.text;
							fw.dom.get("tradeList").options.add(option);
							showInLineInfo();
						}
					}
				} else {
					if(json.code == "2000") {
						checkLogin(null);//未登陆提示登陆
					} else {
						cll_alert(json.message);//直接显示错误信息
					}
				}
			}
		});
	}

	var playType = getUrlPar("p");
	var omitContent = getUrlPar("c");
	if(playType !='' && omitContent !=''){
		trade.playType = playType;
		content = omitContent;
		zhuShu = getUrlCount();
		if(zhuShu > 0){
			var bean = new contentBean();
			bean.content = omitContent;
			bean.baseCount = zhuShu;
			bean.playType = trade.playType;
			bean.name = trade.playType;
			trade.contentList.push(bean);
			option = document.createElement("OPTION");
			option.text = playTypeNameMap.get(trade.playType) + ": " + content;
			option.value = option.text;
			option.title = option.text;
			fw.dom.get("tradeList").options.add(option);
			showInLineInfo();
		}	
	}

}

/**
 * 确定选号
 */
function selectOk(){
	//单式玩法，从页面中的textarea中取得投注内容
	if(trade.playType == "ds"||trade.playType == "glds"||trade.playType == "glzx"||trade.playType == "glzhux"){
		var contentList = eval( trade.playType + "GetList()");
		if(contentList != null){
			var count = contentList.length;
			var limit = 1000;
			if(count > limit) {
				cll_alert("手工录入的号码已超过"+ limit +"注，请删除超过的号码注数！");
				return;
			}
			
			for(var i=0;i<contentList.length;i++){
				addOptionByJx(contentList[i],contentList[i]);
			}
			showInLineInfo();
		}
	
	//单式玩法，手工录入(高频)
	} else if(trade.playType == "rx3sg" || trade.playType == "rx4sg" || trade.playType == "rx5sg"
		   || trade.playType == "rx6sg" || trade.playType == "rx7sg" || trade.playType == "rx8sg"
		   || trade.playType == "qeZxsg" || trade.playType == "qeZhuxsg"
		   || trade.playType == "qsZxsg" || trade.playType == "qsZhuxsg" //11x5
		   
		   || trade.playType == "lxfssg" || trade.playType == "lxZuxsg"
		   || trade.playType == "sxfssg" || trade.playType == "sxZuxsg"
		   || trade.playType == "wxZxsg" || trade.playType == "wxTxsg"  //ssc

		   || trade.playType == "zxsg" || trade.playType == "zssg" 
		   || trade.playType == "zlsg"                                 //ssl

		   || trade.playType == "zx3sg" || trade.playType == "tx3sg" 
		   || trade.playType == "zx4sg" || trade.playType == "tx4sg"
		   || trade.playType == "zx5sg" || trade.playType == "tx5sg" //gxklsf

		   || trade.playType == "x2sg" || trade.playType == "x3sg"  
		   || trade.playType == "x4sg" || trade.playType == "x5sg"
		   || trade.playType == "x6sg" || trade.playType == "x7sg"
		   || trade.playType == "x8sg" || trade.playType == "x9sg"
		   || trade.playType == "x10sg" //kl8
	){
		var content = $("#"+trade.playType + "_cText").val();
		var contentList = sgGetList(content);
		if(contentList != null){
			var count = contentList.length;
			var limit = 400;//限制注数
			if(count > limit) {
				cll_alert("手工录入的号码已超过"+ limit +"注，请删除超过的号码注数！");
				return;
			}
			for(var i=0;i<count;i++){
				addOptionByJx(contentList[i],contentList[i]);
			}
			showInLineInfo();
		}

	//非单式玩法，从号码选号区来取得选号内容
	}else{
		if(trade.playType == "ddshjx") {//定胆杀号机选处理
			tradeInfo.getContentByddshjx();
			return;
		}

		//取得选号区所选号码的注数
		zhuShu = getCount();
		//如果注数>0，是合法的选号
		if(zhuShu > 0){
			if(trade.playType == "xzjz") {
				var shrinkCount = 0;
				var alertInfo;
				if(trade.lotteryType == "100"){//双色球
					shrinkCount = ssqShrink.getCurrentShrinkCount();
					alertInfo = "请选择8-20个红球号码和1-16个蓝球号码再进行缩水操作！";
				} else if(trade.lotteryType == "1") {//大乐透
					shrinkCount = dltShrink.getCurrentShrinkCount();
					var startCode = 6;
					if(dltShrink.getCurrentShrinkType() == "z5b4") {
						 startCode = 7;
					} else if(dltShrink.getCurrentShrinkType() == "z5b3") {
						 startCode = 10;
					} else {
						startCode = 6;
					}
					alertInfo = "请选择"+ startCode +"-20个前区号码和2-12个后区号码再进行缩水操作！";
				}
				
				if(shrinkCount <= 0) {
					cll_alert(alertInfo);
					return;
				}
				if(shrinkCount > 10000) {
					cll_alert("单张彩票金额不能超过2万元！");
					return;
				}
			} else {
				if(zhuShu > 10000) {
					cll_alert("单张彩票金额不能超过2万元！");
					return;
				}
			}
			//取得选号区所选号码的内容
			content = getContent();
			//alert(content);
			//交易相关的变量
			var bean = new contentBean();
			bean.content = content;
			if(trade.playType == "xzjz") {
				if(trade.lotteryType == "100"){//双色球
					bean.baseCount = ssqShrink.getCurrentShrinkCount();
					bean.playType = ssqShrink.getCurrentShrinkType();
				} else if(trade.lotteryType == "1") {//大乐透
					bean.baseCount = dltShrink.getCurrentShrinkCount();
					bean.playType = dltShrink.getCurrentShrinkType();
				}	
			} else {
				bean.baseCount = zhuShu;
				bean.playType = trade.playType;
			}
			if(fw.get("zj") && fw.get("zj").checked
			&& (trade.playType == "fs" || trade.playType == "dt" || trade.playType == "ds"|| trade.playType == "glds" || trade.playType == "xzjz")){
				bean.add = 1;
			}

			//处理显示的select框内容
			var option = document.createElement("OPTION");
			//playTypeNameMap保存的是玩法方式代码-数值的对应关系。（这里你在做新功能方法里面要处理下，做个反向对应）
			if(trade.playType == "xzjz") {
				if(trade.lotteryType == "100"){//双色球
					option.text = ssqShrink.shrinkTypeLalelMap.get(ssqShrink.getCurrentShrinkType()) + ": " + getContent(1);
				} else if(trade.lotteryType == "1") {//大乐透
					option.text = dltShrink.shrinkTypeLalelMap.get(dltShrink.getCurrentShrinkType()) + ": " + getContent(1);
				}
				option.value = option.text;
				option.title = option.text;
			} else {
				option.text = playTypeNameMap.get(trade.playType) + ": " + getContent(1);
				option.value = option.text;
				option.title = option.text;
			}
			
			if(trade.lotteryType == "102" || trade.lotteryType == "3") {//3d & 排3
				bean.content = executeShowContent(bean.content,trade.lotteryType,trade.playType);
				if(trade.playType == "zxHz") {
					zxHzConvertZx(content);
				} else if(trade.playType == "zsHz") {
					zsHzConvertZs(content);
				} else if(trade.playType == "zlHz") {
					zlHzConvertZl(content);
				} else {
					trade.contentList.push(bean);//将该号码bean放入交易list中
					fw.dom.get("tradeList").options.add(option);
				}
			} else {
				trade.contentList.push(bean);//将该号码bean放入交易list中
				fw.dom.get("tradeList").options.add(option);
			}

			scrollSelectList("tradeList");
			//计算trade这个list中的所有选号的总额信息
			showInLineInfo();
		}else {
			if(zhuShu <= 0){
				try{  
			     	if(typeof(eval(tiShiInfo))=="function"){
			        	cll_alert(tiShiInfo());
			     	}
			    }catch(e){}	
			}
		}
	}
}

function executeShowContent(content,lotteryType,playType){
	if(lotteryType == "102"){
		if(trade.playType == "dx" || trade.playType == "jiou" || trade.playType == "c3t" || trade.playType == "tlj" ) {//显示内容转为投注内容
				return content.replace("小",1).replace("大",2).replace("奇","5").replace("偶","4").replace("猜三同","C3T").replace("拖拉机","TLJ");
		}
	}
	return content;
}

function scrollSelectList(x)
{
	var obj = fw.dom.get(x);
	var l = obj.length ;
	for(var i=0; i<l-1 ; i++)
	{
		obj.options[i].selected = false;
	}
	obj.options[l-1].selected = true;
	//fw.dom.get("tradeList").options[l-1].selected = false;
	//alert("scrollTop=" + fw.dom.get("tradeList").scrollTop);
	obj.scrollTop = 10000;
	//alert("scrollTop=" + fw.dom.get("tradeList").scrollTop);

}
function addOptionByJx(value,label)
{	
		var bean = new contentBean();
		bean.content = value;
		if(fw.get("zj") && fw.get("zj").checked
			&& (trade.playType == "fs" || trade.playType == "dt" || trade.playType == "ds"|| trade.playType == "glds")){
			bean.add = 1;
		}
		if(trade.lotteryType=="101" || trade.lotteryType=="100" || trade.lotteryType=="1"){ //七乐彩 双色球 大乐透
			bean.baseCount = 1;
			try{  
			     if(typeof(eval(dsGetCount))=="function"){
			       bean.baseCount =dsGetCount(value);
			     }
			}catch(e){ }	
		}else{
			bean.baseCount = 1;
		}
		bean.playType = trade.playType;
		trade.contentList.push(bean);
		var option = document.createElement("OPTION");
		option.text = playTypeNameMap.get(trade.playType)+": "+ label;
		option.value = option.text;
		option.title = option.text;
		fw.dom.get("tradeList").options.add(option);

		scrollSelectList("tradeList");
		showInLineInfo();
}

/**
 * 清空选号区
 */
function disSelect(){
	if(trade.lotteryType == "156"){
		map = trade.cbMap;
	}else{
		map = trade.cbMap.get(trade.playType);
	}
	if(trade.playType == "ddshjx") {//定胆杀号机选处理
		if(trade.lotteryType == "100") {//双色球
			clearRed(1);
			clearBlue(2);
		} else if(trade.lotteryType == "1") {//大乐透
			clearQian(1);
			clearHou(2);
		}
	} else {
		for(var i=1;i<=map.size();i++){
			if(map.containsKey(i+"")){
				os = map.get(i+"").values();
				if(os){
					map.get(i+"").clear();
					for(var j=0;j<os.length;j++){
						selectNum(os[j].o,i,os[j].code); selectNum(os[j].o,i,os[j].code);	//两次点击，清理同步位
					}
				}

			}
		}
	}
	//fw.get("cbCount").innerHTML = "0";
	//fw.get("cbAmount").innerHTML = "0";
}

/**
 * 清空选号区(新版)
 */
function disSelect_new(){	
		map = trade.cbMap.get(trade.playType);
		if(trade.playType.substr(-2)=="dt"){ //胆拖玩法
			//清除拖码
			map.get(2+"").clear();
			balls = fw.dom.getObjTag(trade.playType+2,"li");
			for(var j=0;j<balls.length;j++){
				selectNum(balls[j],2,"");	selectNum(balls[j],2,"");	
			}
			//清除胆码
			clearDt();
			map.get(1+"").clear();
		}else{	
			for(var i=1;i<=map.size();i++){
				if(map.containsKey(i+"")){
					os = map.get(i+"").values();
					if(os){
						map.get(i+"").clear();
						for(var j=0;j<os.length;j++){
							selectNum(os[j].o,i,os[j].code); selectNum(os[j].o,i,os[j].code);	//两次点击，清理同步位
						}
					}
	
				}
			}
		}
	showSelectInfo();
}

/**
 * 删除选中项，清除投注区
 */
function clearOption(flag,isAlert){
	if(flag == 0){
		if(isAlert){
			cll_confirm("请确认您要清空所有投注信息吗?",clearAllOption);
			//if(confirm()){
				//clearAllOption();
			//}
		}else{
			clearAllOption();
		}
	}else{
		var i = 0;
		var count = fw.dom.get("tradeList").options.length;
		var isSelected = false;
		for(i=0;i<count;i++){
			if(fw.dom.get("tradeList").options[i].selected){
				isSelected = true;
				break;
			}
		}
		if(!isSelected && (i == count)){
			cll_alert("没有要删除的投注项！");
		}
	}
}
function clearAllOption()
{
	if(document.getElementById("tradeList")) {
	  document.getElementById("tradeList").length = 0;
	  document.getElementById("tradeList").removeAll();
	}
	trade.contentList = null;
	trade.contentList = new Array();
	showInLineInfo();
}

//----------------------------------------------------排列型机选开始-----------------------------------------------------------
var randTimer;
var startTime = 0;
var areas;
var minValue;
var maxValue;
var jsCount = 1;
var jsDoneCount = 0;
var jsPlayType ="";
var emptyCount = 0;
		//玩法        机选的号码数量  最小值   最大值    机选注数  彩种的号码数量  补位的方向
function JS(playType,codeCount,minValue,maxValue,jsCount,maxCount,isRight){
	jsPlayType = playType;
	//把机选显示的div名称存到areas数组里面去
	areas = new Array();
	for(var i=1;i<=codeCount;i++){
		areas[i-1] = 0;
	}
	//数据保存
	this.minValue = minValue;
	this.maxValue = maxValue;
	this.jsCount = jsCount;
	this.emptyCount = maxCount-codeCount;
	this.isRight = isRight;
	//开始机选
	randTimer = setTimeout("onJSRandTimer();", 100);
}



function onJSRandTimer(){
	//遍历机选号码显示div的areas,显示随机号码
	for(var i=0;i<areas.length;i++){
		areas[i] = fw.math.random(minValue,maxValue);
	}
	startTime+=100;
	if(startTime <= 200){
		randTimer = setTimeout("onJSRandTimer();", 100);
	}else{
		if(jsDoneCount <= jsCount){

			//拿机选到的号码开始
			var single = "";
			for(var i=0;i<areas.length;i++){
				single += (areas[i]+"|");
			}
			single = single.substring(0,single.length-1);
			//拿机选到的号码结束

			//支持时时彩的三星和时时乐的前一，后一等玩法进行补位
			//补位的字符串拼凑开始
			var empty = "";
			for(var i=0;i<emptyCount;i++){
				empty += "*|";
			}
			empty = empty.substring(0,empty.length-1);
			//补位的字符串拼凑结束

			//根据补位的方向来补位
			if(isRight && empty != ""){
				single = empty +"|"+single;
			}else if(empty != ""){
				single = single +"|"+empty;
			}


			var bean = new contentBean();
			bean.content = single;
			bean.baseCount = 1;
			bean.playType = trade.playType;
			trade.contentList.push(bean);
			var option = document.createElement("OPTION");
			option.text = playTypeNameMap.get(trade.playType)+": "+single;
			option.value = option.single;
			fw.dom.get("tradeList").options.add(option);
			showInLineInfo();


			startTime = 0;
			jsDoneCount++;
			if(jsDoneCount<jsCount){
				randTimer = setTimeout("onJSRandTimer();", 100);
			}else{
				jsCount = 1;
				jsDoneCount = 0;
			}
		}
	}
}
//----------------------------------------------------排列型机选结束-----------------------------------------------------------
//---------------------------------最新中奖滚动------------------------------------
function moveList(obj){
  var o = typeof(obj)=="string" ? document.getElementById(obj) : obj;
  if(o == null) {
	return;
  }
  var dltH = 0;
  //o.innerHTML +=  o.innerHTML;//转为生成时处理
  var currPos = 0;
  setInterval(
			function()
			{
				dltH = o.scrollHeight; //每次移动前要动态计算一次
				var xx = setInterval(
				      	function(){
								  if(++currPos >= (dltH/2)){currPos=0;}
								  if(currPos%22==0)clearInterval(xx);
								  o.scrollTop = currPos;
								  //window.status = dltH+"curr:"+currPos ;

						}  	, 28 );

			}, 4000 );
}

//---------------------------------最新中奖滚动结束------------------------------------
function moveNewsList(obj){
  var o = typeof(obj)=="string" ? document.getElementById(obj) : obj;
  if(o == null) {
	return;
  }
  var dltH = 0;
  //o.innerHTML +=  o.innerHTML;//转为生成时处理
  var currPos = 0;
  setInterval(
			function()
			{
				dltH = o.scrollHeight; //每次移动前要动态计算一次
				var xx = setInterval(
				      	function(){
								  if(++currPos >= (dltH)){currPos=0;}
								  if(currPos%14==0)clearInterval(xx);
								  o.scrollTop = currPos;
								  //window.status = dltH+"curr:"+currPos ;

						}  	, 28 );

			}, 4000 );
}


/**
 * 取号
 * @param row  哪一行
 * @param FG   分隔符
 * @return
 */
function getFromMap(row,FG){
	fw.math.objcetBubbleSort(row,"code");
	ret = "";
	for(var i=0;i<row.length;i++){
		ret = ret+row[i].code+FG;
	}
	if(FG != ""){
		ret = ret.substring(0,ret.length-1);
	}
	return ret;
}

/**
 * 取label
 * @param row  哪一行
 * @param FG   分隔符
 * @return
 */
function getLabelFromMap(row,FG){
	fw.math.objcetBubbleSort(row,"code");
	ret = "";
	for(var i=0;i<row.length;i++){
		ret = ret+ getBallLabel(row[i].code)+FG;
	}
	if(FG != ""){
		ret = ret.substring(0,ret.length-1);
	}
	return ret;
}

function combinContent(map , codeSP,areaSP,flag)
{
	var content = "";
	for(var i=1 ; i<= map.size(); i++)
	{
		row = map.get(i);
		if(row.size() > 0)
		{
			if(flag)
				content += getLabelFromMap(row.values(),codeSP)+ areaSP;
			else
				content += getFromMap(row.values(),codeSP)+ areaSP;
		}
	}
	if(content.length > 0 && areaSP != ""){
		content = content.substring(0,content.length-1);
	}
	return content;
}

var zstShowFlag=0; //全局变量控制走势图显示or隐藏
var trendShowFlag = 0; //全局变量控制遗漏排行显示or隐藏
var trendShowId;//上次打开的ID
//主玩法选择
function changeMenu(n,islong){
	//改变菜单
	var obj = fw.dom.get(trade.selectedTab+"_menu");
	if(obj.className.toLowerCase() == "onlong")
		fw.dom.setObjClass(obj,"offlong");
	else
		fw.dom.setObjClass(obj,"off");
	
	if(islong != null && islong)
		fw.dom.setObjClass(fw.dom.get(n+"_menu"),"onlong");
	else
		fw.dom.setObjClass(fw.dom.get(n+"_menu"),"on");

	//改变第二步的div
	fw.dom.setStyleDisplay(fw.dom.get(trade.selectedTab+"_Div"),"none");
	fw.dom.setStyleDisplay(fw.dom.get(n+"_Div"),"block");

	//交易信息更新
	trade.selectedTab = n;  //当前菜单

	//设置默认玩法
	var sub = tagDefaultPlayTypeMap.get(trade.selectedTab);
	setPlayType(sub);
	
	//隐藏条件追号
	if($("#chaseConditionSetDiv")) {
		if(sub == "rx1") {
			$("#chaseConditionSetDiv").show();
		} else {
			$("#chaseConditionSetDiv").hide();
		}
	}
	 //走势图展开与隐藏
    if(trendShowFlag == 0){
   	   try{  
         	if(typeof(eval(zstHide))=="function"){
            	zstHide();
         	}
       }catch(e){}		
   }else if(trendShowFlag == 3){
   	   try{  
         	if(typeof(eval(openFocusMiss))=="function"){
         		if(!$("#trendBox_"+n+"_2").is(":visible")){
         			openFocusMiss("#trendBox_"+n+"_2",$("#"+n+"_label").find("a").eq(2),3)
         		}
         	}
       }catch(e){}
   }else{
   	   try{  
         	if(typeof(eval(zstShow))=="function"){
            	zstShow(sub);
         	}
       }catch(e){}		 		  
   }
	//隐藏或显示计算器并且清空方案
	if($("#indicator")) {
		var val=$("#isDS").val();//是否是单式上传页面
		if(n == "upload") {
			$("#indicator").hide();
			if(val=="false"){
				clearAllOption();
			}
			$("#isDS").val("true");
			$("#ds").val("true");
		} else {
			if(val=="true"){
				clearAllOption();
			}
			$("#isDS").val("false");
			$("#ds").val("false");
			$("#indicator").show();
		}
	}
	
	showSelectInfo();
}

//玩法选择
function setPlayType(sub){
	//选择信息区
	fw.dom.setStyleDisplay(fw.dom.get(trade.playType+"_label"),"none");
	fw.dom.setStyleDisplay(fw.dom.get(sub+"_label"),"block");
	//显示选号区
	if(fw.dom.get(trade.playType+"_playTypeDiv")) {
		fw.dom.setStyleDisplay(fw.dom.get(trade.playType+"_playTypeDiv"),"none");
	}
	if(fw.dom.get(sub+"_playTypeDiv")) {
		fw.dom.setStyleDisplay(fw.dom.get(sub+"_playTypeDiv"),"block");
	}
	//走势图表区切换
	try{  
       	if(typeof(eval(zstShoworHide))=="function"){
          	zstShoworHide(sub);
       	}
    }catch(e){}		 	
	trade.playType = sub;  //设置当前玩法
	tagDefaultPlayTypeMap.put(trade.selectedTab,trade.playType);   //设置当前玩法为默认
	showSelectInfo();
		//clearNow();
		
	//缩水选项的显示修改
	changeShrinkOptions(sub);

	//设置单式上传的玩法类型
	if(trade.lotteryType == "3" || trade.lotteryType == "102") {//3d&排3
		$("#playTypeDs").val(playTypeValueMap.get(sub));
	}
}

function changeShrinkOptions(sub){
    if(sub=="xzjz"){
        $("#shrinkDIV").show();
    }else{
        $("#shrinkDIV").hide();
    }
}

function initPlayType(pName,pVale,pLabel,pAreaCount,info,pPrize)
{
	playTypeNameMap.put(pName,pLabel);
	playTypeValueMap.put(pName,pVale);
	playTypeLabelMap.put(pVale,pName);
	
	if(pPrize && pPrize != ""){
		playTypePrizeMap.put(pName,pPrize);
	}

	if(info && info !=""){//解析胆拖的关联区信息和号码数量

		var infoMap = new Map ();
		var areaInfo = info.split("#");
		for(var i = 0 ; i< areaInfo.length; i++)
		{
			if(areaInfo[i] != "")
			{
				var tmp = areaInfo[i].split(":"); // 1:1-5
 				var row = new RowInfoBean();
				row.relation = tmp[0].split("-");
				row.min = tmp[1].split("-")[0];
				row.max = tmp[1].split("-")[1];

				infoMap.put(i+1,row);
			}
		}
		playTypeInfoMap.put(pName,infoMap);

	}

	//1#首先预生成每个玩法号码行
	//把原来的div.setAttribute();去掉，以后可通用于FF浏览器  这些map用于存储Ball
	var mainMap = new Map();
	for(var i=1; i<=pAreaCount; i++)
	{
		mainMap.put(i,new Map());
	}
	//装入trade.cbMap
	if(trade.lotteryType != "156"){//快乐8选号只有一个
		trade.cbMap.put(pName,mainMap);
	}else{
		trade.cbMap = mainMap;
	}
	
}



//显示选球区的信息  你选了多少注 多少元
function showSelectInfo(){
	count = getCount();
	if(fw.dom.get("cbProfit")){
		fw.dom.get("cbProfit").innerHTML=0;
	}
	fw.dom.get("cbCount").innerHTML = count;
	if(fw.get("zj") && fw.get("zj").checked
		&& (trade.playType == "fs" || trade.playType == "dt" || trade.playType == "ds"|| trade.playType == "glds" || trade.playType == "xzjz" || trade.playType == "ddshjx")){
		fw.dom.get("cbAmount").innerHTML = count*3;
	}
	else{
		fw.dom.get("cbAmount").innerHTML = count*2;
		if(fw.dom.get("cbProfit") && count*2!=0){ //显示盈利额
			showProfit();
		 }
	}

	if(trade.playType == "xzjz"){//旋转矩阵
		if(trade.lotteryType == "100"){//双色球
			ssqShrink.showShrinkMoney();
		} else if(trade.lotteryType == "1") {//大乐透
			dltShrink.showShrinkMoney();
		}
	}
}
//显示选单区里面的金额
function showInLineInfo(){
	//检查是否幸运选号并转化投注列表
	checkLuckyToConver();

	var count = 0;
	var amount = 0;
	var multiple = fw.get("multipleDG").value;

	for(var i=0;i<trade.contentList.length;i++){
		var bean = trade.contentList[i];
		count += bean.baseCount;
		if( bean.add ==1)
			amount += bean.baseCount*3*parseInt(multiple, 10);
		else
			amount += bean.baseCount*2*parseInt(multiple, 10);
	}

	if(trade.lotteryType == 156 && fw.dom.get("feiPan").checked ){//飞盘
		amount =amount*2;
	}
	if(trade.lotteryType == 100 && fw.dom.get("totalPrice")) {//双色球追号套餐
		fw.dom.get("betCountInfo").innerHTML = count;
		fw.dom.get("priceInfo").innerHTML = amount * fw.dom.get("totalTermInfo").innerHTML;
		fw.dom.get("totalPrice").innerHTML = fw.dom.get("priceInfo").innerHTML * fw.dom.get("multipleInfo").innerHTML;
	}
	
	//判断是否幸运选号并赋值
	if(fw.get("luckyType")){
		var area=$("#luckyType").val();
		if(area==1){
			fw.dom.get("inFateLineCount").innerHTML = count;
			fw.dom.get("inFateLineAmount").innerHTML = amount;
		}else{
			fw.dom.get("inProLineCount").innerHTML = count;
			fw.dom.get("inProLineAmount").innerHTML = amount;
		}
	}
	
	fw.dom.get("inLineCount").innerHTML = count;
	fw.dom.get("inLineAmount").innerHTML = amount;
	
	if(fw.get("inLineCheapAmount")) {
		fw.dom.get("inLineCheapAmount").innerHTML = parseFloat(amount * 0.92).toFixed(2);
	}

	//显示追号里面的金额--普通追号
	showChaseInfo();
	if(fw.get("buyTypeZh") && fw.get("buyTypeZh").checked){
		gainfun();
	}
	//显示追号里面的金额--智能追号
	if(fw.get("buyTypeZz") && fw.get("buyTypeZz").checked){
		gainfun_zz();
	}
	
	//获取停止追号的奖金
	getChaseStopPrize();
}

/**
  根据投注内容获取总奖金
  1.浮动奖金 默认1000
  2.同玩法选择多注，计算一个奖金
*/
function calculateTotalPrize() {
	//检查是否幸运选号并转化投注列表
	checkLuckyToConver();

	var totalPrize = 0;
	var playTypeMap = new Map();

	playTypeMap.clear();

	if (trade.lotteryType == 103 || trade.lotteryType == 105 ||
		trade.lotteryType == 1 || trade.lotteryType == 100 ||
		trade.lotteryType == 2 || trade.lotteryType == 101) {//华东15选5 or 东方6+1 or 大乐透 or 双色球 or 七星彩 or 七乐彩
		totalPrize = 1000;
	} else {	//以最低奖金计算
		var minPrize = 0;
		for(var i=0;i<trade.contentList.length;i++){
			var bean = trade.contentList[i];
			var playType = bean.playType;
			
			if(playTypeMap.containsKey(playType) && trade.lotteryType!=56 && trade.lotteryType!=102) {
				continue;
			}
			var prize = 0;			
			if(typeof(getOverridePrize) == "function"){//根据彩种实现的方法获取玩法金额 （判断是否实现当前方法）
				prize = getOverridePrize(bean);//	
			}else{
				prize = playTypePrizeMap.get(playType);	
			}
			if(minPrize > prize || minPrize == 0){
				minPrize = prize;
			}
			//totalPrize += prize;

			playTypeMap.put(playType,playType);
		}
		totalPrize = minPrize;
	}
	return totalPrize;
}

//关闭遮盖层,显示内容层 
function hideBackground() {
	try{
		$("#loadHintDIV").hide();
		$("#loadHintBgDIV").hide();
		$("#contentDIV").show();
	}catch(e){}
}

/**********************追号套餐 start**********************/
function submitZhPackage(){
	if(isSubmit)return false;
	isSubmit = true;

	var chaseType = $(":radio[name='chaseTypeRadio'][checked]").val()//投注方式

	if(chaseType != 2) {//非机选才检查投注内容
		if(trade.contentList.length == 0){
			cll_alert("投注内容为空！");
			isSubmit = false;
			return;
		}
	}

	//玩法:选号~玩法:选号
	var content = "";
	var playType = 0;
	var playTypeTemp = 0;
	var isHt = false;
	var baseCount = 0;
	for(var i=0;i<trade.contentList.length;i++){
		var bean = trade.contentList[i];
		if(playTypeTemp == 0){
			playTypeTemp = bean.playType;
		}
		if(playTypeTemp != bean.playType){
			isHt = true;
		}

		content = content + playTypeValueMap.get(bean.playType) +":"+bean.content+"~";
		baseCount += bean.baseCount;
	}
	content = content.substring(0,content.length-1);
	if(isHt){
		playType = "0";
	}else{
		playType = playTypeValueMap.get(playTypeTemp);
	}
	
	if(chaseType == 2) {//机选
		playType = 1;//单式
	}

	fw.get("multiple").value = fw.get("multipleSelect").value;
	fw.get("amounts").value = fw.get("totalPrice").innerHTML/fw.get("totalTermInfo").innerHTML;
	fw.get("amount").value = fw.get("totalPrice").innerHTML;
	fw.get("totalTerm").value = fw.get("totalTermInfo").innerHTML;
	fw.get("chaseType").value = chaseType;
	fw.get("stopCondition").value = fw.get("stopConditionSelect").value;
	fw.get("lotType").value = trade.lotteryType;
	fw.get("playType").value = playType;
	fw.get("content").value = content;
	
	/*alert("multiple=" + fw.get("multiple").value);
	alert("amounts=" + fw.get("amounts").value);
	alert("amount=" + fw.get("amount").value);
	alert("totalTerm=" + fw.get("totalTerm").value);
	alert("chaseType=" + fw.get("chaseType").value);
	alert("stopCondition=" +fw.get("stopCondition").value);
	alert("lotType=" + fw.get("lotType").value);
	alert("playType=" + fw.get("playType").value);
	alert("content=" + fw.get("content").value);*/
	
	document.tradeForm.action = "/trade/zhp.php";
	
	var totalAmount = fw.get("amount").value;
	var confStr = "";
	//if(totalAmount >= 300) {
		//confStr = "您追号总金额为"+ totalAmount +"元，享受9.5折，实际扣款"+ parseFloat((totalAmount*0.95)).toFixed(2) +"元，恭祝您中奖！";
	//} else {
		confStr = "您追号总金额为"+ totalAmount +"元，恭祝您中奖！";
	//}

	cll_confirm(confStr,
		function(){
			var json = {
				url : document.tradeForm.action,
				form : document.tradeForm,
				onsuccess : tradeZhPackageBack,
				onfail : function (){
					cll_alert("提交失败！");
					isSubmit = false;
				}
			};
			json.charset="GBK";
			fw.ajax.request(json);
		},
		function(){
			isSubmit = false;
			return;
	});
}

function tradeZhPackageBack(o){
	isSubmit = false;
	var json = eval("(" + o + ")");
	cll_alert(json.message);
	if(json.code == "0")
	{
		//todo
	}
}
/**********************追号套餐 end**********************/


/******************* 初始化选号投注列表 begin *****************************/
//旧版投注框
function tradeSelectInit(id){
	tradeSelectInitInner(id,"tradeListDIV");
}

//新版投注框
function tradeSelectInitNew(id){
	tradeSelectInitInner(id,"");
}

function tradeSelectInitInner(id,className) {
	var $fid = function(id){return document.getElementById(id);};
	var getB = function(ua) {
        var b = { msie: /msie/.test(ua) && !/opera/.test(ua),
            opera: /opera/.test(ua),
            safari: /webkit/.test(ua) && !/chrome/.test(ua),
            firefox: /firefox/.test(ua),
            chrome: /chrome/.test(ua)
        };
        var vMark = "";
        for (var i in b) {
            if (b[i]) { vMark = "safari" == i ? "version" : i; break; }
        }

        b.version = vMark && RegExp("(?:" + vMark + ")[\\/: ]([\\d.]+)").test(ua) ? RegExp.$1 : "0";
        b.ie = b.msie;
        b.ie6 = b.msie && parseInt(b.version) == 6;
        b.ie7 = b.msie && parseInt(b.version) == 7;
        b.ie8 = b.msie && parseInt(b.version) == 8;
        return b;
    }
	var b = getB(navigator.userAgent.toLowerCase());
	var div = $fid(id);
	if(div == null) {
		return;	
	}
	if(className != "" && className != null) {
		div.className = className;
	}
	div.onmouseover = function(){this.style.border = "1px solid #1f78cb";};
	div.onmouseout = function(){this.style.border = "1px solid #7f9db9";};
	var table = null;
	if(b.ie6 || b.ie7)
		table = document.createElement("<TABLE border=0 cellpadding=0 cellspacing=0>");
	else{
		table = document.createElement("TABLE");
		table.setAttribute("border","0");
		table.setAttribute("cellpadding","0");  
    	table.setAttribute("cellspacing","0");
    }
    table.className = "tradeListTable";
    var tbody = document.createElement("TBODY");
    table.appendChild(tbody);
	div.appendChild(table);
	
	div.options = new Array();
	div.length = 0;
	div.selected = false;
	var changeIndex = function(){
		for(var j=0;i<div.length;j++){
			div.index.innerHTML = (j+1);
		}
		return;
	}
	div.remove = function(index){ 
		if(isNaN(index)||index>this.length){return false;};
		for(var i=0,n=0;i< div.options.length;i++)
			if(div.options[i]!=div.options[dx])
		   		div.options[n++]=div.options[i];
		div.options.length-=1;
		div.length = div.options.length;
		return;
	}
	div.removeItem = function(obj){
		if(obj == null){return false;};
		var index = -1;
		for(var i=0,n=0;i<div.options.length;i++){ 
			var op = div.options[i];
		    if(op!=obj) 
		        div.options[n++]=op;
		    else if(op==obj)
		    	index = i;
		}
		div.options.length-=1;
		div.length = div.options.length;
		return index;
	}
	div.removeAll = function(){
		for(var i=div.options.length-1;i>=0;i--){
			var item = div.options[i];
			tbody.removeChild(item);
			div.removeItem(item);
		}
		div.length = 0;
		nameMaxWidth = 0;
		return;
	}
	var nameMaxWidth = 0;
	var hasScroll = false;
	var divWidth = div.offsetWidth;
	var setMaxWidth = function(){
		if(b.firefox || b.ie6 || b.ie7){
			hasScroll = (div.scrollHeight > div.clientHeight);
		}	
		if(hasScroll && (b.ie6 || b.ie7)){
			table.style.width = (divWidth - 20) + "px";
		}else{
			table.style.width = "100%";
		}
		for(var i=0;i<div.length;i++){
			div.options[i].nameTD.style.width = (nameMaxWidth + 8) + "px";
			if(b.firefox){
				div.options[i].numDIV.style.width = (divWidth - nameMaxWidth - 40 - (hasScroll?20:0)) + "px";
			}
		}
		return;
	}
	var getWidth = function(item){
		var w = item.nameTD.name.offsetWidth;
		if(nameMaxWidth < w)
			nameMaxWidth = w;
		return;
	}
	var getMaxWidth = function(){
		for(var i=0;i<div.length;i++){
			getWidth(div.options[i]);
		}
		return;
	}
	div.options.add = function(obj){
		var isDel = true;//是否删除
		try {
			if(obj.isDel == undefined || obj.isDel == true) {
				isDel = true;
			} else {
				isDel = false;
			}
		} catch (e) {
			isDel = true;
		}

		var value = obj.text.split(':');
		if(value == null || value.length == 1){
			value = new Array();
			value[0] = "";
			value[i] = obj.text;
		}
		var item = document.createElement("TR");
		item.op = obj;
		item.value = obj.value;
		item.text = obj.text;
		item.className = "tradeListItemTR";
		item.title = obj.text;
		
		var nameTD = document.createElement("TD");
		nameTD.className = "nameTD";
		var name = document.createElement("label");
		name.innerHTML = value[0] + ":";
		nameTD.appendChild(name);
		item.appendChild(nameTD);
		item.nameTD = nameTD;
		item.nameTD.name = name;
		
		var numTD = document.createElement("TD");
		numTD.className = "numTD";
		var numDIV = document.createElement("DIV");
		numDIV.innerHTML = value[1];
		numDIV.className = "numD";
		numTD.appendChild(numDIV);
		item.appendChild(numTD);
		item.numTD = numTD;
		item.numDIV = numDIV;
		
		if(isDel) {
			var delTD = document.createElement("TD");
			delTD.className = "delTD";
			var font = document.createElement("FONT");
			font.className = "del";
			font.onmouseover = function(){this.className='del-h';};
			font.onmouseout = function(){this.className='del';};
			font.title = "删除";
			font.onclick = function(){
				var fn = function(){
					var w = item.nameTD.name.offsetWidth;
					tbody.removeChild(item);
					var index = div.removeItem(item);
					try {
						if(index > -1){
							trade.contentList.splice(index,1);
						}
						showInLineInfo();
					}catch(e){}
					if(nameMaxWidth <= w){
						nameMaxWidth = 0;
						getMaxWidth();
						setMaxWidth();
					}
					return;
				};
				fn();
				//cll_confirm("确定要删除 <b style='color:#ff0000;font-size:14px;'>" + item.text + "</b> 吗?",fn,null);
				return;
			}
			item.appendChild(delTD);
			delTD.appendChild(font);
		}

		item.onmouseover = function(){
			this.className="tradeListItemTR-hover";
		};
		item.onmouseout = function(){
			this.className="tradeListItemTR";
		};
		div.options.push(item);
		div.length = div.options.length;
		tbody.appendChild(item);
		
		getWidth(item);
		setMaxWidth();
		return;
	}
	return div;
}
/******************* 初始化选号投注列表 end *****************************/


/******************* 初始化选号投注列表老足彩 begin *****************************/
function tradeSelectjcInit(id,type){
	var $fid = function(id){return document.getElementById(id);};
	var getB = function(ua) {
        var b = { msie: /msie/.test(ua) && !/opera/.test(ua),
            opera: /opera/.test(ua),
            safari: /webkit/.test(ua) && !/chrome/.test(ua),
            firefox: /firefox/.test(ua),
            chrome: /chrome/.test(ua)
        };
        var vMark = "";
        for (var i in b) {
            if (b[i]) { vMark = "safari" == i ? "version" : i; break; }
        }

        b.version = vMark && RegExp("(?:" + vMark + ")[\\/: ]([\\d.]+)").test(ua) ? RegExp.$1 : "0";
        b.ie = b.msie;
        b.ie6 = b.msie && parseInt(b.version) == 6;
        b.ie7 = b.msie && parseInt(b.version) == 7;
        b.ie8 = b.msie && parseInt(b.version) == 8;
        b.ie9 = b.msie && parseInt(b.version) == 9;
        return b;
    }
	var b = getB(navigator.userAgent.toLowerCase());
	var div = $fid(id);
	if(div == null) {
		return;	
	}
	div.className = "tradeListDIV_";
	div.onmouseover = function(){this.style.border = "1px solid #1f78cb";};
	div.onmouseout = function(){this.style.border = "1px solid #7f9db9";};
	var table = null;
	if(b.ie8 || b.ie6 || b.ie7){
		table = document.createElement("<TABLE border=0 cellpadding=0 cellspacing=0 >");
	}else{
		table = document.createElement("TABLE");
		table.setAttribute("border","0px");
		table.setAttribute("cellpadding","0px");  
    	table.setAttribute("cellspacing","0px");
    }
    table.className = "tradeListTable";
    var colgroup = document.createElement("colgroup");
    if(type=="fb6cbq"){
    	 $(colgroup).append('<col width="38"/><col width="38"/><col width="38"/><col width="38"/><col width="38"/>' +
	                        '<col width="38"/><col width="38"/><col width="38"/><col width="38"/><col width="38"/>' +
	                         '<col width="38"/><col width="38"/><col width="38"/><col width="0"/>');
    }else if(type=="fbjq4"){
    	 $(colgroup).append('<col width="62"/><col width="46"/><col width="46"/><col width="46"/><col width="46"/>' +
	                        '<col width="46"/><col width="46"/><col width="46"/><col width="46"/>' +
	                         '<col width="0"/>');
    }else{
	    $(colgroup).append('<col width="38"/><col width="38"/><col width="38"/><col width="38"/><col width="38"/>' +
	                        '<col width="38"/><col width="38"/><col width="38"/><col width="38"/><col width="38"/>' +
	                         '<col width="38"/><col width="38"/><col width="38"/><col width="38"/><col width="38"/><col width="0"/>');
	}
     table.appendChild(colgroup);
     
    var tbody = document.createElement("TBODY");
    table.appendChild(tbody);
	div.appendChild(table);
	
	div.options = new Array();
	div.length = 0;
	div.selected = false;
	var changeIndex = function(){
		for(var j=0;i<div.length;j++){
			div.index.innerHTML = (j+1);
		}
		return;
	}
	div.remove = function(index){ 
		if(isNaN(index)||index>this.length){return false;};
		for(var i=0,n=0;i< div.options.length;i++)
			if(div.options[i]!=div.options[dx])
		   		div.options[n++]=div.options[i];
		div.options.length-=1;
		div.length = div.options.length;
		return;
	}
	div.removeItem = function(obj){
		if(obj == null){return false;};
		var index = -1;
		for(var i=0,n=0;i<div.options.length;i++){ 
			var op = div.options[i];
		    if(op!=obj) 
		        div.options[n++]=op;
		    else if(op==obj)
		    	index = i;
		}
		div.options.length-=1;
		div.length = div.options.length;
		return index;
	}
	div.removeAll = function(){
		for(var i=div.options.length-1;i>=0;i--){
			var item = div.options[i];
			tbody.removeChild(item);
			div.removeItem(item);
		}
		div.length = 0;
		nameMaxWidth = 0;
		return;
	}
	var nameMaxWidth = 0;
	var hasScroll = false;
	var divWidth = div.offsetWidth;
	var setMaxWidth = function(){
		hasScroll = (div.scrollHeight > div.clientHeight);
		var _divWidth = divWidth - 4;
		if(hasScroll) _divWidth += 18;
		$(div).width(_divWidth);
		if(hasScroll)
			table.style.width = (_divWidth - 18) + "px";
		else
			table.style.width = "100%";
		
		for(var i=0;i<div.length;i++){
			var tableSize="38";
			if(type=='fbjq4') tableSize="62";
			else if(type=='fb6cbq')tableSize="38";
			div.options[i].nameTD.style.width = tableSize+"px";
		}
		
		return;
	} 
	var getWidth = function(item){
		var w = item.nameTD.name.offsetWidth;
		if(nameMaxWidth < w)
			nameMaxWidth = w;
		return;
	}
	var getMaxWidth = function(){
		for(var i=0;i<div.length;i++){
			getWidth(div.options[i]);
		}
		return;
	}
	div.options.add = function(obj){
		var isDel = true;//是否删除
		try {
			if(obj.isDel == undefined || obj.isDel == true) {
				isDel = true;
			} else {
				isDel = false;
			}
		} catch (e) {
			isDel = true;
		}

		var value = obj.text.split(':');
		if(value == null || value.length == 1){
			value = new Array();
			value[0] = "";
			value[1] = obj.text;
		}
		var item = document.createElement("TR");
		item.op = obj;
		item.value = obj.value;
		item.text = obj.text;
		item.className = "tradeListItemTR";
		item.title = obj.text;
		
		var nameTD = document.createElement("TD");
		nameTD.className = "nameTD";
		var name = document.createElement("label");
		name.innerHTML = value[0];
		nameTD.appendChild(name);
		item.appendChild(nameTD);
		item.nameTD = nameTD;
		item.nameTD.name = name;
		
		//组装内容
		var context=value[1].split(',');
		for(var n=0;n<context.length;n++){
			var numTD = document.createElement("TD");
			numTD.className = "numTD";
    		if(type=="fbjq4")
    			numTD.style.width = "45px";
    	 	else
    	 		numTD.style.width = "37px";
			var numDIV = document.createElement("DIV");
			numDIV.innerHTML = context[n];
			numDIV.className = "numD";
			numDIV.style.border = "0px";
			numTD.appendChild(numDIV);
			item.appendChild(numTD);
			item.numTD = numTD;
			item.numDIV = numDIV;
		}
		
		var deldiv = null;
		if(isDel) {
			//修改
			deldiv = document.createElement("div");
			deldiv.className="delDIV";
			deldiv.style.border = "0px";
			//var delTD = document.createElement("TD");
			//delTD.className = "delTD";
			var font = document.createElement("FONT");
			font.className = "del";
			font.onmouseover = function(){this.className='del-h';};
			font.onmouseout = function(){this.className='del';};
			font.title = "删除";
			font.onclick = function(){
				var fn = function(){
					var w = item.nameTD.name.offsetWidth;
					tbody.removeChild(item);
					var index = div.removeItem(item);
					try {
						if(index > -1){
							trade.contentList.splice(index,1);
						}
						showInLineInfo();
					}catch(e){}
					if(nameMaxWidth <= w){
						nameMaxWidth = 0;
						getMaxWidth();
						setMaxWidth();
					}
					return;
				};
				fn();
				//cll_confirm("确定要删除 <b style='color:#ff0000;font-size:14px;'>" + item.text + "</b> 吗?",fn,null);
				return;
			}
			
			var delTD = document.createElement("TD");
			delTD.className = "delTD";
			delTD.style.width = "0px";
			if(b.ie6) delTD.innerHTML = "&nbsp;";
			item.appendChild(delTD);
			delTD.appendChild(deldiv);
			deldiv.appendChild(font);
			item.font = font;
		}

		item.onmouseover = function(){
			this.className="tradeListItemTR-hover";
			var top = $(this).offset().top;
			var top_del = $(this.font).offset().top;
			if(!b.ie6 && (top_del - top != 2))
				$(deldiv).css("margin-top",(2 - $(div).scrollTop()) + "px");
			if(b.ie6)
				$(item.font).width($(item.font).width());
		};
		item.onmouseout = function(){
			this.className="tradeListItemTR";
		};
		div.options.push(item);
		div.length = div.options.length;
		tbody.appendChild(item);
		
		getWidth(item);
		setMaxWidth();
		return;
	}
	return div;
}
/******************* 初始化选号投注列表老足彩 end *****************************/


/******************* 条件追号相关js start *****************************/
//选择追号条件的类别
function selectChaseCondition(type) {
	var cbMiss = $("#cbMiss");
	var cbFollow = $("#cbFollow");
	var missValueDiv = $("#missValueDiv");
	var followValueDiv = $("#followValueDiv");
	var chaseConditionTip = $("#chaseConditionTip");
	
	if(type == 1) {//按遗漏
		if(cbMiss.attr("checked")){
			missValueDiv.show();
			cbFollow.removeAttr("checked");
			followValueDiv.hide();
			chaseConditionTip.show();
		} else {
			missValueDiv.hide();
			chaseConditionTip.hide();
			$("#startCondition").val("");
		}
	} else {//按跟随
		if(cbFollow.attr("checked")){
			followValueDiv.show();
			cbMiss.removeAttr("checked");
			missValueDiv.hide();
			chaseConditionTip.show();
		} else {
			followValueDiv.hide();
			chaseConditionTip.hide();
			$("#startCondition").val("");
		}
	}
}

//更新用户所选的遗漏值
function updateSelectMiss() {
	var selectMissObj = $("#selectMiss");
	var miss = selectMissObj.val();
	if(isNaN(miss) || miss<0 || miss.toString().indexOf(".")!=-1 || miss==""){
		cll_alert(" 遗漏区间必须为大于等于0的整数 ");
		selectMissObj.val("0");
	}
}

//设置追号条件
function setChaseCondition(content) {
	if(fw.get("startCondition")) {
		if(fw.get("cbMiss") && fw.get("cbFollow")) {
			if(fw.get("cbMiss").checked){
				var selectMiss = fw.get("selectMiss").value;
				var contents = content.split("~");
				var result = "";
				for(var i = 0; i< contents.length; i++) {
					var temp = contents[i].split(":");
					if(temp[0] == 50) {//只针对前1
						result = result + temp[1] + ",";
					}
				}
				result = result.substring(0,result.length-1);
				fw.get("startCondition").value = "1:" + result + "#" + selectMiss;
			}
			if(fw.get("cbFollow").checked) {
				var selectFollow = fw.get("selectFollow").options[fw.get("selectFollow").selectedIndex].text;
				fw.get("startCondition").value = "2:" + selectFollow + "#0";
			}
		}else {
			fw.get("startCondition").value = "";
		}
	}
	//盈利条件设置
	if(fw.get("gainCondition")){
		if (fw.get("syType1") && fw.get("syType3")){
			var gainCondition = "";
			if(fw.get("syType1").checked){
				var minWinFund = $("#minWinFund").val();
				if(minWinFund == "" || minWinFund == null){
					minWinFund = -1;
				}
				var minRate = $("#minRate").val();
				if(minRate == "" || minRate == null){
					minRate = -1;
				}
				gainCondition = "3:"+minWinFund+"#"+minRate;
			}
			if(fw.get("syType3").checked) {
				var qi = $("#qi").val();
				if(qi == "" || qi == null){
					qi = -1;
				}
				var qgain = $("#qgain").val();
				if(qgain == "" || qgain == null){
					qgain = -1;
				}
				var hgain = $("#hgain").val();
				if(hgain == "" || hgain == null){
					hgain = -1;
				}
				gainCondition = "4:"+qi+"#"+qgain+"#"+hgain;
			}
			fw.get("gainCondition").value = gainCondition;
	     }
     }
}
/******************* 条件追号相关js end *****************************/

//检查是否幸运选号并转化投注列表
function checkLuckyToConver() {
	if(fw.get("luckyType")){
		var area=$("#luckyType").val();
		if(area==1){
			//返回一个新数组
			trade.contentList=null;
			trade.contentList=new Array();
			len=trade.contentListFast.length;
			if(trade.contentListFast.length>0){
				trade.contentList=trade.contentListFast.slice(0,len);
			}
			fw.dom.get("inLineCount").innerHTML=fw.dom.get("inFateLineCount").innerHTML;
			fw.dom.get("inLineAmount").innerHTML=fw.dom.get("inFateLineAmount").innerHTML;
		}else{
			//返回一个新数组
			trade.contentList=null;
			trade.contentList=new Array();
			len=trade.contentListPerson.length;
			if(trade.contentListPerson.length>0){
				trade.contentList=trade.contentListPerson.slice(0,len);
			}
			fw.dom.get("inLineCount").innerHTML=fw.dom.get("inProLineCount").innerHTML;
			fw.dom.get("inLineAmount").innerHTML=fw.dom.get("inProLineAmount").innerHTML;
		}
	}
}

//大透乐追加幸运玩法
function checkzjCount(){
	if(fw.get("luckyType")){
		var area=$("#luckyType").val();
		var play=$("#fastValue").val();  //获取玩法
		if(area==1){
			var temp=fatePrize[play].split("|");
			count=parseInt(temp[0],10);
			amount=parseInt(temp[1],10);
			var multipleDG=$("#multipleDG").val();
			$("#inFateLineCount").html(count);
			$("#inFateLineAmount").html(count*multipleDG*3);
		}else{
			count=1;
			var multipleDG=$("#multipleDG").val();
			$("#inProLineCount").html(count);
			$("#inProLineAmount").html(count*multipleDG*3);
		}
	}
}

/***************************个性化选择*************************************/




	function stringToBytes ( str ) {  
		  var ch, st, re = [];  
		  for (var i = 0; i < str.length; i++ ) {  
			ch = str.charCodeAt(i);  // get char    
			st = [];                 // set up "stack"   
			do {  
			  st.push( ch & 0xFF );  // push byte to stack   
			  ch = ch >> 8;          // shift value down by 1 byte   
			}    
			while ( ch );  
			// add stack contents to result   
			// done because chars have "wrong" endianness   
			re = re.concat( st.reverse() );  
		  }  
		  // return an array of bytes   
		  return re;  
	}  
	

isSubmit = false;
var c=0;
var personCount=0;
var totalCount=0;
function person_Inser(){
	isSubmit=true;  //判断执行完成再可以操作删除功能
	$("#btn_show").hide();
	$("#btn_disable").show();
	c=0; //初始化
	totalCount=0;
	trade.contentListPerson=null;
	trade.contentListPerson = new Array();//选单区列表
	//清空数据
	fw.dom.get("tradeListPerson").removeAll();
	$("#personality_result_common").hide();
	if(person.listContent.length == 0){
		cll_alert("选择项为空！");
		isSubmit = false;
		return false;
	}
	
	var pro = $("#pro");
	pro.find(".proBg").width(0);
	pro.show();
	var len=person.listContent.length;
	var width = pro.find(".proDIV").width();
	$(pro).attr("tag",width / len);
	pesonContent_inner(len,trade.lotteryType);
}
var chidlreTime;
function pesonContent_inner(len,lotteryTypes){
	personCount++;
	if(personCount>len){
		personCount=0;
		clearTimeout(showTime);
		clearTimeout(chidlreTime);
		$("#pro").hide();
		$("#btn_disable").hide();
		$("#btn_show").slideDown("normal");
		isSubmit=false;
		if(c<=0){
			$("#personality_result_common").hide();
			cll_alert("没有正确填写选择项!");
			return ;
		}else{
			$("#personality_result_common").slideDown("normal");//.show("slow");
			//请求数据库
			
			$.post(ctx_jsonp+"/interface/random?personCount=1&totalCount="+totalCount+"&lotteryType="+lotteryTypes+"&T="+ (new Date().getTime()),
				function(xmldom){
				
					var val=xmldom.split("~")
					var lens=val.length;
					var type_="";
					if(lotteryTypes==100){
						type_=6;
					}else if(lotteryTypes==1){
						type_=5;
					}
					for(var n=0;n<lens;n++){
						var sv=val[n];
						var i=n+1;
						addOption(sv,type_,i,2)
						
						//获取内容
						getContent(type_,0,"common_num_person",2)
						
						//显示金额
						totalPrize("",2);
					}
				}
			);
			
		}
		return ;
	}
	var i=personCount-1;
	//执行数据
	var beans_=person.listContent[i];
	var code=beans_.code;
	var status=beans_.status;
	var click=beans_.click;
	var content=beans_.content;
	var div=beans_.divs;
	//生日默认数据
	$(div).text("正在分析...");
	changeCSS(div,"error"); 
	var txt="";
	var cs="";
	if(click==0 || code==1){
		c++;
  		txt="分析完成";
		cs="ok"; 
		//计算数据
		if(code==1){
			totalCount +=parseInt(totalNum(code,"")+code,10);
		}else if(code==2){
			totalCount +=parseInt(parseInt(content,10)+code,10);// totalNum(code,content);
		}else if(code==3){
			totalCount +=parseInt(totalNum(code,content)+code,10);
		}else if(code==4){
			totalCount +=parseInt(totalNum(code,content)+code,10);
		}else if(code==5){
			totalCount +=parseInt(totalNum(code,content)+code,10);
		}else if(code==6){
			totalCount +=parseInt(totalNum(code,content)+code,10);
		}else if(code==7){
			totalCount +=parseInt(parseInt(content,10)+code+1,10);
		}
		//alert("totalCount:"+totalCount);
	}else{
		if(code==2 || code==7){
			txt="您还未选择";
		}else{
			txt="输入格式有误";
		}
		cs="error";
		
	}
	
	chidlreTime=setTimeout("csstext('"+div+"','"+txt+"','"+cs+"')",800);
	
	var pro = $("#pro");
	var width = pro.attr("tag");
	width = width *  personCount;
	var _w = pro.find(".proDIV").width();
	if(width > _w)
		width = _w;
	pro.find(".proBg").animate({width: width}, 800);
	showTime=setTimeout("pesonContent_inner("+len+","+lotteryTypes+")", 1000);
}

//检查样式
function csstext(div,txt,cs){
	   $(div).text(txt);
	   changeCSS(div,cs); 
}


//个性选号
function personSelect(_target,_target2){
	isSubmit=false;
	var play=$(_target).children("i").attr("attr");
	var num=personType[play];
	if($(_target).children("i").attr("class")=="current"){
		$(_target).children("i").removeClass("current");
		$(_target2).slideUp("normal");
		commonDelContent(num,1,"");
		
	}else{
		if(num==1)birthdayOK=true;
		
		$(_target).children("i").addClass("current");
		if($(_target2).is(":hidden")){
	 		$(_target2).slideDown("normal");
		}else{
			$(_target2).slideDown("normal");
		}
		var bean=new personBean();
		bean.code=num;
		bean.status=1;
		bean.click=1;
		bean.content=null;
		var div=_target2+"_hint";
		bean.divs=div;
		person.listContent.push(bean);
		$("#condition_area_common").slideDown("normal");
		$(".make_area").slideDown("normal");
	}
	
}

//删除
function delOption(_target){
	if(isSubmit){
		return ;
	}
	
	$(_target).parent().slideUp("normal");
	$("#" + $(_target).parent().attr("id") + "Btn").children("i").removeClass("current");
	var num=$("#" + $(_target).parent().attr("id") + "Btn").children("i").attr("attr");
	commonDelContent(num,1,"");
	
}
//删除所有
function delAllOption(){
	
	var len=$("#personality_common").children("a").length;
	if(len>0){
		$("#personality_common>a>i").each(function(c, divEle){
			if($(divEle).attr("class")=="current"){
				$(divEle).removeClass("current")
				var id=$(divEle).parent().attr("id");
				var l=id.length;
				id=id.substring(0,l-3);
				//$("#"+id).slideUp("normal");
				$("#"+id).hide();
			}
		});
	}
	//清除子选项
	if(person.listContent.length>0){
	   for(var i=0;i<person.listContent.length;i++){
	   		var beans_=person.listContent[i];
			var code=beans_.code;
			var div=beans_.divs;
			
			var hint = div;
			div=div.substring(0,div.length-5);
			if(code==2 || code==7){
				for(n=1;n<=12;n++){
					$(div+n).attr("class" , '');
				}
			}else{
				var txt=$(div+"_txt");
				if(code!=1){
					txt.val("");
				}
			}
			//还原初始条件
			cleerAll(hint,code);
	   }
	}
	
	$("#condition_area_common").slideUp("normal");
	$(".make_area").slideUp("normal");
	
	person.listContent=null;
	person.listContent =new Array();
	
	
	
	
}
function childrenSelect(_target,type){
	var num=$("#" + _target+ "Btn").children("i").attr("attr"); //获取父级
	num=parseInt(num,10);
	var value="";
	if(num==2 || num==7){
		for(var i=1; i<=12; i++)
	     {
	     	if(i == type){
		     	$("#"+_target + i ).attr("class" , 'on');
		     	value=$("#"+_target + i ).attr("attr");
		     	commonDelContent(num,2,value);
	     	}else{
	     		$("#"+_target + i ).attr("class" , '');
		     	
	     	}
	     }
	}
	
}
//删除集合中存在的bean
function commonDelContent(num,type,cont){
	//type 1删除 2 更新 3input 
	//取消集合中存在的数字
	if(person.listContent.length>0){
			//返回一个新数组
			len =person.listContent.length;
			listContent = new Array();
			listContent=person.listContent.slice(0,len);
			person.listContent=null;
			person.listContent = new Array();
			for(var i=0;i<len;i++){
				var beans_=listContent[i];
				var code=beans_.code;
				var status=beans_.status;
				var click=beans_.click;
				var content=beans_.content;
				var div=beans_.divs;
				var bean=new personBean();
					bean.code=code;
					bean.status=status;
					bean.divs=div;
					if(type==2 && num==code){
						bean.content=cont;
						bean.click=0;
					}else if(type==3){
						bean.click=0;
					}else{
						bean.content=content;
						bean.click=click;
					}
				if(num!=code){
					//移除
					person.listContent.push(bean);
				}else{
					if(type==1){
						var hint=div.substring(0,div.length-5);
						if(code==2 || code==7){
							for(n=1;n<=12;n++){
								$(hint+n).attr("class" , '');
							}
						}else{
							var txt=$(hint+"_txt");
							if(code!=1){
								txt.val("");
							}
						}
						cleerAll(div,num);
					}
				}
				if((type ==3 ||type==2) && num==code){
					person.listContent.push(bean);
					//参数值变更
					var html="输入正确";
					if(code==2 || code==7){
						html="已选择";
					}
					$(div).removeClass("error");
					$(div).addClass("ok");
					$(div).html(html);
				}
				
			}
		}
		
		
			if(person.listContent.length==0){
				$("#condition_area_common").hide();
				$(".make_area").hide();
			}
		
}

//条件错误处理
function commonContentfalse(num,type,cont){
	//type 1返值
	//取消集合中存在的数字
	if(person.listContent.length>0){
			//返回一个新数组
			len =person.listContent.length;
			listContent = new Array();
			listContent=person.listContent.slice(0,len);
			person.listContent=null;
			person.listContent = new Array();
			for(var i=0;i<len;i++){
				var beans_=listContent[i];
				var code=beans_.code;
				var status=beans_.status;
				var click=beans_.click;
				var content=beans_.content;
				var div=beans_.divs;
				var bean=new personBean();
					bean.code=code;
					bean.status=status;
					bean.divs=div;
					if(type==1 && num==code){
						bean.content="";
						bean.click=1;
					}else{
						bean.content=content;
						bean.click=click;
					}
					//移除
					person.listContent.push(bean);
			}
		}
		
}

//验证内容

function changeCSS(hint,css){
	var obj = $(hint);
	if(css == "error"){
		obj.removeClass("ok");
		obj.addClass("error");
		return;
	}
	obj.removeClass("error");
	obj.addClass("ok");
	return;
}

//手机号码验证
function validMobile(){
   var num=$("#telphoneBtn").children("i").attr("attr"); //获取父级
   var val = $("#telphone_txt").val();	
   var hint = "#telphone_hint" ;
   if(val ==""){
     telphoneOK = false;
     commonContentfalse(num,1,val);
     return;
   }
   //验证手机是否数字
   if(!fw.re.isMobile(val)){
   	 $(hint).text("输入格式错误!");
	 changeCSS(hint,"error");
     telphoneOK = false;
     commonContentfalse(num,1,val);
     return;
   }
    $(hint).text("输入正确");
	changeCSS(hint,"ok");
	//获取父级
	commonDelContent(num,2,val);
	isMobileOk = true;
}

//姓名验证
function validName(){
	var num=$("#fullNameBtn").children("i").attr("attr"); //获取父级
	var val = $("#fullName_txt").val();	
    var hint = "#fullName_hint" ;
	if(val == ""){
		fullNameOK = false;
		commonContentfalse(num,1,val);
		return;
	}
	if(fw.string.len(val) < 4 || fw.string.len(val) > 20){
	    $(hint).text("输入格式错误!");
		changeCSS(hint,"error");
		fullNameOK = false;
		commonContentfalse(num,1,val);
		return;
	}
	if(!fw.re.isGb(val)){
		$(hint).text("输入格式错误!");
		changeCSS(hint,"error");
		fullNameOK = false;
		commonContentfalse(num,1,val);
		return;
	}
	$(hint).text("输入正确!");
	changeCSS(hint,"ok");
	//获取父级
	commonDelContent(num,2,val);
	fullNameOK = true;
}

//幸运号
function vaildFluy(){
	var num=$("#userNameBtn").children("i").attr("attr"); //获取父级
	$("#userName_txt").val($("#userName_txt").val().replace(/[\u4E00-\u9FA5-\A-Za-z]/, ''));
	var val = $("#userName_txt").val();	
    var hint = "#userName_hint" ;
	if(val == ""){
		userNameOK = false;
		commonContentfalse(num,1,val);
		return;
	}
		var str=val.split(",");
		var f=0;
		if(str.length==1){
			f=val;
		}else{
			f=parseInt(str[0],10);
		}
	if(!fw.re.isNumber(f)){
		$(hint).text("输入格式错误!");
		changeCSS(hint,"error");
		userNameOK = false;
		commonContentfalse(num,1,val);
		return;
	}
	
	
	$(hint).text("输入正确!");
	changeCSS(hint,"ok");
	//获取父级
	commonDelContent(num,2,val);
	userNameOK = true;
}

function flayOnfcus(val){
	val.select();
}

function Vailddream(){
	var num=$("#dreamBtn").children("i").attr("attr"); //获取父级
	var val = $("#dream_txt").val();	
    var hint = "#dream_hint" ;
	if(val == ""){
		dreamOK = false;
		commonContentfalse(num,1,val);
		return;
	}
	
	$(hint).text("输入正确!");
	changeCSS(hint,"ok");
	//获取父级
	commonDelContent(num,2,val);
	dreamOK = true;
}

//清除内容验证为false
function cleerAll(hint,code){
	if(code==1){
		birthdayOK=false;
		$(hint).text("");
	}
	else if(code==2){
		zodiacOK=false;
		$(hint).text("您还没有选择生肖");
	}
	else if(code==3){
		telphoneOK=false;
		$(hint).text("您还没有填写手机号码");
	}
	else if(code==4){
		fullNameOK=false;
		$(hint).text("您还没有填写姓名");
	}
	else if(code==5){
		userNameOK=false;
		$(hint).text("您还没有填写幸运号");
	}
	else if(code==6){
		dreamOK=false;
		$(hint).text("您还没有填写解梦");
	}
	else if(code==7){
		 starsOK=false;
		 $(hint).text("您还没有选择星座");
	}
	
	changeCSS(hint,"error"); 
}

//统计数据

function totalNum(code,context){
	var num=0;
	//生日
	if(code==1){
		var y=$("#YYYY").val();
		var m=$("#MM").val();
		var d=$("#DD").val();
		num=parseInt(y,10)+parseInt(m,10)+parseInt(d,10)
	}else if(code==3){ //手机号码
		var strf=context.split("");
		for(var n=0;n<strf.length;n++){
			num += parseInt(strf[n],10); 
		}
		
	}else if(code==4 ||code==6){ //姓名 | 解梦
		var st = stringToBytes(context);
		var total = 0;
		for(var i=0; i<st.length; i++) {
			num += parseInt(st[i],10);
		}
	}else if(code==5){
		var str=context.split(",");
		if(str==null || str.length==0){
			var temp=context.split(" ");
			if(temp==null || temp.length==0){
				num=parseInt(context,10);
			}else{
				for(i=0;i<temp.length;i++){
				 	num +=parseInt(temp[i],10);
				}
			}
			
		}else{
			for(i=0;i<str.length;i++){
				 	num +=parseInt(str[i],10);
			}
		}
	}
	return num;
	
}

/*****************************个性化选择end****************************************/

/*****************************彩种限号start****************************************/
function setLimitNumber(url){
	$.get(url+"limitNumber.txt?v=" + new Date().getTime(),function(result){
		if($.trim(result) != ''){
			var arrStr = result.split(" ");
			var limit  = $("#limitData");
			for(var i=0; i< arrStr.length; i++){
				var lst = arrStr[i].split(":");
				if(lst.length == 2)
					limit.append("<tr><td>"+ lst[0] +" </td><td>"+ lst[1] +"</td></tr>");
			}
			$(".sider_limit").show();
		}
	});
}
/*****************************彩种限号end****************************************/
