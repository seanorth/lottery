tradeInfo = {};

//定时更新
tradeInfo.setUp = function(id, cb, s){
	document.getElementById(id) && (cb(), window.setInterval(cb, s*1000));	
}

//初始化
tradeInfo.init = function(o){
	tradeInfo.xml = ctx_jsonp+"/static/3d/";
	tradeInfo.posName = ["百","十","个"];
	o = o || {};

	tradeInfo.setUp("openPanel", tradeInfo.setOpenHTML, o.open||100); //开奖号码
	tradeInfo.setUp("openPanel", tradeInfo.setZhixMiss, o.missClickBoard||100);//直选遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setZhixHzMiss, o.missClickBoard||100);//直选和值遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setZusHzMiss, o.missClickBoard||100);//组3和值遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setZulHzMiss, o.missClickBoard||100);//组6和值遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setNoPostionMiss, o.missClickBoard||100);//不按位遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setKuaDuMiss, o.missClickBoard||100);//跨度遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setDXMiss, o.missClickBoard||100);//大小遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setJOMiss, o.missClickBoard||100);//奇偶遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setTLJMiss, o.missClickBoard||100);//拖拉机遗漏
	tradeInfo.setUp("openPanel", tradeInfo.setSTHMiss, o.missClickBoard||100);//猜三同遗漏
	
	tradeInfo.setUp("openPanel", tradeInfo.setBwYlFx, o.qwYlFx||60);
	tradeInfo.setUp("openPanel", tradeInfo.setSwYlFx, o.qwYlFx||60);
	tradeInfo.setUp("openPanel", tradeInfo.setGwYlFx, o.qwYlFx||60);	//冷热分析
	
	tradeInfo.setUp("newlyPrizeMar", tradeInfo.setNewlyPrizeMar, o.newlyPrizeMar||100);
	moveList("newlyPrizeMar");
	setLimitNumber(tradeInfo.xml);//限号
}

//开奖号码
tradeInfo.setOpenHTML = function(){
	$("#openPanel").load(tradeInfo.xml+'newlyopenlist.html?v='+new Date().getTime());
}

//直选遗漏
tradeInfo.setZhixMiss = function() {
	var missDiv = new Array("zx_miss","zhuxuan_miss","zxBh_miss","bx3_miss","bx6_miss","tx_miss","1d_miss","2d_miss");
	var callback = function(xmlDoc) {
		for(var i=1; i<=3; i++){
			$(xmlDoc).find("r"+i).each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var n = obj.attr('c'+c);
							$(divEle).html(n);
						});	
					}
				}
			});
		}
	}
	
	$.get(tradeInfo.xml+'zhixMiss.xml?v='+new Date().getTime(),callback);
}

//直选和值遗漏(和值:0-27)
tradeInfo.setZhixHzMiss = function() {
	var missDiv = new Array("zxHz_miss","hs_miss");
    var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var index = (i-1)*14 + c;
							var n = obj.attr('c'+index);
							$(divEle).html(n);
						});	
					}
				}
			});
		}
	}
	
	$.get(tradeInfo.xml+'zhixHzMiss.xml?v='+new Date().getTime(),callback);
}

//组3和值遗漏(和值:1-26)
tradeInfo.setZusHzMiss = function() {
	var missDiv = new Array("zusHz_miss");
    var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							if(i==1) {
								c = c+1;
							}
							if(i==2) {
								c = c+14;
							}
							var n = obj.attr('c'+c);
							$(divEle).html(n);
						});	
					}
				}
			});
		}
	}
	
	$.get(tradeInfo.xml+'zusHzMiss.xml?v='+new Date().getTime(),callback);
}


//组6和值遗漏(和值:3-24)
tradeInfo.setZulHzMiss = function() {
	var missDiv = new Array("zulHz_miss");
    var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							if(i==1) {
								c = c+3;
							}
							if(i==2) {
								c = c+14;
							}
							var n = obj.attr('c'+c);
							$(divEle).html(n);
						});	
					}
				}
			});
		}
	}
	
	$.get(tradeInfo.xml+'zulHzMiss.xml?v='+new Date().getTime(),callback);
}

//不按位遗漏
tradeInfo.setNoPostionMiss = function() {
	var missDiv = new Array("zs_miss","zl_miss","zlDt_miss","zxDt_miss","c1d_miss","c2d_miss");
	var callback = function(xmlDoc) {
		for(var i=1; i<=2; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var n = obj.attr('c'+c);
							$(divEle).html(n);
						});	
					}
				}
			});
		}
	}
	
	$.get(tradeInfo.xml+'noPostionMiss.xml?v='+new Date().getTime(),callback);
}

//大小
tradeInfo.setDXMiss = function() {
	var id_info = "zhdx_miss";
	var callback = function(xmlDoc) {
		$(xmlDoc).find("r").each(function(j){
			var obj = $(this);
			var n = obj.attr('cm');
			j++;
			$("#"+id_info+j).html(n);
			
		});
	}
	$.get(tradeInfo.xml+'zhdx_miss_table.xml?v='+new Date().getTime(),callback);
}

