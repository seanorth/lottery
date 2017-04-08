var trade={};
trade.playType='ds';
trade.contentRedList = new Array();//选单区列表
trade.contentBlueList = new Array();//选单区列表
trade.contentUpList = new Array();
trade.contentDownList= new Array();
trade.contentList= new Array();

//双色球机选
function JSNEW_SSQ(count,div) {
	var o = 300;
	var q = setInterval(function() {
           o = o - 20;
           JSNEW_SSQ_inner(count,div);
          
           if (o <= 0) {
               clearInterval(q);
           }
       },
       20);
}

function JSNEW_SSQ_inner(count,div){
	
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
		}
		
		blues.push(code);
		cll.bubbleSort(reds);
		var line = reds.join(",")+","+blues.toString();
		
		//组装内容
		addOptionByJx(line,div,1);
		
	}
}

//大乐透机选
function JSNEW_DLT(count,div) {
	var o = 300;
	var q = setInterval(function() {
           o = o - 20;
           JSNEW_DLT_inner(count,div);
          
           if (o <= 0) {
               clearInterval(q);
           }
       },
       20);
}
function JSNEW_DLT_inner(count,div){
	var codeCount ,codeCount2;
	if(trade.playType == 'fs' || trade.playType == 'ds'){
		codeCount = 5;
		codeCount2= 2;
		
	}else{
		cll_alert("该玩法不支持机选功能!");
		return;
	}
	jsPlayType = trade.playType;
	for(var i=1;i<=count;i++){
		reds = new Array();
		for(var j=1;j<=codeCount;j++){
			codeInt = cll.random(1,35);
			code = codeInt+"";
			if(codeInt<=9){
				code = "0"+codeInt;
			}
			while(reds.toString().indexOf(code) != -1){
				codeInt = cll.random(1,35);
				code = codeInt+"";
				if(codeInt<=9){
					code = "0"+codeInt;
				}
			}
			reds.push(code);
		}
		
		blues = new Array();
		for(var j=1;j<=codeCount2;j++){
			codeInt = cll.random(1,12);
			code = codeInt+"";
			if(codeInt<=9){
				code = "0"+codeInt;
			}
			while(blues.toString().indexOf(code) != -1){
				codeInt = cll.random(1,12);
				code = codeInt+"";
				if(codeInt<=9){
					code = "0"+codeInt;
				}
			}
			blues.push(code);
			
		}
		cll.bubbleSort(reds);
		cll.bubbleSort(blues);
		var line =reds.join(",")+","+blues.toString();
		
		addOptionByJx(line,div,2)
	}
}

//组装内容
function addOptionByJx(line,div,type)
{
	//type 1表ssq 2 dlt
	//清空数组
	if(type==1){
		trade.contentRedList=null;
		trade.contentBlueList=null;
		trade.contentRedList = new Array();//选单区列表
		trade.contentBlueList = new Array();//选单区列表
	}else{
		trade.contentUpList=null;
		trade.contentDownList=null;
		trade.contentUpList = new Array();
		trade.contentDownList= new Array();
	}
	var numDiv = new Array(div);
	for(var i=1; i<2; i++){
		var str=line.split(",");
		for(var k = 0; k< numDiv.length; k++){
			if($("#"+numDiv[k]+"_"+i).length > 0){
				$("#"+numDiv[k]+"_"+i+">li>input").each(function(c, divEle){
					var n = str[c];
					$(divEle).val(n);
					if(type==1){
						if(c==6)
							trade.contentBlueList.push(n);
						else
							trade.contentRedList.push(n);
					}else if(type==2){
						if(c>=5)
							trade.contentDownList.push(n);
						else
							trade.contentUpList.push(n);
					}
					
				});	
			}
		}
		
	}
}

