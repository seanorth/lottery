var filterBox = {};
filterBox.playType = "rx5";
filterBox.filterCondition = "";//保存过滤条件(格式1:胆码过滤|2:号码过滤|3:小数个数过滤|4:偶数个数过滤|5:和值过滤|6:跨度过滤|7:上期重号过滤|8:连号过滤|9:杀号过滤|10:热号个数过滤|11:常态个数过滤|12:冷号个数过滤|13:分组过滤|14:形态过滤)
filterBox.codes = new Map();//保存符合过滤条件的号码
filterBox.playTypes = new Map(); // 保存符合过滤条件的号码对应的玩法
filterBox.selNumber = new Array();//过滤条件号码
filterBox.gutsNumber = new Array();//过滤条件胆码
filterBox.ball = null;	//号码对象
filterBox.switchCount = 0; //玩法切换次数，判断是否加载filterBox.initNumber();方法
filterBox.bettingBox = null; //投注框号码验证数据
filterBox.ballNum = 11; // 号码个数

filterBox.init = function() {
	if(trade.selectedTab == "qe"){
		if(trade.playType.indexOf("qeZx") == 0){
			filterBox.selectPlayType("qeZx");
		}
		if(trade.playType.indexOf("qeZhux") == 0){
			filterBox.selectPlayType("qeZhux");
		}
	}else if(trade.selectedTab == "qs"){
		if(trade.playType.indexOf("qsZx") == 0){
			filterBox.selectPlayType("qsZx");
		}
		if(trade.playType.indexOf("qsZhux") == 0){
			filterBox.selectPlayType("qsZhux");
		}
	}else if(trade.selectedTab == "r2" || trade.selectedTab == "q1st" || trade.selectedTab == "x2lz" || trade.selectedTab == "r2lx" || trade.selectedTab == "r3qx" || trade.selectedTab == "lx" || trade.selectedTab == "rx" || trade.selectedTab == "wei" || trade.selectedTab == "shun"){
		filterBox.selectPlayType(trade.playType);
	}else if(trade.selectedTab == "zs" || trade.selectedTab == "zl"){
		filterBox.selectPlayType("zux");
	}else{
		filterBox.selectPlayType(trade.selectedTab);
	}
}

//玩法选择
filterBox.selectPlayType = function(sub){
	$("#"+filterBox.playType+"_fmenu").attr("className", "");
	$("#"+filterBox.playType+"_ftable").hide();
	
    if ($("#" + sub + "_fmenu").length == 0) {
    	$(".filter_tab_box li").eq(0).attr("className", "on"); // 设置默认菜单
    	$(".gltjselect").eq(0).show(); // 设置默认过滤区
    	filterBox.playType = $(".gltjselect").eq(0).attr("id").split("_")[0]; // 设置默认玩法
    } else {
    	$("#"+sub+"_fmenu").attr("className","on"); // 改变菜单
    	$("#"+sub+"_ftable").show(); // 选择过滤区
    	filterBox.playType = sub; // 设置当前玩法
    }
	
	filterBox.ball = $("#" + filterBox.playType + "_ftable .balls"); // 设置当前号码对象
	filterBox.clearFilterCondition();
    
	if(filterBox.switchCount == 0)
		filterBox.initNumber();
	filterBox.switchCount++;
}

//初始化号码和胆码
filterBox.initNumber = function() {
	filterBox.selNumber = [];
	filterBox.gutsNumber = [];
	
	if (trade.cbMap == null) {
		return;
	}
    
	if(trade.playType.indexOf("dt") > 0 || trade.playType.indexOf("Dt") > 0){ //胆拖
	  	filterBox.gutsNumber = trade.cbMap.get(trade.playType).get(1).keys(); // 胆码
		filterBox.selNumber[0] = trade.cbMap.get(trade.playType).get(2).keys(); // 号码
		filterBox.selNumber[1] = filterBox.selNumber[0];
	}else if(trade.playType.indexOf("sg") > 0){ //手工输入
	}else{ //标准
		if (trade.playType == "ethdx") {
			var ballRowOne = trade.cbMap.get(trade.playType).get(1).keys();
			var ballRowTwo = trade.cbMap.get(trade.playType).get(2).keys();
			filterBox.selNumber[0] = ballRowOne.concat(ballRowTwo);
		} else if (trade.playType == "qeZx" || trade.playType == "lxfs" || trade.playType == "x2lzh" || trade.playType == "shun2") {
			filterBox.selNumber[0] = trade.cbMap.get(trade.playType).get(1).keys();
			filterBox.selNumber[1] = trade.cbMap.get(trade.playType).get(2).keys();
		} else if (trade.playType == "qsZx" || trade.playType == "sxfs" || trade.playType == "x3qzh" || trade.playType == "shun3" || trade.playType == "zx") {
			filterBox.selNumber[0] = trade.cbMap.get(trade.playType).get(1).keys();
			filterBox.selNumber[1] = trade.cbMap.get(trade.playType).get(2).keys();
			filterBox.selNumber[2] = trade.cbMap.get(trade.playType).get(3).keys();
		} else {
			filterBox.selNumber[0] = trade.cbMap.get(trade.playType).get(1).keys();
			var obj = trade.cbMap.get(trade.playType).get(2);
			
			if (obj != undefined) {
				filterBox.selNumber[1] = obj.keys();
			} else {
				filterBox.selNumber[1] = filterBox.selNumber[0];
			}
		}
	}
	
	filterBox.ball.each(function(i){
		$(this).find("li").each(function(){
			var num = $(this).attr("num");
			
			if (trade.lotteryType != 102 && trade.lotteryType != 3 && num.length == 1) {
				num = parseInt(num);
			}
			
			if($.inArray(num, filterBox.selNumber[i]) > -1)
				$(this).attr("class","lion");
			if($.inArray(num, filterBox.gutsNumber) > -1)
				$(this).attr("class","cur_dan");
		});
	});
	
	$("#"+filterBox.playType+"_ftable").find(".set_dan .dan_list input[type='checkbox']").each(function(i){
		if($.inArray($(this).val(), filterBox.gutsNumber) > -1)
			$(this).attr("checked",true);
	});
}

