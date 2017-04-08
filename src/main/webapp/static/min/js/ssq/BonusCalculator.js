var calculator = {};
calculator.price = 2;
calculator.bonusValue = new Array();
calculator.initTerm = function (){
	//获取上一期一等奖、二等奖奖金
	
	var url = ctx_jsonp+"/trade/bonusCalculator.php";
	$.ajax({
	    type: "GET",
	    data: {lotteryTypeValue:trade.lotteryType},
	    url: url,
	    dataType: 'json',
	    success: function (data) {
			var result = data.result;
			//prize1^3^11666666#prize2^83^381361#prize3^1217^3000#prize4^69701^200#prize5^1386351^10#prize6^11343168^5
			var resultDetail = result.split("#");
			for(var i = 0;i < resultDetail.length;i++){
				var prize = resultDetail[i].split("^");
				if("prize1" == prize[0]){
					if(parseInt(prize[2]) == 0) {
						prize[2] = 5000000;//前一期一等奖未中,默认500万
					}
					$("#prize1").text(prize[2]+"元");
					calculator.bonusValue[0] = prize[2];
				}
				if("prize2" == prize[0]){
					$("#prize2").text(prize[2]+"元");
					calculator.bonusValue[1] = prize[2];
				}
			}
	    },
    	error: function (msg) {
    		cll_alert(msg);
    	}
    });
}

//打开弹层
calculator.openWindow = function(){
	var verify = true;
	if(trade.playType != "fs" && trade.playType != "dt"){
		cll_alert("本功能不支持该玩法!");
		return;
	}
	if(trade.contentList.length > 0 && trade.contentList.length != 1){
		verify = false;
	}
	if(!verify)	{
		cll_alert("本功能只支持单个玩法的单组号码!");
		return;
	}
	calculator.init();
	if(trade.contentList.length == 1){
		var playType = trade.contentList[0].playType;
		if(playType == "fs"){
			if(trade.contentList.length == 1){
				var c = trade.contentList[0].content.split("|");
				$("#redBallSelect").val(c[0].split(",").length)
				$("#blueBallSelect").val(c[1].split(",").length)
				$("#redBallSelect").change();
				$("#blueBallSelect").change();
				$("#ptli").mouseover();
			}
		}else if(playType == "dt"){
			if(trade.contentList.length == 1){
				var c = trade.contentList[0].content.split("|");
				var d = c[0].split("#");
				$("#dredBallSelect").val(d[0].split(",").length);
				$("#tredBallSelect").val(d[1].split(",").length);
				$("#bluesBallSelect").val(c[1].split(",").length);
				$("#dredBallSelect").change();
				$("#tredBallSelect").change();
				$("#bluesBallSelect").change();
				$("#dtli").mouseover();
			}
		}
	}else if(trade.contentList.length == 0){
		$("#ptli").mouseover();
	}
	openDragWindow('bonusDIV','奖金计算',true);
}


//初始化页面
calculator.init = function(){
	//初始化选号数
	$("#redBallSelect").val(6);
	$("#blueBallSelect").val(1);
	
	$("#mredBallSelect").val(0);
	$("#mblueBallSelect").val(0);
	
	$("#dredBallSelect").val(3);
	$("#tredBallSelect").val(3);
	$("#bluesBallSelect").val(1);
	
	$("#mdredBallSelect").val(0);
	$("#mtredBallSelect").val(0);
	$("#mbluesBallSelect").val(0);
	
	$("#prize1").text(calculator.bonusValue[0]+"元");
	$("#prize2").text(calculator.bonusValue[1]+"元");
	
	var u = $("#calTable tbody tr");
	for(var i = 0;i < 6;i++){
		u.eq(i).find("td").eq(2).text(0);//设置中奖注数
		u.eq(i).find("td").eq(4).text(0+"元");
	}
	
}