//加载init
function contextInit(div,status){
	//status 1初始化 2 投注组装内容
	var numDiv = new Array(div);
	reds=new Array();
	blues = new Array();
	var line=null;
	for(var i=1; i<2; i++){
		for(var k = 0; k< numDiv.length; k++){
			if($("#"+numDiv[k]+"_"+i).length > 0){
				$("#"+numDiv[k]+"_"+i+">li>input").each(function(c, divEle){
					var objValue=$(divEle).val();
					if(status==1)
						$(divEle).val("");
					else{
						//投注组装内容(双色球、大乐透)
						if(objValue!=null && objValue!=""){
							if(div=="ssq_num"){
								if(c==6)blues.push(objValue);
								else
									reds.push(objValue);
							}else{
								if(c>=5)blues.push(objValue);
								else
									reds.push(objValue);
							}
						}
					
					}
				});	
			}
		}
		if(status==2){
			var x,y=0;
			if(div=="ssq_num"){
				x=6,y=1;
			}else{
				x=5,y=2;
			}
			if(reds.length==x && blues.length==y){
				line=reds.join(",")+"|"+blues.toString();
				trade.contentList=null;
				trade.contentList=new Array();
				trade.contentList.push(line);
			}else if(reds.length<x || blues.length<y){
				trade.contentList=null;
			}else
				trade.contentList=null;
		}
	}
	
}
//验证
function keyDownText(val,type,num){
	val.value=val.value.replace(/^\D*(\d*(?:\d{0,2})?).*$/g, '$1');
	//val.value=val.value.replace(/\D*/g, '');
	var strValue=val.value;
	var x,y=0;
	var n="";
	if(type=="ssq"){
		x=33;y=16;
	}else{
		x=35;
		y=12;
	}
	//数据OK检测一下是否有从复的数字
	if(num==2){
		//移除先有数据
		var numStr=$("#numBlues").val();
		if(numStr!=null && numStr!=""){
			 clearBlues(type,numStr);
			 $("#keyBlues").val(2);
		}
		//检查数据
		if(!blue(val,type,strValue)){
			val.value="";
			return false;
		}
		if(strValue>y || strValue<0){
			n="";
		}else n=strValue;
		
	}
	if(num==1){
		//移除先有数据
		var numStr=$("#numReds").val();
		if(numStr!=null && numStr!=""){
			clearReds(type,numStr);
			$("#keyReds").val(1);
		}
		//检查数据
		if(!red(val,type,strValue)){
			val.value="";
			return false;
		}
		
		if(strValue>x || strValue<0){
			n="";
		}else n=strValue;
		
	}
	val.value=n;
	
}

//检查前区
function red(val,type,strValue){
	if(type=="ssq"){
			if(trade.contentRedList.length>0){
				for(var i=0;i<trade.contentRedList.length;i++){
					var line=trade.contentRedList[i];
					if(strValue==line){
						val.value="";
						return false;
					}
				}
			}
		}else{
			if(trade.contentUpList.length>0){
				for(var i=0;i<trade.contentUpList.length;i++){
					var line=trade.contentUpList[i];
					if(strValue==line){
						val.value="";
						return false;
					}
				}
			}
		}
		
		return true;
}
//检查后区
function blue(val,type,strValue){
	if(type=="ssq"){
			if(trade.contentBlueList.length>0){
				for(var i=0;i<trade.contentBlueList.length;i++){
					var line=trade.contentBlueList[i];
					if(strValue==line){
						val.value="";
						return false;
					}
				}
			}
		}else{
			if(trade.contentDownList.length>0){
				for(var i=0;i<trade.contentDownList.length;i++){
					var line=trade.contentDownList[i];
					if(strValue==line){
						val.value="";
						return false;
					}
				}
			}
		}
		return true;
}


//离开事件的处理
function oblurText(val,type,num){
	var codeInt=parseInt(val.value,10);
	var code=codeInt;
	if(codeInt<=9){
		code = "0"+codeInt;
		val.value=code+"";
	}
	if(num==2){
		var keyBlues=$("#keyBlues").val();
		if(keyBlues!=null && keyBlues!="" && keyBlues==2){
				//检查数据
			if(!blue(val,type,code)){
				val.value="";
				return false;
			}
			//加入集合
			if(type=="ssq")trade.contentBlueList.push(code);
			else trade.contentDownList.push(code);
			$("#keyBlues").val("");
		}
		
	}
	if(num==1){
		var keyReds=$("#keyReds").val();
		if(keyReds!=null && keyReds!="" && keyReds==1){
			//检查数据
			if(!red(val,type,code)){
				val.value="";
				return false;
			}
			//加入集合
			
			if(type=="ssq")trade.contentRedList.push(code);
			else trade.contentUpList.push(code);
			$("#keyReds").val("")
		}
	}
	if(val.value=="00")val.value="";
	
	return true;
	
}

function clearReds(type,str){
	if(type=="ssq"){
		if(trade.contentRedList.length>0){
			//返回一个新数组
			len =trade.contentRedList.length;
			contentRedList = new Array();
			contentRedList=trade.contentRedList.slice(0,len);
			trade.contentRedList=null;
			trade.contentRedList = new Array();
			for(var i=0;i<len;i++){
				var line=contentRedList[i];
				if(str!=line){
					//移除
					trade.contentRedList.push(line);
				}
			}
		}
	}else{
		if(trade.contentUpList.length>0){
			//返回一个新数组
			len=trade.contentUpList.length;
			contentUpList = new Array();
			contentUpList = trade.contentUpList.slice(0,len);
			trade.contentUpList=null;
			trade.contentUpList = new Array();
			for(var i=0;i<len;i++){
				var line=contentUpList[i];
				if(str!=line){
					//移除
					trade.contentUpList.push(line);
				}
			}
		}
	}
}