filterBox.showFilterBox = function(title, ballNum) {
	if (ballNum != undefined) {
	    filterBox.ballNum = ballNum;
	}
	
	// 重庆快乐十分隐藏选三前直和选三前组
	if (trade.lotteryType == 158) {
		$('#x3qzh_fmenu').hide();
		$('#x3qz_fmenu').hide();
	}
	
	openDragWindow("msgDiv",title,true,function() {$("#tradeList").show();filterBox.clearNumber();filterBox.switchCount=0;});
	filterBox.init();
}

filterBox.hideFilterBox = function() {
	closeDragWindow("msgDiv",function() {$("#tradeList").show();});
}

//清空选择
filterBox.selectClear = function(n) {
	$("#"+ filterBox.playType +"_ftable input[name="+ n +"]").each(function(i){
		$(this).attr("checked","");
	});
	
	if (n == "danMa") {
		filterBox.ball.find("li[class='cur_dan']").attr("class","lion");
	} else if (n == "killNum") {
		filterBox.ball.find("li[class='kill']").attr("class","lion");
	}
}

filterBox.getTargetCount = function() {
	var targetCount = 0;
	
	if (filterBox.playType == "rx1") {
		targetCount = 1;
	} else if (filterBox.playType == "rx2") {
		targetCount = 2;
	} else if (filterBox.playType == "rx3" || filterBox.playType == "r3") {
		targetCount = 3;
	} else if (filterBox.playType == "rx4" || filterBox.playType == "r4") {
		targetCount = 4;
	} else if (filterBox.playType == "rx5" || filterBox.playType == "r5") {
		targetCount = 5;
	} else if (filterBox.playType == "rx6") {
		targetCount = 6;
	} else if (filterBox.playType == "rx7") {
		targetCount = 7;
	} else if (filterBox.playType == "rx8") {
		targetCount = 8;
	} else if (filterBox.playType == "qeZx" || filterBox.playType == "x2lzh" || filterBox.playType == "shun2") {
		targetCount = 2;
	} else if (filterBox.playType == "qsZx" || filterBox.playType == "x3qzh" || filterBox.playType == "shun3") {
		targetCount = 3;
	} else if (filterBox.playType == "qeZhux" || filterBox.playType == "x2lz" || filterBox.playType == "wei2") {
		targetCount = 2;
	} else if (filterBox.playType == "qsZhux" || filterBox.playType == "x3qz" || filterBox.playType == "wei3") {
		targetCount = 3;
	} else if (filterBox.playType == "ethdx") {
		targetCount = 2;
	} else if (filterBox.playType == "sbth") {
		targetCount = 3;
	} else if (filterBox.playType == "k3ht") {
		targetCount = 3;
	} else if (filterBox.playType == "sxZux" || filterBox.playType == "sxZhix" || filterBox.playType == "zux" || filterBox.playType == "zx") {
		targetCount = 3;
	} else if (filterBox.playType == "lxzxbh" || filterBox.playType == "lxfs") {
		targetCount = 2;
	}
	
	return targetCount;
}

//获取条件值
filterBox.getConditionValue = function(n) {
	var result = "";
	$("#"+ filterBox.playType +"_ftable input[name="+ n +"]").each(function(i){
		var obj = $(this);
		if (obj.attr('checked') == true && obj.val() != 'all') {
			result += obj.val() + ",";
		}
	});
	if(result.indexOf(",") > -1) {
		result = result.substr(0,result.length-1);
	}
	return result;
}