//奇偶
tradeInfo.setJOMiss = function() {
	var id_info = "zhjo_miss";
	var callback = function(xmlDoc) {
		$(xmlDoc).find("r").each(function(j){
			var obj = $(this);
			var n = obj.attr('cm');
			j++;
			$("#"+id_info+j).html(n);
			
		});
	}
	$.get(tradeInfo.xml+'zhjo_miss_table.xml?v='+new Date().getTime(),callback);
}
//拖拉机
tradeInfo.setTLJMiss = function() {
	var id_info = "zhtlj_miss";
	var callback = function(xmlDoc) {
		$(xmlDoc).find("r").each(function(j){
			var obj = $(this);
			var n = obj.attr('cm');
			j++;
			$("#"+id_info+j).html(n);
			
		});
	}
	$.get(tradeInfo.xml+'zhtlj_miss_table.xml?v='+new Date().getTime(),callback);
}
//三同号
tradeInfo.setSTHMiss = function() {
	var id_info = "zhsth_miss";
	var callback = function(xmlDoc) {
		$(xmlDoc).find("r").each(function(j){
			var obj = $(this);
			var n = obj.attr('cm');
			j++;
			$("#"+id_info+j).html(n);
			
		});
	}
	$.get(tradeInfo.xml+'zhsth_miss_table.xml?v='+new Date().getTime(),callback);
}
//跨度遗漏
tradeInfo.setKuaDuMiss = function() {
	var missDiv = new Array("zxKd_miss");
	var callback = function(xmlDoc) {
		for(var i=1; i<=1; i++){
			$(xmlDoc).find("r1").each(function(j){
				var obj = $(this);
				for(var k = 0; k< missDiv.length; k++){
					if($("#"+missDiv[k]+"_"+i).length > 0){
						$("#"+missDiv[k]+"_"+i+">div").each(function(c, divEle){
							var n = obj.attr('c'+c);
							$(divEle).html(n);
						});	
					}
				}
			});
		}
	}
	
	$.get(tradeInfo.xml+'kuaDuMiss.xml?v='+new Date().getTime(),callback);
}

//百位遗漏分析
tradeInfo.setBwYlFx = function(){
	$("#tab_lrfx_1_1").load(tradeInfo.xml+'bwlrfx.html?v='+new Date().getTime());
}

//十位遗漏分析
tradeInfo.setSwYlFx = function(){
	$("#tab_lrfx_1_2").load(tradeInfo.xml+'swlrfx.html?v='+new Date().getTime());
}

//个位遗漏分析
tradeInfo.setGwYlFx = function(){
	$("#tab_lrfx_1_3").load(tradeInfo.xml+'gwlrfx.html?v='+new Date().getTime());
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

//自动合买遗漏和值
//直选
tradeInfo.autozhiHzMiss = function (str,id){
	tradeInfo.xml = "/static/3d/";
	var o=str.split(",");
	var dx="";
	 var callback = function(xmlDoc) {
		$(xmlDoc).find("r1").each(function(){
			var obj = $(this);
			for(var f=0;f<o.length;f++){
				var index=o[f];
				var n = obj.attr('c'+index);
				dx=dx +","+n; 
			}
		});
 		dx=dx.substring(1,dx.length);
 		tradeInfo.array(dx,id);
	 }
	 $.get(tradeInfo.xml+'zhixHzMiss.xml?v='+new Date().getTime(),callback);
	 
	 
}
//组三
tradeInfo.autozusHzMiss = function (str,id){
	tradeInfo.xml = "/static/3d/";
	var o=str.split(",");
	var dx="";
	 var callback = function(xmlDoc) {
		$(xmlDoc).find("r1").each(function(){
			var obj = $(this);
			for(var f=0;f<o.length;f++){
				var index=o[f];
				var n = obj.attr('c'+index);
				dx=dx +","+n; 
			}
		});
 		dx=dx.substring(1,dx.length);
 		tradeInfo.array(dx,id);
	 }
	 $.get(tradeInfo.xml+'zusHzMiss.xml?v='+new Date().getTime(),callback);
	 
	 
}
//组六
tradeInfo.autozuLHzMiss = function (str,id){
	tradeInfo.xml = "/static/3d/";
	var o=str.split(",");
	var dx="";
	 var callback = function(xmlDoc) {
		$(xmlDoc).find("r1").each(function(){
			var obj = $(this);
			for(var f=0;f<o.length;f++){
				var index=o[f];
				var n = obj.attr('c'+index);
				dx=dx +","+n; 
			}
		});
 		dx=dx.substring(1,dx.length);
 		tradeInfo.array(dx,id);
	 }
	 $.get(tradeInfo.xml+'zulHzMiss.xml?v='+new Date().getTime(),callback);
	 
	 
}

 //排序
 function sortNumber(a,b)
{
	return a - b
}
 tradeInfo.array =function(dx,id){
 	var a =dx.split(",");
	$("#miss_"+id).html(a.sort(sortNumber)[0]);
 } 