function clearBlues(type,str){
		if(type=="ssq"){
			if(trade.contentBlueList.length>0){
				len =trade.contentBlueList.length;
				contentBlueList  = new Array();
				contentBlueList = trade.contentBlueList.slice(0,len);
				trade.contentBlueList = null;
				trade.contentBlueList = new Array();
				for(var i=0;i<len;i++){
					var line=contentBlueList[i];
					if(str!=line){
						//移除
						trade.contentBlueList.push(i);
					}
				}
			}
		}else{
			if(trade.contentDownList.length>0){
				len=trade.contentDownList.length;
				contentDownList = new Array();
				contentDownList=trade.contentDownList.slice(0,len);
				trade.contentDownList = null;
				trade.contentDownList = new Array();
				for(var i=0;i<len;i++){
					var line=contentDownList[i];
					if(str!=line){
						//移除
						trade.contentDownList.push(i);
					}
			}
		}
	}
}

//焦点事件
function onfocusText(val,type,num){
	//清除本身数据
	
	var str=val.value;
	if(str!=null && str !=""){
		if(num==2){
			$("#numBlues").val(str);
			//clearBlues(type,str);
		}
		if(num==1){
			$("#numReds").val(str);
			//clearReds(type,str);
		}
	}
	
	val.select();
}

function tradeSub(status){
	checkLogin(function(){tradeSubInner(status);});
}