//执行过滤条件
filterBox.handleFilterCondition = function() {
	var dragCode = filterBox.getNumCode("lion"); // 获取拖码
	var danMa = filterBox.getNumCode("cur_dan"); // 获取胆码
	var groupNum = filterBox.getGroupNum(); // 获取分组过滤号码
	var targetCount = filterBox.getTargetCount();
	var ballmodeLen = $("#"+filterBox.playType+"_ftable").find(".ballmode").length;
	
	if (ballmodeLen == 0) {
		// 如果选择了分组过滤
		if (filterBox.isGroup() == 1) {
			var appearCountSum = 0; // 出现个数之和
			
			if (groupNum.length > 0) {
				var groupArr = groupNum.split(";");
				
				for (var i = 0; i < groupArr.length; i++) {
					appearCountSum += parseInt(groupArr[i].split("~")[1]);
				}
			}
			
			if (appearCountSum != targetCount) {
				cll_alert('分组过滤号码出现个数之和必须等于' + targetCount);
				filterBox.clearFilterCode();
				return;
			}
		} else {
			var dragCodeCount = dragCode == '' ? 0 : dragCode.split(",").length;
			var danMaCount = danMa == '' ? 0 : danMa.split(",").length;
			
			if ((dragCode != "" && danMa != "") || (danMa == "" && dragCode != "")) {
				if(dragCodeCount + danMaCount < targetCount){
					cll_alert("号码个数与胆码个数之和必须>="+targetCount);
					filterBox.clearFilterCode();
					return;
				}
			}
		}
	}
	
	var decimals = filterBox.getConditionValue("decimals");
	var evenNumber = filterBox.getConditionValue("evenNumber");	
	var heZhi = filterBox.getConditionValue("heZhi");
	var kuaDu = filterBox.getConditionValue("kuaDu");
	var sqchao = filterBox.getConditionValue("sqchao");
	var lianHao = filterBox.getConditionValue("lianHao");
	var killNum = filterBox.getNumCode("kill");
	var hotNum = filterBox.getConditionValue("hotNum");
	var normalNum = filterBox.getConditionValue("normalNum");
	var coldNum = filterBox.getConditionValue("coldNum");
	var playType = filterBox.getConditionValue("playType");
	
	filterBox.filterCondition = "1:" + danMa + "|2:" + dragCode + "|3:" + decimals + "|4:" + evenNumber + "|5:" + heZhi + "|6:" + kuaDu + "|7:" + sqchao + "|8:" + lianHao
	                          + "|9:" + killNum + "|10:" + hotNum + "|11:" + normalNum + "|12:" + coldNum + "|13:" + groupNum + "|14:" + playType;
    
	if(filterBox.filterCondition.length <= 46) {
		cll_alert("请您选择过滤条件后再开始过滤！");
		filterBox.clearFilterCode();
		return;
	}

	$.ajax({
			url:'/trade/filter11x5.php?playType='+ filterBox.playType +'&filterCondition=' + filterBox.filterCondition + '&lastTermRusult='+tradeTerm.openResult +"&lotteryUrl=" + tradeInfo.xml + "&lotteryTypeValue=" + trade.lotteryType+"&v="+new Date().getTime(),
			type: 'POST',
			dataType: 'json',
			timeout: 5000,
			error: function(){},
			beforeSend: function(){
				$("#filterResult").html("<tr><td colspan ='4' style='color:red;text-align:center'>loading...</td></tr>");
			},
			complete: function(){},
			success: function(data){
				if(data == null) {
					cll_alert("过滤发生错误，请检查！");
					return;
				}
				
				var tr ="",len = 0;
				filterBox.codes.clear();
				filterBox.playTypes.clear();
				
				if(!data.hasOwnProperty("numSet")){
					tr = "<tr><td colspan ='4'>未找到符合条件的号码！</td></tr>";
				}else{
					len = data.numSet.length;
					
					for(var i = 0;i < len;i++){
						var content = data.numSet[i];
						
						// 前二直选、前三直选、选二连直、选三前直要将,替换为|
						if (filterBox.playType == 'qeZx' || filterBox.playType == 'qsZx' || filterBox.playType == 'x2lzh' || filterBox.playType == 'x3qzh' || filterBox.playType == 'shun2' || filterBox.playType == 'shun3'
							    || filterBox.playType == 'zx' || (filterBox.playType == 'zux' && data.playTypeSet[i] == 'zhuxuan')) {
							content = content.replace(/,/g, "|");
						} else if (filterBox.playType == 'k3ht' && data.playTypeSet[i] == 'sthdx') {
							content = content.replace(/,/g, '');
						} else if ((filterBox.playType == 'sxZux' && data.playTypeSet[i] == 'sxz3bz') || filterBox.playType == 'sxZhix') {
							content = '*|*|' + content.replace(/,/g, "|");
						} else if (filterBox.playType == 'lxfs') {
							content = '*|*|*|' + content.replace(/,/g, "|");
						}
						
						tr += "<tr class="+ filterBox.oddEven(i+1) +"><td>"+ (i + 1) +"</td><td>"+ content +"</td><td>" + data.missSet[i] + "</td><td><a href='javascript:;' class='del'  onclick='filterBox.delData(\""+ content +"\")'>X</a></td></tr>";
						filterBox.codes.put(content, data.missSet[i]);
						filterBox.playTypes.put(content, data.playTypeSet[i]);
					}
				}
				
				$("#filterResult").html(tr);
				filterBox.setSelectInfo(len);//显示注数和金额
				
			}
		}); 

}

//清除过滤条件
filterBox.clearFilterCondition = function() {
	filterBox.clearNumber();
	filterBox.selectClear("danMa");
	filterBox.selectClear("killNum");
	
	$("#"+filterBox.playType+"_ftable").find('.grouping .isgroup .cllradio a').eq(0).click();
	$("#"+filterBox.playType+"_ftable").find('.ballmode .cllradio a').attr('class', 'default');
	
	filterBox.selectClear("hotNum");
	filterBox.selectClear("normalNum");
	filterBox.selectClear("coldNum");
	filterBox.selectClear("decimals");
	filterBox.selectClear("evenNumber");
	filterBox.selectClear("heZhi");
	
	$("#"+filterBox.playType+"_ftable").find('input[name=startHzScope]').val('');
	$("#"+filterBox.playType+"_ftable").find('input[name=endHzScope]').val('');
	
	filterBox.selectClear("kuaDu");
	filterBox.selectClear("sqchao");
	filterBox.selectClear("lianHao");
	filterBox.selectClear("playType");
	
	filterBox.clearFilterCode();
	filterBox.clearConditionStyle();
	$('#seCountTerm1').val(50);
}

//清空筛选条件号码
filterBox.clearNumber = function(row){
	if (row == undefined) {
	    filterBox.ball.find("li[name=numCode]").attr("class","li2");
	} else {
		filterBox.ball.eq(row).find("li[name=numCode]").attr("class","li2");
	}
}

filterBox.setSelectInfo = function(count) {
	$("#fcbCount").html(count);
	$("#fcbAmount").html(count*2);
}

//清空过滤的号码
filterBox.clearFilterCode = function() {
	$("#filterResult").empty();
	filterBox.codes.clear();
	filterBox.playTypes.clear();
	filterBox.setSelectInfo(0);
}

//清空多选框选中样式
filterBox.clearConditionStyle = function() {
	$("#"+ filterBox.playType +"_ftable label").each(function(i){
		$(this).attr("class","");
	});
}

//添加过滤号码到投注列表框
filterBox.addFilterToSelect = function() {
	var codes = filterBox.codes.keys();
	var counts = filterBox.codes.size();
	
	if (counts <= 0) {
		cll_alert("您未选择号码！");
		return;
	}
    
	for(var i=0; i<counts; i++) {
		var bean = new contentBean();
		bean.baseCount = 1;
		bean.playType = filterBox.playTypes.get(codes[i]);
		bean.content = codes[i];
		
		//将该号码bean放入交易list中
		trade.contentList.push(bean);
		
		//处理显示的select框内容
		var option = document.createElement("OPTION");
		//playTypeNameMap保存的是玩法方式代码-数值的对应关系。（这里你在做新功能方法里面要处理下，做个反向对应）
		option.text = playTypeNameMap.get(bean.playType) + ": " + bean.content;
		option.value = option.text;
		$("#tradeList")[0].options.add(option);
	}

	scrollSelectList("tradeList");
	//计算trade这个list中的所有选号的总额信息
	showInLineInfo();

	filterBox.hideFilterBox();//关闭过滤层
}

