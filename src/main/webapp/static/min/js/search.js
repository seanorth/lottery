/**
 * 判断是否为百度、360网页、搜狗、腾讯搜索引擎进入
 */
var hasSEEnter = false;
if(document.referrer.indexOf("baidu.com")!=-1 && ((window.location.href.indexOf("http://www.cailele.com/lottery/gd11x5/")!=-1) || (window.location.href.indexOf("http://www.cailele.com/lottery/11yun/")!=-1) || (window.location.href.indexOf("http://www.cailele.com/lottery/jlk3/")!=-1))){//百度
	hasSEEnter = true;
}else if(document.referrer.indexOf("sogou.com")!=-1 && ((window.location.href.indexOf("http://www.cailele.com/lottery/gd11x5/")!=-1) || (window.location.href.indexOf("http://www.cailele.com/lottery/11yun/")!=-1) || (window.location.href.indexOf("http://www.cailele.com/lottery/jlk3/")!=-1))){//搜狗
	hasSEEnter = true;
}else if(document.referrer.indexOf("soso.com")!=-1 && ((window.location.href.indexOf("http://www.cailele.com/lottery/gd11x5/")!=-1) || (window.location.href.indexOf("http://www.cailele.com/lottery/11yun/")!=-1) || (window.location.href.indexOf("http://www.cailele.com/lottery/jlk3/")!=-1))){//腾讯搜搜
	hasSEEnter = true;
}else if(document.referrer.indexOf("so.com")!=-1 && ((window.location.href.indexOf("http://www.cailele.com/lottery/gd11x5/")!=-1) || (window.location.href.indexOf("http://www.cailele.com/lottery/11yun/")!=-1) || (window.location.href.indexOf("http://www.cailele.com/lottery/jlk3/")!=-1))){//360搜索 http://www.so.com/
	hasSEEnter = true;
} 

/*if(hasSEEnter) {
	document.write('<style type="text/css">');
	document.write('.alert_bg {');
	document.write('background: none repeat scroll 0 0 #000000;');
	document.write('height: 100%;');
	document.write('left: 0;');
	document.write('opacity: 0.5;');
	document.write('filter: progid:DXImageTransform.Microsoft.Alpha(opacity=50);');
	document.write('-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(opacity=50)";');
	document.write('position: fixed;');
	document.write('top: 0;');
	document.write('width: 100%;');
	document.write('z-index: 99999;');
	document.write('}');
	document.write('.guide_reg_box {');
	document.write('background: url("http://img.cailele.com/img_new/common/guide_reg_bg.png") no-repeat scroll 0 0 transparent;');
	document.write('height: 340px;');
	document.write('left: 50%;');
	document.write('margin: -170px 0 0 -357px;');
	document.write('position: fixed;');
	document.write('top: 50%;');
	document.write('width: 714px;');
	document.write('z-index: 100000;');
	document.write('}');
	document.write('.guide_reg_box .close, .guide_reg_box .close:visited {');
	document.write('background: url("http://img.cailele.com/img_new/common/guide_reg_close.png") no-repeat scroll 0 0 transparent;');
	document.write('display: block;');
	document.write('height: 41px;');
	document.write('position: absolute;');
	document.write('right: 25px;');
	document.write('top: -15px;');
	document.write('width: 41px;');
	document.write('}');
	document.write('.guide_reg_box .reg_now {');
	document.write('background: url("http://img.cailele.com/img_new/common/guide_reg_btn.png") no-repeat scroll 0 0 transparent;');
	document.write('height: 48px;');
	document.write('left: 285px;');
	document.write('position: absolute;');
	document.write('top: 215px;');
	document.write('width: 230px;');
	document.write('}');
	document.write('</style>');

	document.write('<div id="guideRegAlertBg" class="alert_bg" style="display:none"></div>');
	document.write('<div id="guideRegBox" class="guide_reg_box" style="display:none">');
	document.write('<a href="javascript:;" id="guideRegClose" title="关闭" class="close" onclick="colseGuideReg();"></a>');
	document.write('<a href="#" onclick="openRegPage();" title="立刻注册领彩金" class="reg_now"></a>');
	document.write('</div>');

	document.getElementById("guideRegAlertBg").style.display = "";
	document.getElementById("guideRegBox").style.display = "";
}
*/

if(hasSEEnter) {
document.write('<style>');
document.write('.guide_reg_box2{position:fixed;right:10px;bottom:10px;width:220px;height:152px;background:#c9230f;}');
document.write('.guide_reg_box2 .close{position:absolute;right:5px;top:5px;display:block;width:39px;height:17px;background:url(http://img.cailele.com/img_new/lottery/guide_reg_close.png) no-repeat;}');
document.write('.guide_reg_box2{_position:absolute;_right:5px;_top:5px;}');
document.write('</style>');
document.write('<div id="guideRegBox" class="guide_reg_box2">');
document.write('<a href="javascript:;" onclick="openRegPage();"><img src="http://img.cailele.com/img_new/banner/201702/20170209-220x160.jpg" /></a>');
document.write('<a href="javascript:;" class="close" onclick="colseGuideReg();"></a>');
document.write('</div>');
}

function colseGuideReg(){
	document.getElementById("guideRegBox").style.display = "none";
	//document.getElementById("guideRegAlertBg").style.display = "none";
}

function openRegPage() {
	var url  = "http://www.zicaipiao.com/lottery/gd11x5/";
	if(window.location.href.indexOf("http://www.cailele.com/lottery/gd11x5/")!=-1) {
		url  = "http://www.zicaipiao.com/lottery/gd11x5/";
	} else if(window.location.href.indexOf("http://www.cailele.com/lottery/11yun/")!=-1) {
		url  = "http://www.zicaipiao.com/lottery/11yun/";
	} else if(window.location.href.indexOf("http://www.cailele.com/lottery/jlk3/")!=-1) {
		url  = "http://www.zicaipiao.com/lottery/jlk3/";
	}
	window.open(url);
	colseGuideReg();
}


