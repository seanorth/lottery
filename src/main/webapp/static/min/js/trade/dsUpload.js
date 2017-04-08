//----------------------------------------------------单式上传开始-----------------------------------------------------------
function inject(v,fs,count){
 lines = v.split("^");
 for(var i=0;i<lines.length;i++){
	var content = lines[i];
	var bean = new contentBean();
	bean.content = content;
	bean.baseCount = 1;
	bean.playType = trade.playType;
	bean.add = 0;//非追加
	trade.contentList.push(bean);
 }
		
var table="<table border='0' id='tradetable' cellpadding='0' cellspacing='0' class='tradeListTable' style='width: 100%;'><tbody id='tradebody'></tbody></table>";
var tr="<tr class='tradeListItemTR' id='"+fs+"' onmouseover='mouseover(this);' onmouseout='mouseout(this);'  title='单式上传'><td class='nameTD' style='width: 61px;'><label>单式上传:</label></td><td class='numTD'><div class='numD'><a href='"+fs+"' target='_blank' >查看详情</a></div></td><td class='delTD'><font class='del' onclick='del(this,"+count+");' title='删除'></font></td></tr>";
if($("#tradeList").children("table").length==1){
	$("#tradeList").append(table);
}
$("#tradebody").empty();
$("#tradebody").append(tr);
 fw.get("inLineCount").innerHTML = count;
 fw.get("filePath").value = fs;
 fw.get("ds").value = "true";
 showInLineInfoByUpload();
}
//显示选单区里面的金额
function showInLineInfoByUpload(){
	var count =  fw.get("inLineCount").innerHTML;
	var multiple = fw.get("multipleDG").value;
	if(fw.get("zj") && fw.get("zj").checked) {
		fw.dom.get("inLineAmount").innerHTML = count*3*multiple;
	} else {
		fw.dom.get("inLineAmount").innerHTML = count*2*multiple;
	}
}

function checkUpload(){
 if(fw.get("file").value == ""){
 	cll_alert("您没有上传文件");
 	return false;
 }
 var ext = fw.get("file").value.substring(fw.get("file").value.indexOf(".")+1).toLowerCase();
  if(ext!='txt'){
  cll_alert('您上传的文件格式系统不支持,目前系统支持[txt]文本文件格式');
  return false;
 }
 return true;
}
//----------------------------------------------------单式上传结束-----------------------------------------------------------

//----------------------------------------------------预投开始-----------------------------------------------------------
function tradeYt() {
	checkLogin(tradeYtInner);
}

//发起预头
function tradeYtInner() {
	if (isSubmit)
		return false;
	isSubmit = true;
	var amountYt=document.getElementById("amountYt");
	var amount = Number(amountYt.innerHTML);
	if(amount <= 0){
		cll_alert("请填写正确的购买注数!");
		isSubmit = false;
		return;
	}
	limitUploadBuy(tradeTerm.currentTermRT,amount); //大乐透，双色球单式上传限制
	
	if(fw.get("notPublic") && fw.get("notPublic").checked){
		fw.get("publicStatus").value = fw.get("notPublic").value;
	}else if(fw.get("publicPlan") && fw.get("publicPlan").checked){
		fw.get("publicStatus").value = fw.get("publicPlan").value;
	}else if(fw.get("awardPublic") && fw.get("awardPublic").checked){
		fw.get("publicStatus").value = fw.get("awardPublic").value;
	}else if(fw.get("followPublic") && fw.get("followPublic").checked){
		fw.get("publicStatus").value = fw.get("followPublic").value;
	}
	fw.get("multiple").value =document.getElementById("mult").value;
	fw.get("amount").value = amount;
	fw.get("term").value = tradeTerm.currentTerm;
	fw.get("lotType").value = trade.lotteryType;
	fw.get("playType").value = "1";//handcode单式的值,(排列3和3d需在上传时选投注类型,则需要更改此值)

	{
		fw.get("founderAmount").value = fw.get("founderAmountYt").value;
		
		if(!fw.re.isNumber(fw.get("founderAmountYt").value)){
			cll_alert("认购金额有误!");
			isSubmit = false;
			return false;
		}
		
		fw.get("founderBdAmount").value = fw.get("founderBdAmountYt").value;
		
		if(!fw.re.isNumber(fw.get("founderBdAmountYt").value)){
			cll_alert("保底金额有误!");
			isSubmit = false;
			return false;
		}
		
		fw.get("other").value = encodeURIComponent(encodeURIComponent(fw.get("memoYt").value));
		
		var confStr = "您发起合买 " + fw.get("zsYt").value  + "注 " + fw.get("multiple").value + "倍 共 " + fw.get("amount").value
		 + "元，认购 "+ fw.get("founderAmount").value +"元 保底 "+ fw.get("founderBdAmount").value +"元，请确认！"
		if(!confirm(confStr))
		{
			isSubmit = false;
			return;
		}

		fw.get("commision").value = fw.get("commisionYt").options[fw.get("commisionYt").selectedIndex].text;
       
        document.tradeForm.action = "/hm/YtCreate.php";
       
		
		
		var json = {
		url : document.tradeForm.action,
		form : document.tradeForm,
		onsuccess : trallback,
		onfail : function (){
			cll_alert("提交失败！");
			isSubmit = false;
		}
		};
		json.charset="GBK";
		fw.ajax.request(json);
	}
	
}

function mouseout(ob){
	$(ob).attr("class","tradeListItemTR");
}

function mouseover(ob){
	$(ob).attr("class","tradeListItemTR-hover");
}

function  del(del,count){
    $(del).parent().parent().remove(); 
     count=parseInt(fw.get("inLineCount").innerHTML)-parseInt(count);
     fw.get("inLineCount").innerHTML = count;
     fw.dom.get("inLineAmount").innerHTML=0;
     showSelectInfo();
}

function trallback(o){
   isSubmit = false;
	var json = eval("(" + o + ")");
	cll_alert(json.message);
	if(json.code == "0")
	{
	  
		if(document.getElementById("tradeListFrame")){
		  var url="/trade/tradePlanList.php?lotteryType="+ trade.lotteryType +"&show=new&T="+(new Date().getTime().toString(36));
		  document.getElementById("tradeListFrame").src=url;
		  document.getElementById("tradeListFrame").location.reload();
		}
	}
	
}
/*****************************大乐透、双色球 截止最后10分钟限单 start****************************************/
function limitUploadBuy(endTime,amount){//销售截止时间截 、方案金额
	if(trade.playType == 1 || trade.playType == 100){
		 if(trade.playType == "dsUpload"){//欲投合买
			if(endTime < 600 && (amount > 20000)){
				cll_alert("距销售截止不足10分钟，不能发起超过2万元的欲投方案！");
			}
		}
	}
}
/*****************************大乐透、双色球 截止最后10分钟限单end****************************************/
//----------------------------------------------------预投结束-----------------------------------------------------------