// 获取选中拖码、胆码、杀号
filterBox.getNumCode = function(className) {
	var result = "";
	var ballmodeLen = $("#"+filterBox.playType+"_ftable").find(".ballmode").length;
	
	if (ballmodeLen > 0) {
		filterBox.ball.each(function(i){
			var nums = "";
			
			$(this).find("li[class='" + className + "']").each(function(){
				nums += $(this).attr("num") + ",";
			});
			
			if (nums.indexOf(",") > -1) {
				nums = nums.substr(0, nums.length - 1);
				result += nums + "~" + i + ";";
			}
		});
		
		if (result.indexOf(";") > -1) {
			result = result.substr(0, result.length - 1);
		}
	} else {
		filterBox.ball.each(function(i){
			$(this).find("li[class='" + className + "']").each(function(){
				result += $(this).attr("num") + ",";
			});
		});
		
		if (result.indexOf(",") > -1) {
			result = result.substr(0, result.length - 1) + "~0";
		}
	}
	
	return result;
}

filterBox.selectNum = function(obj, value) {
    var ballmodeObj = $(obj).parents('.con').find('.ballmode');
    
	if (ballmodeObj.length > 0) {
		var selectObj = ballmodeObj.find('.select');
		
		if (selectObj.length > 0) {
			if (selectObj.attr('value') == 0) {
				if (obj.className == 'cur_dan') {
					obj.className = "li2";
				} else {
                    var danObj = $(obj).parents('.balls').find('.cur_dan');
					
					if (danObj.length >= 1) {
						cll_alert("胆码超出选号的个数");
						return;
					}
					
					obj.className = "cur_dan";
				}
			} else {
				if (obj.className == 'kill') {
					obj.className = "li2";
				} else {
                    var danObj = $(obj).parents('.balls').find('.kill');
					
					if (filterBox.ballNum - danObj.length <= 1) {
						cll_alert("杀号超出最大个数");
						return;
					}
					
					obj.className = "kill";
				}
			}
		} else {
			if (obj.className == 'lion') {
				obj.className = "li2";
			} else {
			    obj.className = "lion";
			}
		}
	} else {
		// 如果选择了分组过滤
		if (filterBox.isGroup() == 1) {
			if (obj.className == "lion") {
				cll_alert('此号码已被选择');
			} else {
				obj.className = "lion";
				
				// 将号码加入分组过滤当前选中的区
				filterBox.addGroupNum(value);
			}
		} else {
			if(obj.className == "cur_dan"){
				obj.className = "li2";
				$("#"+filterBox.playType+"_ftable").find(".set_dan .dan_list input[value="+value+"]").attr("checked",false);
			}else if(obj.className == "kill"){
				obj.className = "li2";
				$("#"+filterBox.playType+"_ftable").find(".killball .dan_list input[value="+value+"]").attr("checked",false);
			}else if(obj.className == "lion"){
				obj.className = "li2";
			}else{
				obj.className = "lion";
			}
		}
	}
}

// 获取分组过滤选项值
filterBox.isGroup = function() {
	return $("#"+filterBox.playType+"_ftable").find('.isgroup .select').attr('value');
}

// 分组过滤将号码加入当前选中的区
filterBox.addGroupNum = function(num) {
	var ulObj = $("#"+filterBox.playType+"_ftable").find('.groupcon .selecting ul');
    ulObj.append('<li><a href="javascript:;" onclick="filterBox.delGroupNum(this)">' + num + '</a></li>');
    
    filterBox.processArea();
}

// 分组过滤删除号码
filterBox.delGroupNum = function(obj) {
	var selectObj = $(obj).parents('.basketbox').find('select');
	filterBox.ball.find("li[num=" + $(obj).text() + "]").attr("class", "li2");
	$(obj).parent().remove();
	
	filterBox.processArea(selectObj);
}

// 分组过滤清空号码
filterBox.clearGroupNum = function(obj) {
	obj.parent().parent('.in').find('li a').each(function(){
		filterBox.delGroupNum($(this));
	});
}

// 分组过滤清空所有区的号码
filterBox.clearAllGroupNum = function(row) {
	if (row == undefined) {
		$("#"+filterBox.playType+"_ftable").find('.basketbox li').remove();
		$("#"+filterBox.playType+"_ftable").find('.basketbox select option').remove();
		$("#"+filterBox.playType+"_ftable").find('.basketbox select').append('<option>0</option>');
	} else {
		var nums = new Array();
		
        filterBox.ball.eq(row).find("li").each(function(i){
        	nums.push($(this).attr("num"));
		});
		
		$("#"+filterBox.playType+"_ftable").find('.basketbox li').each(function(i){
			if ($.inArray($(this).text(), nums) > -1) {
				$(this).remove();
			}
		});
		
		$("#"+filterBox.playType+"_ftable").find('.basketbox select').each(function(i){
		    filterBox.processArea($(this));
		});
	}
}

// 清除分组过滤信息
filterBox.clearGroupInfo = function() {
	filterBox.clearNumber();
	filterBox.clearAllGroupNum();
	$("#"+filterBox.playType+"_ftable").find('.basketbox').eq(0).click();
}

// 分组过滤切换清除信息
filterBox.clearInfoOnGroupChange = function() {
	$("#"+filterBox.playType+"_ftable").find(".set_dan .dan_list input[type='checkbox']").attr("checked",false);
	$("#"+filterBox.playType+"_ftable").find(".killball .dan_list input[type='checkbox']").attr("checked",false);
	
	var obj = $("#"+filterBox.playType+"_ftable").find('.grouptab select');
	obj.val(2);
	obj.change();
}

// 分组过滤处理区出号个数
filterBox.processArea = function(obj) {
    if (obj == undefined) {
    	obj = $("#"+filterBox.playType+"_ftable").find('.selecting select');
	}
	
    obj.find('option').remove();
	var count = obj.parents('.basketbox').find('li').length;
	
	if (count <= 0) {
		obj.append('<option>0</option>');
	} else {
		for (var i = 1; i <= count; i++) {
			obj.append('<option>' + i + '</option>');
		}
	}
}

// 获取分组过滤号码
filterBox.getGroupNum = function() {
	var result = "";
	
	$("#"+filterBox.playType+"_ftable").find('.basketbox').each(function(){
		var nums = "";
		
		$(this).find('li').each(function(){
			nums += $(this).text() + ',';
		});
		
		if (nums.indexOf(",") > -1) {
			nums = nums.substr(0, nums.length - 1);
			result += nums + "~" + $(this).find('select').val() + ";";
		}
	});
	
	if (result.indexOf(";") > -1) {
		result = result.substr(0, result.length - 1);
	}
	
	return result;
}

