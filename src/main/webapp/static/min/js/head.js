//登录成功之后执行方法
var loginSucceedFunction = null;
//退出成功之后执行方法
var exitSucceedFunction = null;

//获取页面对象
function $cailele_index_fid(id) { return document.getElementById(id);}

//获取页面对象
function $cailele_index_fidObj(obj) { 
	if(typeof(obj) == "object"){
		return obj;
	}else if(typeof(obj) == "string"){
		return $cailele_index_fid(obj);
	}
	return null;
}

//代购合买协议勾选触发购买按钮是否可用
function agreeClick(callF){
	if($("#agree").attr("checked")){
		$("#buyBtn").attr("class","btnBuy-orange");
		if(callF){
			$("#buyBtn").bind("click",callF);
		}else{
			$("#buyBtn").bind("click",function(){tradeSubmit(1)});
		}
	}else{
		$("#buyBtn").attr("class","btnBuy-gray");
		$("#buyBtn").unbind('click').removeAttr('onclick');
		$("#buyBtn").bind('click',function(){highlightAgreeText();});
	}
}

/**
 * 协议勾选触发购买按钮是否可用
 */
function agreeClickNew(callF) {
	if ($("#agree").attr("checked")) {
		$("#buyBtn").attr("class", "default");
		
		if (callF) {
			$("#buyBtn").bind("click", callF);
		} else {
			$("#buyBtn").bind("click", function(){tradeSubmit()});
		}
	} else {
		$("#buyBtn").attr("class", "disable");
		$("#buyBtn").unbind('click').removeAttr('onclick');
	}
}

//高亮协议文字
function highlightAgreeText(){
	$('span[class|=agreement]').attr('class','agreement striking');
}

//判断是否为ie5、6
function isIE6(){ return (/MSIE (5\.5|6\.)/.test(navigator.userAgent));}

//禁用对象的右击事件和选中事件
function enjoinMenuAndRClick(obj) {
	try{
	    obj.oncontextmenu = function () { return false; }
	    obj.onselectstart = function () { return false; }
    }catch(e){}
    return;
}

/***---------------------------------- 最顶部的(登录)信息 begin ----------------------------------***/
//填充最顶部的信息(用户登录信息 -- 购彩帮助等信息)
//<a href="http://www.cailele.com/promotion/FanDian.shtml" target="_blank" class="top-red" title="返回计划,高达10%"><img src="http://img.cailele.com/img_new/top/top_text.gif"></a><font>|</font>

var login_frame_url = ctx_static_proxy+"/login.shtml"; // 做延迟加载 20130814 zf 

function writeTopLine(){
	var domain = document.domain.toLowerCase();
	if(domain == "bbs.cailele.com" || domain == "zs.cailele.com" || domain == "yl.cailele.com" || domain == "kjh.cailele.com" || domain == "live.cailele.com" || domain == "odds.cailele.com" || domain == "info.cailele.com" || domain == "i.cailele.com"){
		document.domain = "cailele.com";
		login_frame_url = "http://www.cailele.com/loginCB.shtml";
	}
	document.write('<div class="sitenav"><div class="layout">' +
               '<div id="loginDIVbg"></div><div id="loginDIV">' +
               '<div class="top" id="loginTitleDIV"><a href="javascript:void(0);" class="float" title="关闭" id="loginTitleCloseBtn"' + 
               'onmouseover="this.className=\'floathover\';" onmouseout="this.className=\'float\';"></a>请登录</div>' +
               '<iframe src="'+login_frame_url+'" name="loginframe" id="loginframe" width="380px" height="230px" scrolling="no" style="width:380px;" frameborder="0"></iframe>' +
               '</div><div class="sitelogin" id="topLoginLeftDIV">' +
	           '     <div class="logging"><div class="cllloading"><p><i class="loadimg"></i><span class="subtxt">正在登录，请稍候..</span></p></div></div>' +
               '	</div>' +
               '<div class="sitenavbar">' +
			   '	<ul class="cllmenu">' +
			  /* '    	<li class="menu vip">' +
			   '	        <div class="menu_hd"><a href="http://www.cailele.com/subject/vip/vip.shtml" target="_blank"><span class="iflag"></span>VIP俱乐部</a></div>' +
			   '        </li>' +
			   '        <li class="pipe">|</li>' +*/
			   '       <li class="menu preferential" onmouseover="this.className=\'menu preferential menu_hover\'" onmouseout="this.className=\'menu preferential\'">' +
			   '           <div class="menu_hd"><a href="http://www.cailele.com/promotion/Preferential.shtml" target="_blank"><span class="iconfont_hd">&#xe626;</span>优惠活动</a><i class="arrow"><s class="s1"></s><s class="s2"></s></i></div>' +
			   '          <div class="menu_bd meun_list">' +
		       '               <div class="menu_bd_panel">' +
			   '                  <a href="http://www.cailele.com/subject/jifen/" target="_blank">积分乐园</a>' +
			   '                  <a href="http://www.cailele.com/uc/index.php" target="_blank">签到领积分</a>' +
			   '                  <a href="http://www.cailele.com/promotion/Preferential.shtml" target="_blank">网站优惠</a>' +
			   '              </div>' +
			   '          </div>' +
			   '      </li>' +
			   '      <li class="pipe">|</li>' +
			   '      <li class="menu gobbs">' +
			   '          <div class="menu_hd"><a href="http://bbs.cailele.com/" target="_blank"><span class="iflag"></span>论坛</a></div>' +
			   '      </li>' +
			   '      <li class="pipe">|</li>' +
			   '      <li class="menu help">' +
			   '          <div class="menu_hd"><a href="http://www.cailele.com/help/" target="_blank"><span class="iflag"></span>帮助</a></div>' +
			   '      </li>' +
			   '  </ul>' +
			   '</div>' +
               '</div></div>');
}

function $cailele_loginframe(){
	var iframe = document.getElementById("loginframe");
	if(iframe)
		return iframe.contentWindow;
	return null;
}

function $cailele_loginframe_fid(id){
	return $cailele_loginframe().document.getElementById(id); 
}