//投注
isSubmit = false;
function tradeSubInner(status){
	//status 1 ssq 2 dlt
	if(isSubmit)return false;
	isSubmit = true;
	//调用内容
	var term="";
	var lotType="";
	if(status==1){
		contextInit('ssq_num',2);
		term=$("#currentTerm_100").html();
		lotType=tradeTerm.lotteryTypeSsq;
		$("#addAttribute").val(null); 
	}
	else{
		contextInit('dlt_num',2);
		term=$("#currentTerm_1").html();
		lotType=tradeTerm.lotteryTypeDlt;
		$("#addAttribute").val(1); //追加条件
	}
	
	if(trade.contentList==null){
		cll_alert("投注内容错误！");
		isSubmit = false;
		return;
	}
	
	$("#publicStatus").val(1);
	$("#multiple").val(1);
	$("#term").val(term);
	$("#content").val("2:"+trade.contentList[0]);
	$("#lotType").val(lotType);
	$("#playType").val(2);
	$("#amount").val(2);
	
	var confStr="";
	confStr = "您选择了1注 " + $("#multiple").val() + "倍， 共 " + $("#amount").val() + "元，请确认！";
	
	cll_confirm(confStr,
		function(){
			document.tradeForm.action = ctx+"/trade/dg.php";
			var json = {
					url : document.tradeForm.action,
					form : document.tradeForm,
					onsuccess :tradeBackIndex,
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
				return ;
		});
	
	
	
}

function tradeBackIndex(o){
	isSubmit = false;
	var json = eval("(" + o + ")");
	cll_alert(json.message);
	if(json.code == "0")
	{
		contextInit('ssq_num',1);
		contextInit('dlt_num',1);
	}
	
}


//世界杯单关投注 begin
var wc_matchItem={};

function wc_blur(obj){
	var amount=obj.value*1;
	if(amount%2!=0){
		amount=amount+1;
	}
	obj.value=amount;
	wc_money();
}
function wc_money(){
	var sp=0;
	if(wc_matchItem["key"]){
		sp=wc_matchItem["fbMatchItem.options[0].award"];
	}
	var amount=fw.getId("wc_amount").value;
	if(amount!=""){
		fw.getId("wc_ssAmount").innerHTML=(amount*sp).toFixed(2);
	}
}



function wc_bet(key,obj,val,sp){
	var className=obj.className;
	if(className=="ban"){
		return false;
	}
	if(className=="current"){
		obj.className="";
		wc_matchItem={};
		wc_money();
	}else{
		document.getElementById("wc_spf_s").className="";
		document.getElementById("wc_spf_g").className="";
		document.getElementById("wc_spf_d").className="";
		obj.className="current";
		wc_matchItem["fbMatchItem.options[0].type"]=41;
		wc_matchItem["fbMatchItem.options[0].award"]=sp;
		wc_matchItem["fbMatchItem.options[0].value"]=val;
		wc_matchItem["fbMatchItem.intTime"]=key.substring(0,8);
		wc_matchItem["fbMatchItem.lineId"]=key.substring(8)*1;
		wc_matchItem["key"]=key;
		wc_money();
	}
}

function tradeSub_wc(){
	checkLogin(function(){tradeSubInner_wc();});
}

//投注
isSubmit_wc = false;
function tradeSubInner_wc(){
	if(isSubmit_wc)return false;
	var amount=$("#wc_amount").val();
	if(!wc_matchItem["key"]){
		cll_alert("请选择一个投注选项");
		return ;
	}
	
	if(!/^\d+$/.test(amount)){
		cll_alert("投注金额必须为正整数");
		return ;
	}
	if(amount==""||amount<20){
		cll_alert("最低投注20元");
		return ;
	}
	if(amount>200000){
		cll_alert("最大投注200000元");
		return ;
	}
	if(amount%2!=0){
		cll_alert("2元一注为公益  请投注双数");
		return 
	}
	isSubmit_wc = true;
	wc_matchItem["amount"]=amount;
	var confStr="";
	confStr = "您选择了"+amount+"元，请确认！";
	cll_confirm(confStr,
		function(){
			$.ajax({
				url:"/lottery/jingcai/buyResult.php",
				data:wc_matchItem,
				type:"POST",
				success:function(o){
					isSubmit_wc = false;
					var json = eval("(" + o + ")");
					cll_alert(json.message);
				},
				error:function(){
					cll_alert("提交失败！");
					isSubmit_wc = false;
				}
			});
		},
		function() {
				isSubmit_wc = false;
				return ;
		}
	);
}
$(function(){
	//初始化选择胜平负最小SP
	var wc_matchs=$("#wc_match a");
	if(wc_matchs.length>0){
		var arr=wc_matchs.sort(function(a,b){
			var sp1=$(a).find("em.pl").text()*1;
			var sp2=$(b).find("em.pl").text()*1;
			return sp1-sp2;
		});
		arr[0].onclick();
	}

})
//世界杯单关投注 end

// 首页竞彩足球单关投注 begin
var currSpArr = new Array(-1, -1, -1);

function jczq_dqtz_bet(obj, val, sp) {
	if (obj.className == "") {
		obj.className = "select";
		currSpArr[val] = sp;
	} else {
		obj.className = "";
		currSpArr[val] = -1;
	}
	
	jczq_dgtz_money();
}

function jczq_dgtz_blur(obj) {
	var amount=obj.value*1;
	if(amount%2!=0){
		amount=amount+1;
	}
	
	if (amount == 0) {
		amount = 2;
	}
	
	obj.value=amount;
	jczq_dgtz_money();
}

function jczq_dgtz_money() {
	var tempArr = new Array();
	var j = 0;
	
	for (var i = 0; i < currSpArr.length; i++) {
		if (currSpArr[i] != -1) {
			tempArr[j] = currSpArr[i];
			j++;
		}
	}
	
	tempArr.sort(function(a,b){return a-b;});
	var minSp = tempArr[0];
	var maxSp = tempArr[tempArr.length - 1];
	var amount = fw.getId("jczq_dgtz_amount").value;
	
	if (amount != "") {
		if (tempArr.length > 0) {
			fw.getId("jczq_dgtz_ssAmount").innerHTML = (amount*minSp).toFixed(2) + "~" + (amount*maxSp).toFixed(2) + "元";
		} else {
			fw.getId("jczq_dgtz_ssAmount").innerHTML = "0.00~0.00元";
		}
	}
	
	updateJczqDgtzBetHref(amount);
}

function updateJczqDgtzBetHref(amount) {
	var options = "";
	var page = "dgtz";
	var playType = "rqspf";
	var href = $("#btn_href_three").attr("href");
	
	var index = href.indexOf("dgtz");
	if (index == -1) {
		page = "zqht";
	}
	
	index = href.indexOf("rqspf");
	if (index == -1) {
		playType = "spf";
	}
	
	for (var i = 0; i < currSpArr.length; i++) {
		if (currSpArr[i] != -1) {
			var option = 3;
			if (i == 0) {
				option = 3;
			} else if (i == 1) {
				option = 1;
			} else if (i == 2) {
				option = 0;
			}
			
			if (page == "dgtz") {
				options += "|" + playType + "_" + option + "_" + amount;
			} else {
				options += "|" + playType + "_" + option;
			}
			
		}
	}
	
	index = href.indexOf("?");
	href = href.substring(0, index + 18) + options;
	$("#btn_href_three").attr("href", href);
}

$(function(){
	// 初始化选择胜平负最小SP
	var jczq_dgtz_match = $("#jczq_dgtz_match a");
	if(jczq_dgtz_match.length>0){
		var arr=jczq_dgtz_match.sort(function(a,b){
			var sp1=$(a).find("span.sp").text()*1;
			var sp2=$(b).find("span.sp").text()*1;
			return sp1-sp2;
		});
		arr[0].onclick();
	}
})
// 首页竞彩足球单关投注 end