filterBox.selectRow = function(row, key, value, codes) {
	var guts = new Array(); // 胆码集合
	var kills = new Array(); // 杀号集合
	var ballmodeLen = $("#"+filterBox.playType+"_ftable").find(".ballmode").length;
	
	if (ballmodeLen == 0) {
		filterBox.ball.eq(row).find("li[class='cur_dan']").each(function(i){
			guts.push($(this).attr("num"));
		});
		
		filterBox.ball.eq(row).find("li[class='kill']").each(function(i){
			kills.push($(this).attr("num"));
		});
	}
	
	$("#"+filterBox.playType+"_ftable").find(".set_dan .dan_list").eq(row).find("input[type='checkbox']").attr("checked",false);
	$("#"+filterBox.playType+"_ftable").find(".killball .dan_list").eq(row).find("input[type='checkbox']").attr("checked",false);
	$("#"+filterBox.playType+"_ftable").find('.ballmode').eq(row).find('.cllradio a').attr('class', 'default');
	
	filterBox.clearNumber(row);
	
	// 如果选择了分组过滤
	if (filterBox.isGroup() == 1) {
		// 清空所有区的号码
		filterBox.clearAllGroupNum(row);
	}
	
	filterBox.ball.eq(row).find("li").each(function(i){
		if ($.inArray($(this).attr("num"), codes) > -1) {
			$(this).attr("class", "lion");
			
			// 如果选择了分组过滤
			if (filterBox.isGroup() == 1) {
				// 将号码加入当前选中的区
				filterBox.addGroupNum($(this).attr("num"));
			}
		}
	});
	
	if (ballmodeLen == 0) {
		$.each(codes, function(i,val){
	        if ($.inArray(val, guts) > -1) {
			    filterBox.ball.eq(row).find("li[num="+val+"]").attr("class","cur_dan");
			    $("#"+filterBox.playType+"_ftable").find(".set_dan .dan_list input[value="+val+"]").attr("checked",true);
	  	    } else if ($.inArray(val, kills) > -1) {
	  	    	filterBox.ball.eq(row).find("li[num="+val+"]").attr("class","kill");
			    $("#"+filterBox.playType+"_ftable").find(".killball .dan_list input[value="+val+"]").attr("checked",true);
	  	    }
	  	});
	}
}

//设胆单击事件
filterBox.setGuts = function(obj) {
	// 如果选择了分组过滤
	if (filterBox.isGroup() == 1) {
		obj.checked = false;
		cll_alert("选择了分组过滤不能设胆");
	    return;
	}
	
	var gutsMax = filterBox.getTargetCount() - 1;
	
	if(filterBox.getConditionValue("danMa").split(",").length > gutsMax){
		obj.checked = false;
		cll_alert("胆码超出选号的个数");
		return;
	}
	
	var numObj = filterBox.ball.find("li[num="+obj.value+"]");
	
	if (obj.checked) {
		if (numObj.attr("class") == "kill") {
			$("#"+filterBox.playType+"_ftable").find(".killball .dan_list input[value="+obj.value+"]").attr("checked",false);
		}
		
		numObj.attr("class","cur_dan");
	} else {
		numObj.attr("class","li2");
	}
}

// 杀号单击事件
filterBox.setKills = function(obj) {
	// 如果选择了分组过滤
	if (filterBox.isGroup() == 1) {
		obj.checked = false;
		cll_alert("选择了分组过滤不能杀号");
	    return;
	}
	
	var killsMax = filterBox.ballNum - filterBox.getTargetCount();
	
	if(filterBox.getConditionValue("killNum").split(",").length > killsMax){
		obj.checked = false;
		cll_alert("杀号超出最大个数");
		return;
	}
	
	var numObj = filterBox.ball.find("li[num="+obj.value+"]");
	
	if (obj.checked) {
		if (numObj.attr("class") == "cur_dan") {
			$("#"+filterBox.playType+"_ftable").find(".set_dan .dan_list input[value="+obj.value+"]").attr("checked",false);
		}
		
		numObj.attr("class","kill");
	} else {
		numObj.attr("class","li2");
	}
}

//其他过滤条件单击事件
filterBox.conditionClick = function(obj) {
	if ($(obj).val() == 'all') {
		if (obj.checked) {
			$(obj).parents('.opt_box').find('label').attr("class","bright");
			$(obj).parents('.opt_box').find('input').attr("checked",true);
		} else {
			$(obj).parents('.opt_box').find('label').attr("class","");
			$(obj).parents('.opt_box').find('input').attr("checked",false);
		}
	} else {
		if (obj.checked) {
			$(obj).parent().attr("class","bright");
		} else {
			$(obj).parent().attr("class","");
		}
	}
}

// 和值范围keyup事件
filterBox.hzScopeKeyup = function(obj) {
	obj.value = obj.value.replace(/\D/g,"");
	
	if (obj.value != '') {
		var objValue = parseInt(obj.value);
		var hzObjs = $("#"+filterBox.playType+"_ftable").find('input[name=heZhi]');
		var minVal = parseInt(hzObjs.eq(1).val());
		var maxVal = parseInt(hzObjs.eq(hzObjs.length - 1).val());
		
		if (objValue < minVal) {
			obj.value = minVal;
		} else if (objValue > maxVal) {
			obj.value = maxVal;
		}
	}
	
	$("#"+filterBox.playType+"_ftable").find('input[name=heZhi]').each(function(){
		$(this).attr("checked", false);
		$(this).parent().attr("class", "");
	});
	
	var startHzScope = $("#"+filterBox.playType+"_ftable").find('input[name=startHzScope]').val();
	var endHzScope = $("#"+filterBox.playType+"_ftable").find('input[name=endHzScope]').val();
	
	if (startHzScope != '' && endHzScope != '') {
		startHzScope = parseInt(startHzScope);
		endHzScope = parseInt(endHzScope);
		
		for (var i = startHzScope; i <= endHzScope; i++) {
			var hzObj = $("#"+filterBox.playType+"_ftable").find('input[name=heZhi][value=' + i + ']');
			hzObj.attr("checked", true);
			hzObj.parent().attr("class", "bright");
		}
	}
}