//隐藏登录
function hideLoginDIV() {
	try{$cailele_index_fid("loginDIV").focus();}catch(e){}
    $cailele_index_fid("loginDIV").style.display = "none";
    $cailele_index_fid("loginDIVbg").style.display = "none";
    $cailele_index_fid("loginPanelBgDIV").style.display = "none";
    $cailele_loginframe_fid("errorHintSpan").style.display = "none";
    changeLoginPanelBgSize();
    showHideSelect(1);
    return;
}
//打开登录面板(可拖动)
function openLoginWindow(resultFN) {
	var bgId = "loginPanelBgDIV";
	var contentId = "loginDIV";
	var contentBgId = "loginDIVbg";
	var titleId = "loginTitleDIV";
	var closeId = "loginTitleCloseBtn";
	var border = 4;
	var bgDIV = $cailele_index_fid(bgId);
	if (!bgDIV) {
	    bgDIV = document.createElement("DIV");
	    bgDIV.id = bgId;
	    bgDIV.style.backgroundColor = "#000000";
	    bgDIV.style.width = "100%";
	    bgDIV.style.position = "absolute";
	    bgDIV.style.left = "0px";
	    bgDIV.style.top = "0px";
	    bgDIV.style.zIndex = 100000;
	    bgDIV.style.opacity = "0.2";
	    bgDIV.style.filter = "alpha(opacity:20)";
	    bgDIV.onselectstart = function () { return false; }
	    bgDIV.oncontextmenu = function () { return false; }
	    document.body.appendChild(bgDIV);
	}

	var divResize = function () {
       var ch = document.documentElement.clientHeight;
       var bh = document.documentElement.scrollHeight;
       if (ch > bh)
           bgDIV.style.height = ch + "px";
       else
           bgDIV.style.height = bh + "px";

       var cw = document.documentElement.clientWidth;
       var bw = document.all ? document.body.scrollWidth : document.documentElement.scrollWidth;
       if (cw > bw)
           bgDIV.style.width = cw + "px";
       else
           bgDIV.style.width = bw + "px";
       return;
   }
   onresize = divResize;
   divResize();
   
   var getScrollTop = function(){
   	 	var _scrollTop = document.documentElement.scrollTop;
   		if(_scrollTop == null || _scrollTop == 0)
    		_scrollTop = document.body.scrollTop;
    	return _scrollTop;
   }

   bgDIV.style.display = "inline-block";
   var cDIV = $cailele_index_fid(contentId);
   cDIV.style.display = "inline-block";
   cDIV.style.opacity = "1";
   cDIV.style.filter = "alpha(opacity:100)";
   cDIV.style.top = (((document.documentElement.clientHeight - cDIV.offsetHeight) / 2) + getScrollTop() + border - 50) + "px";
   cDIV.style.left = (((document.documentElement.clientWidth - cDIV.offsetWidth) / 2) + document.documentElement.scrollLeft + border) + "px";
   cDIV.style.zIndex = parseInt(bgDIV.style.zIndex) + 2;

	var titleDIV = $cailele_index_fid(titleId);
	var setWidthHiehgt = function (cBgDIV, div) {
	    try {
	    	changeLoginPanelBgSize(cBgDIV,div);
	    } catch (e) {  }
	}

    var cBgDIV = $cailele_index_fid(contentBgId);
    if (cBgDIV) {
        cBgDIV.style.display = "inline-block";
        setWidthHiehgt(cBgDIV, cDIV);
        cBgDIV.style.zIndex = parseInt(bgDIV.style.zIndex) + 1;
    }

    var closeBtn = $cailele_index_fid(closeId);
    closeBtn.style.cursor = "pointer";
    closeBtn.onclick = function () {
    	try{$cailele_index_fid("loginDIV").focus();}catch(e){}
        cDIV.style.display = "none";
        bgDIV.style.display = "none";
        if (cBgDIV)
            cBgDIV.style.display = "none";
       $cailele_loginframe_fid("errorHintSpan").style.display = "none";
       setWidthHiehgt(cBgDIV, cDIV);
       showHideSelect(1);
       
       if((window.location.href).indexOf("1.cailele.com/uc")>-1)
      	 window.location.href="/index.shtml"
       return;
    }

    var isIE_t = document.all ? true : false;

    if (isIE_t) {
        titleDIV.style.cursor = "move";
    }

    try {
    	showHideSelect(0);
    	//$cailele_loginframe().getImgSrc();
    	var usertext = $cailele_loginframe_fid("usernamenew");
    	$cailele_loginframe().resetUserName(usertext);
   		$cailele_loginframe().resetPassword($cailele_loginframe_fid("passwordnew"));
   		$cailele_loginframe().resetInput($cailele_loginframe_fid("validatecodenew"));
       	$cailele_loginframe().resultFN = resultFN;
       	$cailele_loginframe().loginSucceedFunction = loginSucceedFunction;
       	$cailele_loginframe().exitSucceedFunction = exitSucceedFunction;
       	try{$cailele_loginframe().checkShowValidateCode();}catch(e){}
       	//usertext.focus();
    } catch (e) { }

     titleDIV.onselectstart = function () { return false; }
     titleDIV.oncontextmenu = function () { return false; }

     var od = cDIV;
     var odBg = cBgDIV;
     var dx, dy, mx, my, mouseD;
     var odrag;

     cDIV.onmouseup = function () {
         mouseD = false;
         odrag = "";

         if (isIE_t) {
             od.releaseCapture();
             od.style.filter = "alpha(opacity:100)";
         }
         else {
             titleDIV.style.cursor = "default";
             window.releaseEvents(Event.MOUSEMOVE);
             od.style.opacity = 1;
         }
     }
     titleDIV.onmousedown = function (e) {
         odrag = this;
         var e = e ? e : event;
         if (e.button == (document.all ? 1 : 0)) {
             mouseD = true;
             mx = e.clientX;
             my = e.clientY;
             od.style.left = od.offsetLeft + "px";
             od.style.top = od.offsetTop + "px";
             setWidthHiehgt(odBg, od);
             if (isIE_t) {
                 od.setCapture();
                 od.style.filter = "alpha(opacity:50)";
             }
             else {
                 titleDIV.style.cursor = "move";
                 window.captureEvents(Event.MOUSEMOVE);
                 od.style.opacity = 0.5;
             }
         }
     }
     cDIV.onmousemove = function (e) {
         var e = e ? e : event;
         if (mouseD == true && odrag) {
             var mrx = e.clientX - mx;
             var mry = e.clientY - my;
             var left = parseInt(od.style.left) + mrx;
             var top = parseInt(od.style.top) + mry;
             var w = od.offsetWidth;
             var h = od.offsetHeight;
             var _scrollTop = document.documentElement.scrollTop;
			 if(_scrollTop == null || _scrollTop == 0)
			    _scrollTop = document.body.scrollTop;
             var width = document.documentElement.clientWidth + document.documentElement.scrollLeft;
             var height = document.documentElement.clientHeight + getScrollTop();

             if (left + w + border >= width)
                 left = width - w - border;
             else if (left < border)
                 left = border;

             if (top + h + 4 >= height)
                 top = height - h - border;
             
			 if (top < border)
                 top = border;

             od.style.left = left + "px";
             od.style.top = top + "px";
             setWidthHiehgt(odBg, od);
             mx = e.clientX;
             my = e.clientY;
         }
     }
}

//改变登录IFrame窗口大小
function changeLoginFrameSize(){
	var loginframe= document.getElementById("loginframe");
   	if(loginframe)
       loginframe.height = loginframe.contentWindow.document.body.clientHeight + "px";
    return;
}
//改变整个登录面板层大小
function changeLoginPanelBgSize(cBgDIV,cDIV){
	try {
		var border =4;
		if(!cDIV)
			cDIV = $cailele_index_fid("loginDIV");
		if(!cBgDIV)
    		cBgDIV = $cailele_index_fid("loginDIVbg");
    	changeLoginFrameSize();
        cBgDIV.style.top = (parseInt(cDIV.style.top) - border) + "px";
        cBgDIV.style.left = (parseInt(cDIV.style.left) - border) + "px";
        cBgDIV.style.width = (parseInt(cDIV.clientWidth) + border * 2) + "px";
        cBgDIV.style.height = (parseInt(cDIV.clientHeight) + border * 2) + "px";
    } catch (e) {}
    return;
}
//退出
function logout() {
	$cailele_loginframe().logout()
    return;
}
//领工资
function getSalary() {
	$cailele_loginframe().getSalary();
    return;
}
//重新刷新
function load_CheckLogin(){
	$cailele_loginframe().load_CheckLogin();
    return;
}
//检查是否有登录
function checkLogin(fn){
	$cailele_loginframe().checkLogin(fn);
    return;
}
//显示个人帐户信息
function showUserInfo(label,val){
	if(val == 0)
		label.className = "walletInfo";
	else
		label.className = "walletInfoHover";
	return;
}
/***---------------------------------- 最顶部的(登录)信息 end ----------------------------------***/


