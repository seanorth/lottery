/**
* 彩乐乐基本函数 v1.0
* author: sxh
* date: 2011-12-13
*/

var cll = {};

/**
 * 排列结果
 * 
 * 调用例子:
 * var r = mathTool.permute("123".split(""),3);
 * document.write('排列：<ol><li>'+r.join('</li><li>')+'</li></ol>');
 */
cll.permute = function(arr, num){
	var r=[];
	(function f(t,a,n){
		if (n==0) return r.push(t);
		for (var i=0,l=a.length; i<l; i++){
			f(t.concat(a[i]), a.slice(0,i).concat(a.slice(i+1)), n-1);
		}
	})([],arr,num);
	return r;
}

/**
 * 组合结果
 * 
 * 调用例子:
 * var r = mathTool.combine("123".split(""),2);
 * document.write('排列：<ol><li>'+r.join('</li><li>')+'</li></ol>');
 */
cll.combine = function(arr, num){
	var r=[];
	(function f(t,a,n){
		if (n==0) return r.push(t);
		for (var i=0,l=a.length; i<=l-n; i++){
			f(t.concat(a[i]), a.slice(i+1), n-1);
		}
	})([],arr,num);
	return r;
}

//排列个数
cll.P = function (n,m){
	var c = 1;
	for (var i=n-m; i<n; c*=++i);
	return c;
}

//组合个数
cll.C = function (n,m){
	var n1=1, n2=1;
	for (var i=n,j=1; j<=m; n1*=i--,n2*=j++);
	return n1/n2;
}

//获取指定范围的随机数
cll.random = function (s,e){
	return Math.floor(Math.random()*(e+1-s)) + s;
}

//冒泡排序
cll.bubbleSort = function(arr){
	for (var i=arr.length-1;i>0;i--){
		for (var j=0;j<i;j++){
			if (arr[j]>arr[j+1]){
				cll.swap(arr,j,j+1);
			}
		}
	}
}

//冒泡 对像排序
cll.objcetBubbleSort = function(arr,attribe){
	for (var i=arr.length-1;i>0;i--){
		for (var j=0;j<i;j++){
			var j1 = eval("arr[j]."+attribe);
			var j2 = eval("arr[j+1]."+attribe);
			if (parseFloat(j1,10)>parseFloat(j2,10  )){
				cll.swap(arr,j,j+1);
			}
		}
	}
}

//元素交换
cll.swap = function(arr,i,j){
	var temp = arr[i];
	arr[i] = arr[j];
	arr[j] = temp;
}

//是否数字
cll.isNumber = function (str) {
    return cll.number("b").test(str);
}

//数字
cll.number = function (condition) {
    return cll.parse(/\-?\d+(?:\.\d+)?/, condition);
}
/**
* 验证正整数
*/
cll.isPositiveNumber=function(str){
	var reg=/^\d+$/; 
	return reg.test(str);
}

//正则解释
cll.parse = function (re,condition){
	re = condition.indexOf("b")>-1 ? "^"+re.source+"$" : re.source;
	return new RegExp(re, condition.replace("b",""));
}

cll.keepSession = function(){
	var dataUrl = ctx_jsonp+"/interface/InitServlet?T="+(new Date().getTime().toString(36));
	var r = $.get(dataUrl);
	//alert(r);
	window.setTimeout(cll.keepSession, 1*60*1000);
}

//秒转换为倒计时显示
cll.rtForShow = function (rt){
	var mi = 60;
	var hh = mi * 60;
	var dd = hh * 24;
	
	var day = Math.floor(parseInt(rt / dd));
	var second = Math.floor(rt % 60);
	var hour = Math.floor((rt - second) / hh - (day*24));
	var minute = Math.floor((rt - second) / mi - (day*24*60) - (hour*60));
	
	if(rt<=0){
		day = 0;
		hour = 0;
		minute = 0;
		second = 0;
	}
	
	hour = hour < 10 ? "0" + hour : "" + hour;
    minute = minute < 10 ? "0" + minute : "" + minute;
    second = second < 10 ? "0" + second : "" + second;
	
	return  day+ ":" + hour+ ":" + minute + ":" + second + "";
}

//秒转换为倒计时显示--追号与智能追号显示使用
cll.rtForChaseShow = function (rt){
	var mi = 60;
	var hh = mi * 60;
	var dd = hh * 24;
	
	var day = Math.floor(parseInt(rt / dd));
	var second = Math.floor(rt % 60);
	var hour = Math.floor((rt - second) / hh - (day*24));
	var minute = Math.floor((rt - second) / mi - (day*24*60) - (hour*60));
	
	if(rt<=0){
		day = 0;
		hour = 0;
		minute = 0;
		second = 0;
	}
	
	hour = hour < 10 ? "0" + hour : "" + hour;
    minute = minute < 10 ? "0" + minute : "" + minute;
    second = second < 10 ? "0" + second : "" + second;
	
	var show = new Array();
	show.push("<span>离投注截止时间还有：</span>");
	
	if(day != "0"){
		show.push("<em >"+day+"</em>天");
	}
	if(hour != "00"){
		show.push("<em >"+hour+"</em>时");
	}
	show.push("<em >"+minute+"</em>分");
	show.push("<em >"+second+"</em>秒");
	
	return  show.join("");
}

//累加数组之和
cll.getArraySum = function (arr){
	var sum = 0;
	for (var i=0; i<arr.length; i++){
		sum += parseInt(arr[i],10);
	}
	return sum;
}