// 生成和值HTML
filterBox.genHzHtml = function(playType, startVal, endVal) {
	var hzHtml = '<label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="all" /><span>全选</span></label>';
	
    for (var i = startVal; i <= endVal; i++) {
  		hzHtml += '<label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="' + i + '"/><span>' + i + '</span></label>';
    }
    
    $('#' + playType + '_hz').html(hzHtml);
}

//判断奇偶指定样式(过滤结果框)
filterBox.oddEven = function(i){
	var className ="";
	if(i%2==0) className = "highlight";
	return className;
}

//删除一条过滤结果
filterBox.delData = function(value){
	filterBox.codes.remove(value);
	filterBox.playTypes.remove(value);
	var tr ="",len=0;
	len = filterBox.codes.size();
	for(var i =0;i<len;i++){
		tr += "<tr class="+ filterBox.oddEven(i+1) +"><td>"+ (i + 1) +"</td><td>"+ filterBox.codes.element(i).key +"</td><td>" + filterBox.codes.element(i).value + "</td><td><a href='javascript:;' class='del'  onclick='filterBox.delData(\""+ filterBox.codes.element(i).key +"\")'>X</a></td></tr>"
	}
	
	$("#filterResult").html(tr);
	filterBox.setSelectInfo(len);
}

//查找历史开奖数据
filterBox.findHistoryOpenResult = function(count){
	$("#verifyArea").empty();
	$.ajax({
			url:'/trade/openResult11x5.php?lotteryTypeValue='+ trade.lotteryType +'&countTerm=' + count+"&v="+new Date().getTime(),
			type: 'POST',
			dataType: 'json',
			timeout: 1000,
			beforeSend:function(){
				$("#verifyArea").html("<tr><td colspan ='4' style='color:red;text-align:center'>loading...</td></tr>");
				$("#missCountArea").html("0");
				$("#missMaxArea").html("0");
				$("#missAvgArea").html("0");
			},			
			success: function(data){  //Object {termData: Array[2000], resultData: Array[2000]}
				if(data != ""){
					var codes = filterBox.codes.keys();
					var termData = data.termData;
					var resultData = data.resultData;
					var tr ="",m = 0,t = -1,p = 0,top = true;
					
					for(var i = 0, len = termData.length; i < len; i++){
						var prizeNumber = filterBox.getMissAndPrizeData(resultData[i], codes);
						if(prizeNumber > 0){
							if(m > 0) t = 0;
							else t += 1;
							m = prizeNumber;
							tr += "<tr class="+ filterBox.oddEven(p+1) +"><td>"+ termData[i] +"</td><td>"+ resultData[i] +"</td><td>" + m + "</td><td class='miss'>" + t + "</td></tr>";
							p++;
						} else {
							if(m > 0) t = 0;
							else t += 1;
							m = 0;
						}
					}
					
					if(tr == ""){
						$("#verifyArea").html("<tr><td colspan='4'>该"+ termData.length +"期验证方案没有中奖记录</td></tr>");
						$("#missCountArea").html("0");
						$("#missMaxArea").html("0");
						$("#missAvgArea").html("0");
					}else{
						$("#verifyArea").html(tr);
						var count = 0, sum = 0, maxMiss = 0;
						$("#verifyArea").find("tr .miss").each(function(i){
							var miss = parseInt($(this).html());
							count += 1;
							sum	+= miss;
							maxMiss = maxMiss > miss ? maxMiss : miss;
						});
						
						$("#missCountArea").html($("#verifyArea").find("tr:first td:last").html());
						$("#missMaxArea").html(maxMiss);
						$("#missAvgArea").html(Number(sum/count).toFixed(2));					
					
					}

				}else{
					cll_alert("对不起，系统出错没有找到历史开奖记录！");
				}
			}
		}); 
}