/***---------------------------------- 选择菜种[28]信息 begin ----------------------------------***/
//填充选择菜种[28]信息
function writeTopMenu(){
	var topMenuShow = false;
	try{topMenuShow = topMenuShowTemp;}catch(e){}
//	document.write('<div class="d-top"></div><div class="d-center">' +
//               	'	<ul>' +
//               	'      	<li class="euro_bg"><span class="l"><a href="http://www.cailele.com/ouzhoubei/" target="_blank"></a><b class="b-r"></b><font>热门</font></span><span class="r">' +
//                '                    <label><a href="http://www.cailele.com/lottery/basketball/dxfq2.php" target="_blank" class="only2">大小前二<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/jingcai/" target="_blank" class="addward">竞彩足球<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/basketball/" target="_blank" class="addward">竞彩篮球<i></i></a></label>' +
//				'                    <label><a href="http://www.cailele.com/lottery/dcspf/" target="_blank" class="addward">北京单场<i></i></a></label>' +
//                '                </span></li>' +
//                '            <li class="pural"><span class="l"><b class="b-g"></b><font>高频</font></span><span class="r">' +
//                '                    <label><a href="http://www.cailele.com/lottery/gd11x5/" target="_blank" class="addward">广东11选5<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/jx11x5/" target="_blank" class="addward">11选5<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/cq11x5/" target="_blank">渝11选5<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/11yun/" target="_blank">11运夺金<i></i></a></label>' +
//				'                    <label><a href="http://www.cailele.com/lottery/ln11x5/" target="_blank" class="only">全运彩<i></i></a></label>' +
//				'                    <label><a href="http://www.cailele.com/lottery/qyh/" target="_blank" class="arena">群英会<i style="top:0;"></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/ssc/" target="_blank">时时彩<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/jxssc/" target="_blank" class="sell">新时时彩<i></i></a></label>' +
//				'                    <label><a href="javascript:;" target="_blank">&nbsp;<i></i></a></label>' +
//				'                    <label><a href="http://www.cailele.com/lottery/cqklsf/" target="_blank">新快乐十分<i style="left:47px;"></i></a></label>' +
//				'                    <label><a href="http://www.cailele.com/lottery/hnklsf/" target="_blank" class="new">湖南快乐十分<i style="left:47px;"></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/klsf/" target="_blank" class="disable">快乐十分<i></i></a></label>' +
//				'                    <label><a href="http://www.cailele.com/lottery/k3/" target="_blank">快3<i style="top:0;"></i></a></label>' +
//				'                    <label><a href="http://www.cailele.com/lottery/jlk3/" target="_blank">新快3<i></i></a></label>' +
//                '                </span></li>' +
//                '            <li><span class="l"><b class="b-f"></b><font>福彩</font></span><span class="r">' +
//                '                    <label><a href="http://www.cailele.com/lottery/ssq/" target="_blank">双色球<i></i></a></label>' +
//				'					 <label><a href="http://www.cailele.com/lottery/3d/" target="_blank"  class="addward">福彩3D<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/15x5/" target="_blank" class="disable">15选5<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/qlc/" target="_blank">七乐彩<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/hc1/" target="_blank" class="disable">好彩一<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/df6j1/" target="_blank" class="disable">东方6+1<i></i></a></label>' +
//                '                </span></li>' +
//                '            <li class="pural"><span class="l"><b class="b-t"></b><font>体彩</font></span><span class="r">' +
//                '                    <label><a href="http://www.cailele.com/lottery/dlt/" target="_blank">大乐透<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/qxc/" target="_blank">七星彩<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/p3/" target="_blank" class="addward">排列三<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/p5/" target="_blank">排列五<i></i></a></label>' +
//                '                </span></li>' +
//                '            <li class="col2 ' + (topMenuShow ? 'end' : '') + '"><span class="l"><b class="b-z"></b><font>足球</font></span><span class="r">' +
//				'                    <label><a href="http://www.cailele.com/lottery/fbsfc/" target="_blank">胜负彩<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/fbr9/" target="_blank">任选9场<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/fb6cbq/" target="_blank">半全场<i></i></a></label>' +
//                '                    <label><a href="http://www.cailele.com/lottery/fbjq4/" target="_blank">4场进球<i></i></a></label>' +
//                '                </span></li>' +
//                '        </ul>' +
//                '</div><div class="d-bottom"></div>');
	enjoinMenuAndRClick($cailele_index_fid("downpanelDIV"));
}

//显示选择彩种(28)下拉菜单
function showMenuDownPanel(val, span) {
    var div = $cailele_index_fid("downpanelDIV");
    var _bgdiv = $cailele_index_fid("downpanelbgDIV");
    if (!span)
        span = $cailele_index_fid("menuDownBtn");

    if (val == 1) {
        div.style.display = "inline-block";
        span.className = "menuhover";
        try{_bgdiv.style.display = "inline-block";}catch(e){}
        try{showHideSelect(0);}catch(e){}
    }
    else {
        div.style.display = "none";
        span.className = "menu";
        try{_bgdiv.style.display = "none";}catch(e){}
        try{showHideSelect(1);}catch(e){}
    }
    return;
}
//显示顶部[购彩帮助]下拉菜单
function showCPNavigationDIV(val, span) {
    var div = $cailele_index_fid("cpNavigationDIV");
    if (!span)
        span = $cailele_index_fid("cpNavigationBtn");

    if (val == 1) {
        div.style.display = "inline-block";
        span.className = "navigationLabelHover";
        try{showHideSelect(0);}catch(e){}
    }
    else {
        div.style.display = "none";
        span.className = "navigationLabel";
        try{showHideSelect(1);}catch(e){}
    }
    return;
}
/***---------------------------------- 选择菜种[28]信息 end ----------------------------------***/

/***---------------------------------- 显示资讯下拉菜单 begin ----------------------------------***/
function showNewMenu(label,val){
	if(val == 0){
		label.className = "lotteryNews-hover";
	}else{
		label.className = "lotteryNews";
	}
	return;
}

function writeNewMenu(){
	document.write('<font class="whiteLine"></font><label class="newMenuList">' +
                      	'<a href="http://www.cailele.com/news/gpcai.shtml" target="_blank" title="高频彩" class="title">[高频彩]</a>' +
                      	'	<a href="http://www.cailele.com/news/fucai.shtml" target="_blank" title="数字彩" class="title">[数字彩]</a>' +
                      	'	<a href="http://www.cailele.com/news/jjcai.shtml" target="_blank" title="竞技彩" class="title">[竞技彩]</a><br/>' +
                      	'	<a href="http://www.cailele.com/news/list-81-1.html" target="_blank" title="广东11选5">广东11选5</a>' +
                      	'	<a href="http://www.cailele.com/news/list-2-1.html" target="_blank" title="双色球">双色球</a>' +
                      	'	<a href="http://www.cailele.com/news/list-88-1.html" target="_blank" title="竞彩足球">竞彩足球</a><br/>' +
                      	'	<a href="http://www.cailele.com/news/list-82-1.html" target="_blank" title="江西时时彩">江西时时彩</a>' +
                      	'	<a href="http://www.cailele.com/news/list-3-1.html" target="_blank" title="大乐透">大乐透</a>' +
                      	'	<a href="http://www.cailele.com/news/list-25-1.html" target="_blank" title="竞彩篮球">竞彩篮球</a><br/>' +
                      	'	<a href="http://www.cailele.com/news/list-6-1.html" target="_blank" title="11运夺金">11运夺金</a>' +
                      	'	<a href="http://www.cailele.com/news/list-5-1.html" target="_blank" title="福彩3D">福彩3D</a>' +
                      	'	<a href="http://www.cailele.com/news/list-24-1.html" target="_blank" title="单场足彩">单场足彩</a><br/>' +
                      	'	<a href="http://www.cailele.com/news/list-7-1.html" target="_blank" title="重庆时时彩">重庆时时彩</a>' +
                      	'	<a href="http://www.cailele.com/news/list-4-1.html" target="_blank" title="排列三">排列三</a>' +
                      	'	<a href="http://www.cailele.com/news/list-10000801-1.html" target="_blank" class="lottery-new-red" title="靓胆推荐">靓胆推荐</a><br/>' +
                      	'	<label class="bottomLabel"><a href="http://www.cailele.com/news/" target="_blank" title="彩票资讯首页">彩票资讯首页>></a></label>' +
                      	'</label><label class="newMenuBg"></label>' +
                    	'<a href="http://www.cailele.com/news/" title="彩票资讯"></a>');
	return;
}
/***---------------------------------- 显示资讯下拉菜单 end ----------------------------------***/