//普通选号计算
calculator.calculate = function(){
	var n = $("#redBallSelect").val() * 1,
    r = $("#blueBallSelect").val() * 1,
    i = $("#mredBallSelect").val() * 1,
    s = $("#mblueBallSelect").val() * 1,
    o = [0, 0, 0, 0, 0, 0];
    switch (i) {
        case 0:
        case 1:
        case 2:
            s > 0 && (o[5] += calculator.combo(n, 6));
            break;
        case 3:
            s > 0 && (o[5] += calculator.combo(n - i, 4) * calculator.combo(i, 2), o[5] += calculator.combo(n - i, 5) * calculator.combo(i, 1), o[5] += calculator.combo(n - i, 6), o[4] += calculator.combo(n - i, 3));
            break;
        case 4:
            s > 0 ? (o[5] += calculator.combo(n - i, 6), o[5] += calculator.combo(n - i, 5) * calculator.combo(i, 1), o[5] += calculator.combo(n - i, 4) * calculator.combo(i, 2), o[4] += calculator.combo(n - i, 3) * calculator.combo(i, 3), o[4] += calculator.combo(n - i, 2) * calculator.combo(i, 4) * (r - 1), o[3] += calculator.combo(n - i, 2)) : o[4] += calculator.combo(n - i, 2) * r;
            break;
        case 5:
            s > 0 ? (o[5] += calculator.combo(n - i, 6), o[5] += calculator.combo(n - i, 5) * calculator.combo(i, 1), o[5] += calculator.combo(n - i, 4) * calculator.combo(i, 2), o[4] += calculator.combo(n - i, 3) * calculator.combo(i, 3), o[4] += calculator.combo(n - i, 2) * calculator.combo(i, 4) * (r - 1), o[3] += calculator.combo(n - i, 2) * calculator.combo(i, 4), o[3] += calculator.combo(n - i, 1) * calculator.combo(i, 5) * (r - 1), o[2] += calculator.combo(n - i, 1)) : (o[4] += calculator.combo(n - i, 2) * calculator.combo(i, 4) * r, o[3] += calculator.combo(n - i, 1) * calculator.combo(i, 5) * r);
            break;
        case 6:
            s > 0 ? (o[5] += calculator.combo(n - i, 6), o[5] += calculator.combo(n - i, 5) * calculator.combo(i, 1), o[5] += calculator.combo(n - i, 4) * calculator.combo(i, 2), o[4] += calculator.combo(n - i, 3) * calculator.combo(i, 3), o[4] += calculator.combo(n - i, 2) * calculator.combo(i, 4) * (r - 1), o[3] += calculator.combo(n - i, 2) * calculator.combo(i, 4), o[3] += calculator.combo(n - i, 1) * calculator.combo(i, 5) * (r - 1), o[2] += calculator.combo(n - i, 1) * calculator.combo(i, 5), o[1] += r - 1, o[0]++) : (o[4] += calculator.combo(n - i, 2) * calculator.combo(i, 4) * r, o[3] += calculator.combo(n - i, 1) * calculator.combo(i, 5) * r, o[1] += r)
    }
    calculator.pageShow(o);
}

//胆拖选号计算
calculator.calculateDT = function(){
  	var n = $("#dredBallSelect").val() * 1,
    r = $("#tredBallSelect").val() * 1,
    i = $("#bluesBallSelect").val() * 1,
    s = $("#mdredBallSelect").val() * 1,
    o = $("#mtredBallSelect").val() * 1,
    u = $("#mbluesBallSelect").val() * 1;
    var a = [0, 0, 0, 0, 0, 0];
    a = calculator.DT(n, r, i, s, o, u),
    calculator.pageShow(a)
}

calculator.DT = function(e, n, r, i, s, o) {
    var u = s <= 6 - e ? s: 6 - e,
    a = new Array;
    for (var f = 0; f <= u; f++) a[f] = i + f;
    var l = [0, 0, 0, 0, 0, 0],
    c = 0;
    if (o == 1) for (var f = 0; f <= u; f++) c = calculator.Rank(a[f], 0),
    c != -1 && (l[c] += calculator.Ccombo(n - s, 6 - e - f) * (r - 1) * calculator.Ccombo(s, f)),
    c = calculator.Rank(a[f], 1),
    l[c] += calculator.Ccombo(n - s, 6 - e - f) * calculator.Ccombo(s, f);
    if (o == 0) for (var f = 0; f <= u; f++) c = calculator.Rank(a[f], 0),
    c != -1 && (l[c] += calculator.Ccombo(n - s, 6 - e - f) * r * calculator.Ccombo(s, f));
    return l
}