//根据开奖结果，获取筛选数据中中奖注数
filterBox.getMissAndPrizeData = function(openResult, codes) {
	var zhushu = 0;
	
	for (var i = 0, len = codes.length; i < len; i++) {
		var playType = filterBox.playTypes.get(codes[i]);
		
		if (playType == 'rx6' || playType == 'rx7' || playType == 'rx8' || playType == 'rx9' || playType == 'rx10') {
			var n =	openResult.split(",");
			var flay = true;
			
			for(var j=0; j< n.length; j++){
				if(codes[i].indexOf(n[j])<0){
					flay = false;
					break;
				}
			}
			
			if(flay) zhushu += 1;
		} else if((playType == 'rx1' && trade.lotteryType != 162) || playType == 'qeZx' || playType == 'qsZx' || playType == 'q1st' || playType == 'x1st' || playType == 'x3qzh') {
			var n =	openResult.replace(/,/g,"|").toString().substring(0,8);
			
			if(n.indexOf(codes[i]) == 0) zhushu += 1;
		} else if (playType == 'x1ht') {
			var n = openResult.substring(0, 2);
			
			if (codes[i].indexOf(n) > -1) {
				zhushu += 1;
			}
		} else if (playType == 'x2lzh') {
			var n =	openResult.replace(/,/g, "|");
			
			if (n.indexOf(codes[i]) > -1) {
				zhushu += 1;
			}
		} else if (playType == 'x2lz') {
			var startIdx = 0;
			var endIdx = 5;
			
			for (var j = 0; j < 7; j++) {
				var n =	openResult.substring(startIdx, endIdx).split(",").sort().toString();
				var m = codes[i].split(",").sort().toString();
				
				if (m == n) {
					zhushu += 1;
					break;
				}
				
				startIdx += 3;
				endIdx += 3;
			}
		} else if (playType == 'qeZhux') {
			var n =	openResult.substring(0,5).split(",").sort().toString();
			var m = codes[i].split(",").sort().toString();
			
			if(m == n) zhushu += 1;
		} else if (playType == 'qsZhux' || playType == 'x3qz') {
			var n =	openResult.substring(0,8).split(",").sort().toString();
			var m = codes[i].split(",").sort().toString();
			
			if(m == n) zhushu += 1;
		} else if (playType == 'hz' || playType == 'lxzxhz' || playType == 'sxZhixHz' || playType == 'sxz3hz' || playType == 'sxz6hz' || playType == 'zxHz' || playType == 'zsHz' || playType == 'zlHz') {
			var hz = 0;
			var arr;
			
			if (playType == 'hz' || playType == 'zxHz' || playType == 'zsHz' || playType == 'zlHz') {
				arr = openResult.split(",");
			} else if (playType == 'lxzxhz') {
				arr = openResult.substring(6).split(",");
			} else if (playType == 'sxZhixHz' || playType == 'sxz3hz' || playType == 'sxz6hz') {
				arr = openResult.substring(4).split(",");
			}
			
			for (var j = 0; j < arr.length; j++) {
				hz += parseInt(arr[j]);
			}
			
			if (codes[i] == hz) {
				zhushu += 1;
			}
		} else if (playType == 'ethdx') {
			var n = openResult.split(",").sort().toString();
			var m = codes[i];
			m = m.substring(0, 1) + "#" + m.substring(1);
			m = m.split("#").sort().toString();
			
			if (m == n) {
				zhushu += 1;
			}
		} else if (playType == 'ethfx') {
			var n = openResult.split(",").sort().toString().replace(/,/g, '');
		    var m = codes[i].substring(0, 2);
		    
		    if (n.indexOf(m) == 0) {
		    	zhushu += 1;
		    }
		} else if (playType == 'sthdx') {
			var n = openResult.split(",").sort().toString().replace(/,/g, '');
			
			if (codes[i] == n) {
				zhushu += 1;
			}
		} else if (playType == 'sthtx' || playType == 'slhtx') {
	        var n = openResult.split(",").sort().toString().replace(/,/g, '');
			
			if (codes[i].indexOf(n) > -1) {
				zhushu += 1;
			}
		} else if (playType == 'yxfs') {
			var n =	openResult.substring(8);
            var m = codes[i].substring(8);
            
			if (m == n) {
				zhushu += 1;
			}
		} else if (playType == 'lxfs') {
			var n =	openResult.replace(/,/g, "|").substring(6);
            var m = codes[i].substring(6);
            
			if (m == n) {
				zhushu += 1;
			}
		} else if (playType == 'lxzxbh') {
            var n =	openResult.substring(6).split(",").sort().toString();
			
			if (codes[i] == n) {
				zhushu += 1;
			}
		} else if (playType == 'sxfs') {
            var n =	openResult.replace(/,/g, "|").substring(4);
            var m = codes[i].substring(4);
            
			if (m == n) {
				zhushu += 1;
			}
		} else if (playType == 'sxz3bz') {
			var n =	openResult.substring(4).split(",").sort().toString();
            var m = codes[i].substring(4).split("|").sort().toString();
            
			if (m == n) {
				zhushu += 1;
			}
		} else if (playType == 'sxz6bh') {
			var n =	openResult.substring(4).split(",").sort().toString();
			
			if (codes[i] == n) {
				zhushu += 1;
			}
		} else if (playType == 'wxfs' || playType == 'zx' || playType == 'glzx' || playType == 'zhixdsUpload') {
			var n = openResult.replace(/,/g, "|");
			
			if (codes[i] == n) {
			    zhushu += 1;
			}
		} else if (playType == 'wxtx') {
            var n = openResult.replace(/,/g, "|");
            var n2 = n.substring(0, 5); // 前3
            var n3 = n.substring(4); // 后3
            var n4 = n.substring(0, 3); // 前2
            var n5 = n.substring(6); // 后2
            
			var m = codes[i];
            var m2 = m.substring(0, 5); // 前3
            var m3 = m.substring(4); // 后3
            var m4 = m.substring(0, 3); // 前2
            var m5 = m.substring(6); // 后2
            
			if (m == n || m2 == n2 || m3 == n3 || m4 == n4 || m5 == n5) {
			    zhushu += 1;
			}
		} else if (playType == 'sixfs') {
			var n = openResult.replace(/,/g, "|").substring(2);
			var n2 = openResult.substring(2, 7); // 中间3位
            var n3 = openResult.substring(4); // 后3
            
			var m = codes[i].substring(2);
			var m2 = codes[i].substring(2, 7); // 中间3位
            var m3 = codes[i].substring(4); // 后3
            
			if (m == n || m2 == n2 || m3 == n3) {
			    zhushu += 1;
			}
		} else if (playType == 'dxds') {
			var flag = true;
			var nArr = openResult.substring(6).split(",");
			var mArr = codes[i].split("|");
			
			for (var j = 0; j < nArr.length; j++) {
				var dx = '';
				var ds = '';
				var n = parseInt(nArr[j]);
				
				if (n >= 5) {
					dx = '2'; // 大
				} else {
					dx = '1'; // 小
				}
				
				if (n % 2 == 0) {
					ds = '4'; // 双
				} else {
					ds = '5'; // 单
				}
				
				if (mArr[j] != dx && mArr[j] != ds) {
					flag = false;
					break;
				}
			}
			
			if (flag) {
				zhushu += 1;
			}
		} else if (trade.lotteryType == 153 && (playType == 'r1' || playType == 'r2')) {
			var flag = true;
			var nArr = openResult.split(",");
			var mArr = codes[i].split("|");
			
			for (var j = 0; j < mArr.length; j++) {
			    if (mArr[j] != '*' && mArr[j] != nArr[j]) {
			    	flag = false;
					break;
			    }
			}
			
			if (flag) {
				zhushu += 1;
			}
		} else if (trade.lotteryType == 162 && playType == 'rx3') {
			var count = filterBox.getPrizeCount(openResult, codes[i]);
			
			if (count == 3 || count == 2) {
				zhushu += 1;
			}
		} else if (trade.lotteryType == 162 && playType == 'rx4') {
            var count = filterBox.getPrizeCount(openResult, codes[i]);
			
			if (count == 4 || count == 3) {
				zhushu += 1;
			}
		} else if (trade.lotteryType == 162 && playType == 'rx5') {
            var count = filterBox.getPrizeCount(openResult, codes[i]);
			
			if (count == 5 || count == 4 || count == 3) {
				zhushu += 1;
			}
		} else if (playType == 'shun1' || playType == 'shun2') {
			var m = codes[i].substring(0, 2);
            
			if (openResult.indexOf(m) == 0) {
				zhushu += 1;
			}
		} else if (playType == 'shun3') {
			var n =	openResult.replace(/,/g, "|");
			var m = codes[i].substring(0, 5);
            
			if (n.indexOf(m) == 0) {
				zhushu += 1;
			}
		} else if (playType == 'wei2') {
			var n =	openResult.substring(0, 2);
			var m = codes[i];
			
			if (m.indexOf(n) > -1) {
				zhushu += 1;
			}
		} else if (playType == 'wei3') {
			var n =	openResult.substring(0, 5).split(",").sort().toString();
			var m = codes[i].split(",").sort().toString();
			
			if (m.indexOf(n) > -1) {
				zhushu += 1;
			}
		} else if (playType == 'wei4' || playType == 'wei5') {
			var n =	openResult.substring(0, 8).split(",").sort().toString();
			var m = codes[i].split(",").sort().toString();
			
			if (m.indexOf(n) > -1) {
				zhushu += 1;
			}
		} else if (playType == 'zhuxuan' || playType == 'glzhux' || playType == 'zuxdsUpload') {
			var n =	openResult.split(",").sort().toString();
            var m = codes[i].split("|").sort().toString();
            
			if (m == n) {
				zhushu += 1;
			}
		} else if (playType == 'zl') {
            var n =	openResult.split(",").sort().toString();
			
			if (codes[i] == n) {
				zhushu += 1;
			}
		} else if (playType == 'zlDt') {
			var n =	openResult.split(",").sort().toString();
            var m = codes[i].replace(/|/g, ",").split(",").sort().toString();
            
			if (m == n) {
				zhushu += 1;
			}
		} else {
			var flay = true;
			var n =	codes[i].split(",");
			
			for(var j = 0, l = n.length; j < l; j++){
				if(openResult.indexOf(n[j])<0){
					flay = false;
					break;
				}
			}
			
			if(flay) zhushu += 1;
		}
	}
	
	return zhushu;
}