/****-----------------------在ie6浏览器下,执行弹出层操作时隐藏下拉框 begin---------------------****/
/*ie6隐藏下拉框*/
var showSelectList = null;
function getSelectList(list){
	if (list.length == 0)
         return;
            
    for (var i = 0; i < list.length; i++) {
        var sl = list[i];
        if (sl.style.display != "none" && sl.style.visibility != "hidden") {
            sl.style.display = "none";
            showSelectList.push(sl);
        }
    }
}
//隐藏或显示下拉框
function showHideSelect(val) {
    if (isIE6()) {
        if (val == 0) {
        	showSelectList = new Array();
            var list = document.getElementsByTagName("SELECT");
            getSelectList(list);
            
            var iframeList = document.getElementsByTagName("IFRAME");
            if(iframeList.length > 0){
            	for(var i=0;i<iframeList.length;i++){
            	  	var obj = iframeList[i].contentWindow.document.getElementsByTagName("SELECT");
					getSelectList(obj);
            	}
            }
        } else {
            if (showSelectList != null) {
                for (var i = 0; i < showSelectList.length; i++) {
                    showSelectList[i].style.display = "";
                }
                showSelectList = null;
            }
        }
    }
}
/****-----------------------在ie6浏览器下,执行弹出层操作时隐藏下拉框 end---------------------****/

//底部的友情链接切换
function changeFriendDIV(li, id) {
	var css = "current";
	var liList = li.parentNode.getElementsByTagName("LI");
	var i = 0;
	for(i = 0;i<liList.length;i++){
		liList[i].className = "";
	}
	li.className = css;
	
	var div = document.getElementById(id);
	var divList = div.parentNode.getElementsByTagName("DIV");
	for(i = 0;i<divList.length;i++){
		divList[i].style.display = "none";
	}
	div.style.display = "";
	return;
}

/****----------------------- Ajax对象 begin---------------------****/
function xmlhttp() {
    var obj;
    this.requestBuf = null;
    this.charset = 'gbk';
    this.sendData = '';
    this.regAxObject = function () {
        if (obj) return true;
        if (window.ActiveXObject) {
            try {
                obj = new ActiveXObject('MSXML2.XMLHTTP');
            } catch (e) {
                try {
                    obj = new ActiveXObject('Microsoft.XMLHTTP');
                } catch (e) {
                    return false;
                }
            }
        } else if (window.XMLHttpRequest) {
            try {
                obj = new XMLHttpRequest();
            } catch (e) {
                return false;
            }
        } else {
            return false;
        }
        return true;
    }

    this.request = function () {
        if (!this.regAxObject()) {
            return false;
        }
        if (arguments[0]) {
            this.url = arguments[0];
        }
        if (arguments[1] || arguments[1] == '') {
            this.sendData = arguments[1];
        }
        try {
            if (this.sendData != '') {
                obj.open('post', this.url, false);
                obj.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                obj.setRequestHeader('Content-Length', this.sendData.length);
                obj.send(this.sendData);
            } else {
                obj.open('get', this.url, false);
                obj.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                obj.setRequestHeader('Content-Type', 'text/html;charset=' + this.charset);
                obj.send(null);
            }
        } catch (e) { }
        if (obj.readyState == 4) {
            if (obj.status == 404) {
                return false;
            }
            if (obj.status == 200) {
                this.requestBuf = obj.responseText;
                return obj.responseText;
            }
        }
    }
}
/****----------------------- Ajax对象 end---------------------****/




/****----------------------- 获取服务器时间象 begin---------------------****/
//服务器时间 -- 全局
var serverDateByLong=null;
function getServerDateByLong(){
	try{
		if(serverDateByLong == null){
			var result = new xmlhttp().request(ctx_jsonp+"/serverDate.php?type=1&tag=" + new Date().getTime().toString(36));
			var dt = eval("(" + result + ")");
			//serverDateByLong = parseInt(dt.serverTimeByLong);
			serverDateByLong = parseInt(dt.result.timestamp+"000");
		}
	}catch(e){}
	return serverDateByLong;
}
//给底部[可信息网站]图片添加时间信息
function serverDateToFootImg(){
	var year="", M="",d="",H="",m="";
	var date = null;
	try{
		var dt = getServerDateByLong();
		date = new Date(dt);
	}catch(e){
		date = new Date();
	}
	try{
		year = date.getFullYear().toString();
		var _M = (date.getMonth() + 1);
		M = (_M < 10 ? "0" + _M : _M);
		var _d = date.getDate();
		d = (_d < 10 ? "0" + _d : _d);
		var _H = date.getHours();
		H = (_H < 10 ? "0" + _H : _H);
		var _m = date.getMinutes();
		m = (_m < 10 ? "0" + _m : _m);
		
		if(year.length > 2)
			year = year.substr(year.length-2);
		year = year + "." + M + "." + d + " " + H + ":" + m;
		serverDate = year;
		$cailele_index_fid("footServerDateFont").innerHTML = year;
	}catch(e){}
}
/*js调用服务器时间-显示时间表*/
function startServerTime(id){
	if(document.getElementById(id))
	{

		var date = getServerDate();
		
		var year = 0;
		var month = 0;
		var day = 0;
		var hours = 0;
		var minutes = 0;
		var second = 0;
		
		if(date){
			year = date.Y;
			month = date.M;
			day = date.d;
			hours = date.H;
			minutes = date.m;
			second = date.s;
		}else{
			date = new Date();
			year = date.getFullYear();
			month = date.getMonth() + 1;
			day = date.getDate();
			hours = date.getHours();
			minutes = date.getMinutes();
			second = date.getSeconds();
		}
		
		var getTime = function(){
			setTimeout(getTime,1000);
		    second++;
		    
		    if(second >= 60)
		    {
		        second = 0;
		        minutes ++;
		    }
		    
		    if(minutes >= 60)
		    {
		        minutes = 0;
		        hours ++;
		    }
		    
		    if(hours >= 24)
		    {
		        hours = 0;
		        day ++;
		    }
		
			months = month < 10 ? "0" + month : month;
			days = day < 10 ? "0" + day : day; 
			hourss = hours < 10 ? "0" + hours : hours;
			minutess = minutes < 10 ? "0" + minutes : minutes;
			seconds = second < 10 ? "0" + second : second;
			
			var html= months + "月" + days + "日 " +  hourss + ":" + minutess + ":" + seconds;
			document.getElementById(id).innerHTML = html;
		}
		getTime();
		return;
	
	}
}

function getServerDate(){
	var dt = new Date(getServerDateByLong());
	try{
		return {Y: (dt.getYear() + 1900),
				 M: (dt.getMonth() + 1),
				 d: dt.getDate(),
				 H: dt.getHours(),
				 m: dt.getMinutes(),
				 s: dt.getSeconds()};
	}catch(e){}
	return null;
}
/****----------------------- 获取服务器时间象 end ---------------------****/



/****----------------------- 底部弹出优惠信息操作 begin---------------------****/
//已取消
//判断是否打开活动页面
function showValmontOpen(){ 
    showValmont();
    return;
}

//关闭弹出的信息窗口
function closeValmontOpen(){
    closeInfoWindow("tanchuSet");
    closeInfoWindow("tanchujds");
    return;
}
/****----------------------- 底部弹出优惠信息操作 end---------------------****/


/****----------------------- 窗口层对象-可执行拖动 begin---------------------****/
//窗口层对象-可执行拖动
var dragTag = new Date().getTime();
var drag_bgDIVId = "drag_bgDIVId" + dragTag;
var drag_titleDIVId = "drag_titleDIVId" + dragTag;
var drag_cBgDIVId = "drag_cBgDIVId" + dragTag;
var ie6StyleSheet = null;