//页面显示
calculator.pageShow = function (n){
	var d = 0;//总奖金
	var u = $("#calTable tbody tr");
	for(var i = 0;i < n.length;i++){
		var f = Math.round(n[i]);
		u.eq(i).find("td").eq(2).text(f);//设置中奖注数
		//取到单注奖金
		var b = u.eq(i).find("td").eq(3).text().replace("元", "");
		//设置分项奖金
		var c = parseInt(b) * f;
		u.eq(i).find("td").eq(4).text(c+"元");
		d += c;
	}
	//设置总奖金
	$(".budget").html("总奖金预估为："+d+"元");
}

calculator.Rank = function(e, t) {
    var n = e * 1 + t * 1;
    switch (n) {
    case 7:
        return 0;
    case 6:
        return t == 1 ? 2 : 1;
    case 5:
        return 3;
    case 4:
        return 4;
    default:
        return t == 1 ? 5 : -1
    }
}

calculator.Tank = function(e) {
    return e == 0 ? 1 : calculator.Tank(e - 1) * e
}

calculator.Ccombo = function(e, n) {
    if (n <= e) {
        var r = calculator.Tank(e - n) * calculator.Tank(n);
        return r = calculator.Tank(e) / r,
        r
    }
    return 0
}

calculator.combo = function(e, t) {
    var n, r;
    e / 2 < t && (t = e - t);
    if (e < t || t < 0) return 0;
    if (e >= 0 && t === 0) return 1;
    n = 1,
    r = e;
    for (var i = 1; i <= t; i++) n *= i,
    i < t && (r *= e - i);
    return r / n
}

$(function (){
	calculator.initTerm();
	
	$("#dredBallSelect,#tredBallSelect,#bluesBallSelect").bind("change",
		function() {
		    var n = $("#dredBallSelect").val(),
		    r = $("#tredBallSelect").val(),
		    i = $("#bluesBallSelect").val(),
		    s = calculator.combo(r, 6 - n);
		    $("#dtscheme").html("投注金额："+s * i+"注，投注金额<span id='dttoshow'>"+ s * i * calculator.price +"</span>元");
		    var o = $("#dredBallSelect").val(),
		    u = 0,
		    a = new Array();
		    for (; u <= o * 1; u++){
		    	a.push("<option value=" + u + ">" + u + "</option>");
		    } 
		    $("#mdredBallSelect").html(a.join())
	})
	
	$("#dredBallSelect").bind("change",
		function() {
		    var t = $("#dredBallSelect").val() * 1,
		    n = $("#tredBallSelect").val() * 1;
		    n + t > 33 && (n = 33 - t, $("#tredBallSelect").get(0).selectedIndex = n - 1)
	})
	
	$("#tredBallSelect").bind("change",
		function() {
		    var t = $("#dredBallSelect").val() * 1,
		    n = $("#tredBallSelect").val() * 1;
		    n + t > 33 && (t = 33 - n, $("#dredBallSelect").get(0).selectedIndex = t - 1)
	})
	
	$("#mdredBallSelect").bind("change",
		function() {
		    var t = $("#mdredBallSelect").val() * 1,
		    n = 0,
		    r = new Array(),
		    i = 7 - t <= $("#tredBallSelect").val() * 1 ? 7 - t: $("#tredBallSelect").val() * 1 + 1;
		    for (; n < i; n++)
		    {
		    	r.push("<option value=" + n + ">" + n + "</option>");
		    } 
		    $("#mtredBallSelect").html(r.join())
	})
	
	$("#redBallSelect,#blueBallSelect").bind("change",
		function() {
		    var n = $("#redBallSelect").val(),
		    r = $("#blueBallSelect").val(),
		    i = calculator.combo(n, 6) * calculator.combo(r, 1);
		    $("#pscheme").html("投注金额："+i+"注，投注金额<span id='ptoshow'>"+i * calculator.price+"</span>元");
	})
})