/**
 * 获取中奖号码个数
 */
filterBox.getPrizeCount = function(openResult, code) {
	var count = 0;
	var n =	code.split(",");
	
	for (var i = 0, l = n.length; i < l; i++) {
		if (openResult.indexOf(n[i]) > -1) {
			count++;
		}
	}
	
	return count;
}

/**************************************投注框号码验证begin*************************************************************/
//投注框号码验证
filterBox.verifyBettingBox = function(){
	var len = trade.contentList.length;
	if(len == 0){ 
		cll_alert("投注内容为空!");
		return;
	}
    
	filterBox.bettingBox = new Array();
	filterBox.playTypes.clear();
	var verify = true;
	
	for (var i = 0; i < len; i++) {
		filterBox.bettingBox.push(trade.contentList[i].content);
		var playType = trade.contentList[i].playType.indexOf("sg") > 0 ? trade.contentList[i].playType.substring(0, trade.contentList[i].playType.length - 2) : trade.contentList[i].playType;
		filterBox.playTypes.put(trade.contentList[i].content, playType);
		
		if (verify) {
			if (trade.contentList[i].baseCount != 1) {
				verify = false;
				continue;
			}
		}
	}
	
	if (!verify) {
		cll_alert("本功能只支持单式号码验证!");
		return;
	}
	
	openDragWindow('lfAlert2','号码验证',true);
	
	$('#seCountTerm3').val(50);
	filterBox.findHistoryOpenResult2(50);
}

filterBox.findHistoryOpenResult2 = function(count){
	$("#verifyArea2").empty();
	$.ajax({
			url:'/trade/openResult11x5.php?lotteryTypeValue='+ trade.lotteryType +'&countTerm=' + count+"&v="+new Date().getTime(),
			type: 'POST',
			dataType: 'json',
			timeout: 1000,
			beforeSend:function(){
				$("#verifyArea2").html("<tr><td colspan ='4' style='color:red;text-align:center'>loading...</td></tr>");
				$("#missCountArea2").html("0");
				$("#missMaxArea2").html("0");
				$("#missAvgArea2").html("0");	
			},
			success: function(data){  //Object {termData: Array[2000], resultData: Array[2000]}
				if(data != ""){
					var codes = filterBox.bettingBox;
					var termData = data.termData;
					var resultData = data.resultData;
					var tr ="",m = 0,t = -1,p = 0,top = true;
					
					for(var i=0;i<termData.length;i++){
						var prizeNumber = filterBox.getMissAndPrizeData(resultData[i], codes);
						
						if(prizeNumber > 0){
							if(m > 0) t = 0;
							else t += 1;
							m = prizeNumber;
							tr += "<tr class="+ filterBox.oddEven(p+1) +"><td>"+ termData[i] +"</td><td>"+ resultData[i] +"</td><td>" + m + "</td><td class='miss'>" + t + "</td></tr>";
							p++;
						} else {
							if(m > 0) t = 0;
							else t += 1;
							m = 0;
						}
					}
					
					if(tr == ""){
						$("#verifyArea2").html("<tr><td colspan ='4'>该"+ termData.length +"期验证方案没有中奖记录</td></tr>");
						$("#missCountArea2").html("0");
						$("#missMaxArea2").html("0");
						$("#missAvgArea2").html("0");
					}else{
						$("#verifyArea2").html(tr);
						var count = 0, sum = 0, maxMiss = 0;
						$("#verifyArea2").find("tr .miss").each(function(i){
							var miss = parseInt($(this).html());
							count += 1;
							sum	+= miss;
							maxMiss = maxMiss > miss ? maxMiss : miss;
						});
						
						$("#missCountArea2").html($("#verifyArea2").find("tr:first td:last").html());
						$("#missMaxArea2").html(maxMiss);
						$("#missAvgArea2").html(Number(sum/count).toFixed(2));					
					
					}

				}else{
					cll_alert("对不起，系统出错没有找到历史开奖记录！");
				}
			}
		}); 
}
/**************************************投注框号码验证end*************************************************************/