//divID:拖动层ID
//title:标题文本
//scroll:弹出层是否随窗口滚动条滚动,true:是否随之滚动,false:悬浮不动,默认为false;(ie6不支持悬浮不动)
//callback:关闭按钮回调函数
function openDragWindow(divID,title,scroll,callback) {
	var zIndex = 999990;
	if(divID == alertWindowDIV || divID == confirmWindowDIV)
		zIndex = 999997;
	
  if (divID == undefined || typeof (divID) != "string")
      return;
  var ie6 = isIE6();
	var isscroll=false;
	
	if(title){
		if(typeof(title) == "string")
			title = title;
		else if(typeof(title) == "boolean")
			isscroll = title;
	}
	if(scroll){
		if(typeof(scroll) == "boolean")
			isscroll = scroll;
		else if(typeof(scroll) == "string")
			title = scroll;
	}
	
  var border = 6;
  var cDIV = $cailele_index_fid(divID);
  if (!cDIV)
      return;

  var bgDIV = $cailele_index_fid(divID + "_" + drag_bgDIVId);

  if (!bgDIV) {
      bgDIV = document.createElement("DIV");
      bgDIV.id = (divID + "_" + drag_bgDIVId);
      bgDIV.style.backgroundColor = "#000000";
      bgDIV.style.width = "100%";
      bgDIV.style.position = "absolute";
      bgDIV.style.left = "0px";
      bgDIV.style.top = "0px";
      bgDIV.style.zIndex = zIndex;
      bgDIV.style.opacity = "0.2";
      bgDIV.style.filter = "alpha(opacity:20)";
      bgDIV.onselectstart = function () { return false; }
      bgDIV.oncontextmenu = function () { return false; }
      document.body.appendChild(bgDIV);
  }

  var divResize_Drag = function () {
      var ch = document.documentElement.clientHeight;
      var bh = document.documentElement.scrollHeight;
      if (ch > bh)
          bgDIV.style.height = ch + "px";
      else
          bgDIV.style.height = bh + "px";

      var cw = document.documentElement.clientWidth;
      var bw = document.all ? document.body.scrollWidth : document.documentElement.scrollWidth;
      if (cw > bw)
          bgDIV.style.width = cw + "px";
      else
          bgDIV.style.width = bw + "px";
      return;
  }
  onresize = divResize_Drag;
  divResize_Drag();

  bgDIV.style.display = "inline-block";
  cDIV.style.display = "inline-block";
  cDIV.style.opacity = "1";
  var borderStyle = "1px solid #ffffff";
  if (cDIV.style.borderLeft == "")
      cDIV.style.borderLeft = borderStyle;
  if (cDIV.style.borderRight == "")
      cDIV.style.borderRight = borderStyle;
  if (cDIV.style.borderBottom == "")
      cDIV.style.borderBottom = borderStyle;
  if (cDIV.style.backgroundColor == "")
      cDIV.style.backgroundColor = "#ffffff";
      
  if(ie6 && ie6StyleSheet == null){
  	try{
  		//ie6StyleSheet = document.createStyleSheet();
			//ie6StyleSheet.addRule(".ieDrayFloatStyle","top:expression(document.documentElement.scrollTop + 'px');"); 
  	}catch(e){}
  }
	
	var checkScroll = function(obj){
		if(isscroll || ie6){
	    	if(!isscroll){
	    		try{
	    			//obj.className = "ieDrayFloatStyle";
		    		//obj.setAttribute("style","top:expression(alert(document.documentElement.scrollTop + 'px'));left:expression(document.documentElement.scrollLeft+document.documentElement.clientWidth-this.offsetWidth-(parseInt(this.currentStyle.marginLeft,10)||0)-(parseInt(this.currentStyle.marginRight,10)||0)) + 'px'");
		    	}catch(e){}
	    	}	
	    	obj.style.position = "absolute";
	    }else{
	    	obj.style.position = "fixed";
	    }
		return;
	}
	
	checkScroll(cDIV);
  cDIV.style.filter = "alpha(opacity:100)";
  
  var getScrollTop = function(){
 	 	var _scrollTop = document.documentElement.scrollTop;
 		if(_scrollTop == null || _scrollTop == 0)
  		_scrollTop = document.body.scrollTop;
  	return _scrollTop;
 }

  cDIV.style.top = (((document.documentElement.clientHeight - cDIV.offsetHeight) / 2) + ((isscroll || ie6) ? getScrollTop() : 0) + border) + "px";
  cDIV.style.left = (((document.documentElement.clientWidth - cDIV.offsetWidth) / 2) + document.documentElement.scrollLeft + border) + "px";
  cDIV.style.zIndex = parseInt(bgDIV.style.zIndex) + 2;

  var titleDIV = $cailele_index_fid(divID + "_" + drag_titleDIVId);

  if (!titleDIV) {
      titleDIV = document.createElement("DIV");
      titleDIV.id = (divID + "_" + drag_titleDIVId);
      titleDIV.onselectstart = function () { return false; }
      titleDIV.oncontextmenu = function () { return false; }

     // titleDIV.style.backgroundImage = "url('http://img.cailele.com/img_new/top/top_bg.gif')";
		titleDIV.style.backgroundColor = "#fafafa";
      //titleDIV.style.backgroundRepeat = "repeat-x";
      //titleDIV.style.backgroundPosition = "left -400px";
      titleDIV.style.borderBottom = "1px solid #d8d8d8";
      document.body.appendChild(titleDIV);
  }
  
  function closeAllDIV(){
  	cDIV.style.display = "none";
      bgDIV.style.display = "none";
      titleDIV.style.display = "none";
      if (cBgDIV)
      	cBgDIV.style.display = "none";
      try{showHideSelect(1);}catch(e){}
		if(callback) callback();
		return;
  }
  
  if(divID == alertWindowDIV) {
  	bgDIV.onclick = closeAllDIV;
  }

  function setTitleDIV() {
      var h = 38;
      var pLeft = 10;
      checkScroll(titleDIV);
      titleDIV.style.width = (cDIV.offsetWidth - pLeft - 0) + "px";
      titleDIV.style.height = (h) + "px";
      titleDIV.style.lineHeight = (h) + "px";
      titleDIV.style.paddingLeft = (pLeft) + "px";
      titleDIV.style.top = (parseInt(cDIV.style.top) - h) + "px";
      titleDIV.style.left = cDIV.style.left;
      titleDIV.style.zIndex = parseInt(bgDIV.style.zIndex) + 2;
      titleDIV.style.display = "inline-block";
      titleDIV.innerHTML = "";

      var close = document.createElement("FONT");
      close.title = "关闭";
      try{close.style.styleFloat = "right";}catch(e){}
      try{close.style.cssFloat = "right";}catch(e){}
      close.style.width = "15px";
      close.style.height = "15px";
      close.style.marginTop = "11px";
      close.style.marginRight = "11px";
      close.style.display = "inline-block";
      close.style.color = "#ffffff";
      close.style.backgroundImage = "url('http://img.cailele.com/img_new/common/main_sprite_v3.png')";
      close.style.backgroundRepeat = "no-repeat";
      close.style.backgroundPosition = "-200px -33px";

      close.style.cursor = "pointer";
      close.onmousedown = function () {
          closeAllDIV();
      }
      close.onmouseover = function () {
          this.style.backgroundPosition = "-220px -33px";
      }
      close.onmouseout = function () {
          this.style.backgroundPosition = "-200px -33px";
      }

      var titleFont = document.createElement("FONT");
      titleFont.style.fontSize = "14px";
      titleFont.style.color = "#000";
      titleFont.style.fontWeight = "bold";

      if (title && typeof (title) == "string") {
          titleFont.innerHTML = title;
      } else {
          titleFont.innerHTML = "&nbsp;";
      }

      titleDIV.appendChild(close);
      titleDIV.appendChild(titleFont);
  }
  setTitleDIV();

  var cBgDIV = $cailele_index_fid(divID + "_" + drag_cBgDIVId);

  if (!cBgDIV) {
      cBgDIV = document.createElement("DIV");
      cBgDIV.id = (divID + "_" + drag_cBgDIVId);
      cBgDIV.style.backgroundColor = "#000000";
      cBgDIV.style.left = "0px";
      cBgDIV.style.top = "0px";
      cBgDIV.style.zIndex = zIndex;
      cBgDIV.style.opacity = "0.3";
      cBgDIV.style.filter = "alpha(opacity:30)";
      cBgDIV.onselectstart = function () { return false; }
      cBgDIV.oncontextmenu = function () { return false; }
      document.body.appendChild(cBgDIV);
  }

  function setCBgDIV() {
  	checkScroll(cBgDIV);
      cBgDIV.style.width = (cDIV.offsetWidth + border * 2) + "px";
      cBgDIV.style.height = (cDIV.offsetHeight + titleDIV.offsetHeight + border * 2) + "px";
      cBgDIV.style.top = (parseInt(cDIV.style.top) - titleDIV.offsetHeight - border) + "px";
      cBgDIV.style.left = (parseInt(cDIV.style.left) - border) + "px";
      cBgDIV.style.zIndex = parseInt(bgDIV.style.zIndex) + 1;
      cBgDIV.style.display = "inline-block";
  }
  setCBgDIV();
	
	try{showHideSelect(0);}catch(e){}
	
  var isIE_t = document.all ? true : false;

  if (isIE_t) {
      titleDIV.style.cursor = "move";
  }

  var setWidthHiehgt = function () {
      var h = titleDIV.offsetHeight;
      titleDIV.style.top = (parseInt(cDIV.style.top) - h) + "px";
      titleDIV.style.left = (parseInt(cDIV.style.left)) + "px";

      cBgDIV.style.top = (parseInt(cDIV.style.top) - titleDIV.offsetHeight - border) + "px";
      cBgDIV.style.left = (parseInt(cDIV.style.left) - border) + "px";
      return;
  }

  var drag_od = cDIV;
  var drag_odBg = cBgDIV;
  var drag_x, drag_y, drag_mouseD;
  var drag_obj;

  titleDIV.onmouseup = cDIV.onmouseup = function () {
      drag_mouseD = false;
      drag_obj = "";

      if (isIE_t) {
          drag_od.releaseCapture();
          drag_od.style.filter = "alpha(opacity:100)";
      }
      else {
          titleDIV.style.cursor = "default";
          window.releaseEvents(Event.MOUSEMOVE);
          drag_od.style.opacity = 1;
      }
  }
  titleDIV.onmousedown = function (e) {
      drag_obj = this;
      var e = e ? e : event;
      if (e.button == (document.all ? 1 : 0)) {
          drag_mouseD = true;
          drag_x = e.clientX;
          drag_y = e.clientY;
          drag_od.style.left = drag_od.offsetLeft + "px";
          drag_od.style.top = drag_od.offsetTop + "px";

          if (isIE_t) {
              drag_od.setCapture();
              drag_od.style.filter = "alpha(opacity:50)";
          }
          else {
              titleDIV.style.cursor = "move";
              window.captureEvents(Event.MOUSEMOVE);
              drag_od.style.opacity = 0.5;
          }

          setWidthHiehgt(drag_odBg, drag_od);
      }
  }

  var moveDIV = function (e) {
      var e = e ? e : event;
      if (drag_mouseD == true && drag_obj) {
          var mrx = e.clientX - drag_x;
          var mry = e.clientY - drag_y;
          var left = parseInt(drag_od.style.left) + mrx;
          var top = parseInt(drag_od.style.top) + mry;
          var w = drag_od.offsetWidth;
          var h = drag_od.offsetHeight;
          var width = document.documentElement.clientWidth + document.documentElement.scrollLeft;
          var height = document.documentElement.clientHeight + getScrollTop();

          if (left + w + border >= width)
              left = width - w - border;
          
			if (left < border)
              left = border;

          if (top + h + 4 >= height)
              top = height - h - border;

          if (top < border + 30)
              top = border + 30;

          drag_od.style.left = left + "px";
          drag_od.style.top = top + "px";
          setWidthHiehgt(drag_odBg, drag_od);
          drag_x = e.clientX;
          drag_y = e.clientY;
      }
  }

  if (isIE_t)
      cDIV.onmousemove = moveDIV;
  else
      titleDIV.onmousemove = moveDIV;
  return;
}

//关闭拖动窗口
//关闭层的ID
//callback:关闭按钮回调函数
function closeDragWindow(id,callback) {
    var _close = function (div) { if (div) div.style.display = 'none'; }
    _close($cailele_index_fid(id + "_" + drag_bgDIVId));
    _close($cailele_index_fid(id + "_" + drag_titleDIVId));
    _close($cailele_index_fid(id + "_" + drag_cBgDIVId));
    _close($cailele_index_fid(id));
    try{showHideSelect(1);}catch(e){}
	if(callback) callback();
    return;
}


/****-----------------------提示框 begin---------------------****/
var alertWindowDIV = "alertWindowDIV";
var confirmWindowDIV = "confirmWindowDIV";
//alert提示框--为了兼容历史代码
function cll_alert(content,fn){
	var title = "温馨提示"
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='知道了'>知道了</a></div>";
	cll_alert_inner(title,content,btnInfo,fn);
	return;
}

//alert提示框--知道按钮
function cll_alert_know(title,content,fn){
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='知道了'>知道了</a></div>";
	cll_alert_inner(title,btnInfo,content,fn);
	return;
}

//alert提示框--确定按钮
function cll_alert_ok(title,content,fn){
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='确定'>确定</a></div>";
	cll_alert_inner(title,content,btnInfo,fn);
	return;
}

//alert提示框底层实现
function cll_alert_inner(title,content,btnInfo,fn){
	var div = document.getElementById(alertWindowDIV);
	if(div == null){
		div = document.createElement("DIV");
		div.id = alertWindowDIV;
		div.className = "alert-confirmWinDIV";
		div.innerHTML = btnInfo;
		document.body.appendChild(div);
	}
	var divList = div.getElementsByTagName("DIV");
	var btnList = divList[divList.length-1].getElementsByTagName("A");//最后一个div.避免content里面有div影响
	content += "<div style=\"border: 1px dotted #ffd5d5;background-color: #fff8f7;padding: 6px 10px;margin-top: 20px;color: #d71400;font-size: 12px;\">理智购彩，谨慎投注；助力公益，量力而为！</div>";
	divList[0].innerHTML = content;
	btnList[0].onclick = function(){closeDragWindow(alertWindowDIV,fn);};
	openDragWindow(alertWindowDIV,title,false,fn);
}

//confirm弹出窗口--为了向上兼容历史代码
function cll_confirm(content,okFn,cancelFn){
	var title = "温馨提示";
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='确定'>确定</a>" +
        	"<a href='javascript:void(0);' class='cancel' title='取消'>取消</a></div>";
    cll_confirm_inner(title,content,btnInfo,okFn,cancelFn);    	
	return;
}

//confirm弹出窗口--余额不足-去充值按钮
function cll_confirm_to_charge(content,okFn,cancelFn){
	var title = "温馨提示";
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='去充值'>去充值</a>" +
        	"<a href='javascript:void(0);' class='cancel' title='知道了'>知道了</a></div>";
    cll_confirm_inner(title,content,btnInfo,okFn,cancelFn);    	
	return;
}

//confirm弹出窗口--号码格式错误--机选一注按钮
function cll_confirm_to_bet(content,okFn,cancelFn){
	var title = "温馨提示";
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='机选一注'>机选一注</a>" +
        	"<a href='javascript:void(0);' class='cancel' title='知道了'>知道了</a></div>";
    cll_confirm_inner(title,content,btnInfo,okFn,cancelFn);
}

//confirm弹出窗口--方案确定-确定按钮
function cll_confirm_to_buy(content,okFn,cancelFn){
	var title = "方案确认";
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='确定'>确定</a>" +
        	"<a href='javascript:void(0);' class='cancel' title='取消'>取消</a></div>";
    cll_confirm_inner(title,content,btnInfo,okFn,cancelFn);    	
}

//confirm弹出窗口--去购彩大厅--去购彩大厅按钮
function cll_confirm_to_lottery(content,okFn,cancelFn){
	var title = "温馨提示";
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='去投一注'>去投一注</a>" +
        	"<a href='javascript:void(0);' class='cancel' title='知道了'>知道了</a></div>";
    cll_confirm_inner(title,content,btnInfo,okFn,cancelFn);    	
}

// 自定义confirm弹出窗口
function cll_confirm_defined(title, content, okBtnInfo, cancelBtnInfo, okFn, cancelFn) {
	var btnInfo = "<div class='textDIV'></div>" +
    		"<div class='btnDIV'><a href='javascript:void(0);' class='ok' title='" + okBtnInfo + "'>" + okBtnInfo + "</a>" +
        	"<a href='javascript:void(0);' class='cancel' title='" + cancelBtnInfo + "'>" + cancelBtnInfo + "</a></div>";
    cll_confirm_inner(title, content, btnInfo, okFn, cancelFn);
}

//confirm弹出窗口--底层实现
function cll_confirm_inner(title,content,btnInfo,okFn,cancelFn){
	var div = document.getElementById(confirmWindowDIV);
	if(div == null){
		div = document.createElement("DIV");
		div.id = confirmWindowDIV;
		div.className = "alert-confirmWinDIV";
		document.body.appendChild(div);
	}
	div.innerHTML = btnInfo;
	var divList = div.getElementsByTagName("DIV");
	var btnList = divList[divList.length-1].getElementsByTagName("A");//最后一个div.避免content里面有div影响
	content += "<div style=\"border: 1px dotted #ffd5d5;background-color: #fff8f7;padding: 6px 10px;margin-top: 20px;color: #d71400;font-size: 12px;\">理智购彩，谨慎投注；助力公益，量力而为！</div>";
	divList[0].innerHTML = content;
	btnList[0].onclick = function(){
		closeDragWindow(confirmWindowDIV,okFn);
	}
	btnList[1].onclick = function(){
		closeDragWindow(confirmWindowDIV,cancelFn);
	};
	openDragWindow(confirmWindowDIV,title,false,cancelFn);
}

/****----------------------- 提示框 end ---------------------****/

/****----------------------- 添加Flash对象 begin ---------------------****/
//路径、id、宽度、高度、参数选项
//options :{ quality: "high", menu:"false",wmode:"transparent",allowScriptAccess:"always",allowNetworking:"all",allowFullScreen:"true"}
var flash = function (src, id, width, height, options, title) { 
    options = options || {};
    var paramStr = "<param name=\"movie\" value=\"" + src + "\" />";
    var embedStr = " width=\""+width+"\" height=\""+height+"\"";
    
    options.pluginspage="http://www.macromedia.com/go/getflashplayer";
    options.devicefont="false";
    options.type="application/x-shockwave-flash"

    if (options) {
        for (var op in options) {
            paramStr += "<param name=\"" + op + "\" value=\"" + options[op] + "\" />";
            embedStr += op + "=" + "\"" + options[op] + "\" ";
        }
    }
    var d = new Date();
    if(src.indexOf("?")==-1)
    	src += "?";
    src = src + "&tag=" + d.getDate() + "" + d.getHours() + "" + d.getMinutes() + "" + d.getSeconds() + "" + d.getMilliseconds();
    
    var _title = "";
    if(title)
    	_title = " title=\""+title+"\" ";
    
    document.write("<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" " + _title);
    document.write("codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0\" ");
    document.write("width=\"" + width + "\" height=\"" + height + "\" id=\"" + id + "\">");
    document.write(paramStr);
    document.write("<embed " + _title + " src=\"" + src + "\" name=\"" + id + "\" pluginspage=\"http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash\" ");
    document.write(embedStr);
    document.write(" type=\"application/x-shockwave-flash\" ");
    document.write("></embed></object>");
    return;
}
/****----------------------- 添加Flash对象 end ---------------------****/

/****----------------------- 悬浮的回到顶部按钮 begin ---------------------****/
/*悬浮的回到顶部操作对象_支持滑动*/
function initToTop_Scroll() {
    var obj = document.createElement("A");
    obj.style.d = "";
    obj.href = "#";
    obj.title = "回到顶部";
    obj.style.width = "19px";
    obj.style.height = "63px";
    obj.style.position = "absolute";
    obj.style.marginTop = "0px";
    obj.style.marginLeft = "0px";
    obj.style.backgroundImage = "url('http://img.cailele.com/img_new/top/top_bg.gif')";
    obj.style.backgroundRepeat = "no-repeat";
    obj.style.backgroundPosition = "left -480px";
    obj.onmouseover = function(){this.style.backgroundPosition = "-40px -480px";}
    obj.onmouseout = function(){this.style.backgroundPosition = "left -480px";}
    obj.style.display = "inline-block";
    document.body.appendChild(obj);
    var moveObj = function () {
        var time = 50;
        var w = document.documentElement.clientWidth;
        var _w = 1000;
        if(w < (_w + (20*2))){
        	var sleft = document.documentElement.scrollLeft;
        	if(sleft == 0)
        		sleft = document.body.scrollLeft;
        	obj.style.left = ((w-20+sleft) + "px");
        }else{
        	obj.style.left = ((w - _w) / 2 + _w + 4) + "px";
        }
        
        var topSet = document.documentElement.clientHeight - 90;
   	 	var topSet_Copy = topSet;

        var top = 0;
        if (window.innerHeight) {
            top = window.pageYOffset;
        } else if (document.documentElement && document.documentElement.scrollTop) {
            top = document.documentElement.scrollTop;
        } else if (document.body) {
            top = document.body.scrollTop;
        }

        if (top < 300) {
            obj.style.visibility = "hidden";
        } else {
            obj.style.visibility = "visible";
        }

        top = top - obj.offsetTop + topSet;
        top = obj.offsetTop + top / 10;

        if (top != topSet_Copy) {
            obj.style.top = top + "px";
            time = 10;
        }
        topSet_Copy = top;
        setTimeout(moveObj, time);
    }
    moveObj();
    return;
}
/****----------------------- 悬浮的回到顶部按钮 end ---------------------****/


/****----------------------- 输出中奖牛人 begin ---------------------****/
function writeCattlePeople(doc){
	if(doc == null)
		doc = document;
	doc.write('<a href="http://www.cailele.com/hm/personList.php?account=%25E5%25BD%25A9%25E7%25A5%259EV5" target="_blank" title="彩神V5">彩神V5</a> | ' +
		'<a href="http://www.cailele.com/hm/personList.php?account=%25E4%25BC%2597%25E4%25B9%2590%25E5%259B%25AD" target="_blank" title="众乐园">众乐园</a> | ' +
		'<a href="http://www.cailele.com/hm/personList.php?account=%25E8%25B6%25B3%25E5%25BD%25A9%25E5%25A4%25A7%25E5%25AF%258C%25E7%25BF%2581" target="_blank" title="足彩大富翁">足彩大富翁</a> | ' +
		'<a href="http://www.cailele.com/hm/personList.php?account=%25E5%25B9%25BF%25E5%25B7%259E%25E6%2588%25BF%25E4%25B8%259C" target="_blank" title="广州房东">广州房东</a> | ' + 
		'<a href="http://www.cailele.com/hm/personList.php?account=bosston" target="_blank" title="bosston">bosston</a>');

return;
}
/****----------------------- 输出中奖牛人 end ---------------------****/


/****----------------------- 输出底部导航信息 begin ---------------------****/
function writeBottomNavigation(){
	document.write('<div class="bottomNaDIV"><a href="http://www.cailele.com/aboutus/sitemap.shtml" '+
                'target="_blank">网站地图</a>|<a href="http://www.cailele.com/" target="_parent">网站首页</a>|<a href="http://www.cailele.com/aboutus/hezuo.shtml" '+ 
                'target="_blank">合作伙伴</a>|<a href="http://www.cailele.com/aboutus/contact.shtml" '+ 
                'target="_blank">联系我们</a>|<a href="http://www.cailele.com/aboutus/zhaopin.shtml" '+ 
                'target="_blank">人才招聘</a>|<a href="http://www.cailele.com/aboutus/links.shtml" '+ 
//                'target="_blank">彩票导航</a>|<a href="http://www.cailele.com/aboutus/links.shtml" '+
                'target="_blank">友情链接</a>|<a href="http://www.cailele.com/help/" '+ 
                'target="_blank">帮助中心</a> </div>');
}
/****----------------------- 输出底部导航信息 end ---------------------****/

/****----------------------- 输出底部统计信息 begin ---------------------****/
function writeStatistic(){
	//本站统计
/*	document.write('<script language="javascript" src="http://127.0.0.1:8080/lottery/static/proxy/js/referer.js"></script>');
	
	//baidu统计
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F84b44ddfc4d2a64857e02f319615636f' type='text/javascript'%3E%3C/script%3E"));
	//baidu统计 end

	document.write('<script src="http://s45.cnzz.com/stat.php?id=1623102&web_id=1623102&show=pic" language="JavaScript" charset="gb2312"></script>');
*/}

var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");

function writeStatisticBlank(){
	/*//本站统计
	document.write('<script id="script_referer" language="javascript" src=ctx_static_proxy+"/js/referer.js"></script>');
	//baidu统计
	document.write('<script id="script_baidu" src="" language="javascript"></script>');
	//cnzz 统计
	document.write('<script id="script_cnzz" src="" language="JavaScript" ></script>');
	//WPA Button Begin
   	document.write('<script id="script_wpa" type="text/javascript" src=""></script>');*/
}
function doStatistic(){
	//document.getElementById("script_referer").src = "http://www.cailele.com/js/referer.js";
/*	document.getElementById("script_baidu").src =  _bdhmProtocol + "hm.baidu.com/h.js%3F84b44ddfc4d2a64857e02f319615636f";
	document.getElementById("script_cnzz").src = "http://s45.cnzz.com/stat.php?id=1623102&web_id=1623102&show=pic";
	document.getElementById("script_wpa").src = "http://static.b.qq.com/account/bizqq/js/wpa.js?wty=0&kfuin=4006166111&key=%5D4%067%036%056%063%02b%053P8X9Sf%0F6W9Ra%05k%01g%05%60Z2%075%076Tf";
*/}

function navHighligh() {
	var u = document.URL;
	if(u.indexOf("http://") > -1) {
		u = u.substring(7);
	}

	if(u.indexOf("/") > -1) {
		var temp = u.split("/");
		if(temp.length < 2) {
			u = temp[0];
		} else {
			if(temp[1] == "") {
				u = temp[0];
			} else {
				u = temp[0] + "/" + temp[1];
			}
		}
	}
	$("#cllTopNav").find("li").each(function(i,domEle){
		var content = $(domEle).html();
		if (content.indexOf(u) > -1) {
			$(domEle).addClass("current");
			return false;
		}
	});
}

function lazy_do() {
	try{navHighligh();}catch(e){}
	try{startServerTime("currentTime");}catch(e){}
	//try{document.getElementById("loginframe").src = login_frame_url;}catch(e){}
	//try{doStatistic();}catch(e){}
	try{serverDateToFootImg();}catch(e){}
	
}
/****----------------------- 输出底部统计信息 end ---------------------****/

/****----------------------- 公用资讯页焦点图 begin ---------------------****/
function news_focusBox() {
	var $fid = function (id) {
		return document.getElementById(id);
	};
	var imgList = new Array();
	var urlList = new Array();
	var textList = new Array();

	imgList.push("http://img.cailele.com/img_new/banner/201609/2016928-news-jif.jpg");
	urlList.push("http://www.cailele.com/static/info/201609/show_10477708.shtml");
	textList.push("");
	
	imgList.push("http://img.cailele.com/img_new/news/201607/20160718_nes310x220_01.jpg");
	urlList.push("http://www.cailele.com/subject/game/index.shtml?sid=14302338");
	textList.push("");
	
	imgList.push("http://img.cailele.com/img_new/news/201607/20160718_nes310x220_02.jpg");
	urlList.push("http://www.cailele.com/subject/game/index.shtml?sid=14302338");
	textList.push("");

	
	imgList.push("http://img.cailele.com/img_new/banner/201601/20160128_new_310x220.jpg");
	urlList.push("http://bbs.cailele.com/thread-834404-1-1.html");
	textList.push("");
	
	
	var imgId = "new_focus_imgDIVID";
	var btnId = "new_focus_imgIndexID";
	var textId = "new_focus_textID";
	var count = imgList.length;
	var current = 1;
	var box = $fid(imgId);
	var btnUL = $fid(btnId);
	var text = $fid(textId);
	text.target = "_blank";
	var fn = null;
	var changeIndex = function (index) {
		if (!index || typeof (index) == "object") {
			index = parseInt(this.tag);
			if (current == index) {
				return;
			}
			clearTimeout(fn);
			current = index;
		}
		index = index - 1;
		box.style.background='';
		box.style.backgroundColor='#FFFFFF';
		text.innerHTML = textList[index];
		text.href = urlList[index];
		text.title = text.innerHTML;
		var imgs = box.getElementsByTagName("A");
		var btn = btnUL.getElementsByTagName("LI");
		for (var i = 0; i < count; i++) {
			if (i == index) {
				btn[i].className = "current";
			} else {
				btn[i].className = "";
			}
		}
		var bImgA = $(box).find("A:visible");
		if (bImgA.length > 0) {
			bImgA.find("IMG").fadeTo("fast", 0, function () {
				bImgA.hide();
			});
		}
		var next = $(imgs[index]);
		next.show();
		var nextImg = next.find("IMG");
		var src = nextImg.attr("src");
		if(src == undefined || src == null || src == ""){
			nextImg.attr("src",imgList[index]);
			nextImg.load(function(){
				$(this).css("background-image","");
				$(this).parent().css("background-image","");
			});
		}
		nextImg.fadeTo(400, 1);
		fn = setTimeout(autoChange, 5000);
		return;
	};
	var autoChange = function () {
		current++;
		if (current >= count + 1) {
			current = 1;
		}
		changeIndex(current);
		return;
	};
	for (var i = 0; i < count; i++) {
		var imga = document.createElement("A");
		var img = document.createElement("IMG");
		img.src = "";
		img.style.display = "none";
		imga.href = urlList[i];
		imga.title = textList[i];
		imga.target = "_blank";
		imga.style.display = "none";
		imga.appendChild(img);
		box.appendChild(imga);
		var li = document.createElement("LI");
		li.tag = (i + 1);
		li.title = imga.title;
		li.innerHTML = "<font></font>";
		li.onclick = changeIndex;
		btnUL.appendChild(li);
	}
	changeIndex(current);
}
/****----------------------- 公用资讯页焦点图 end ---------------------****/
function isPC(){
	var flag=true;
	try{
	   	if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){ 
			flag=false;
		}
	}catch(e){}
	return flag;
}