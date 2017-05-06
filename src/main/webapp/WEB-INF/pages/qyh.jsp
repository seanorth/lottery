<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- 全局contextPath变量 -->
<script type="text/javascript">var ctx='${pageContext.request.contextPath}';var ctx_jsonp=ctx+"/jsonp";var ctx_static_proxy=ctx+"/static/proxy";</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>山东群英会投注,福彩群英会网上购买,齐鲁风采群英会 - 彩乐乐</title>
<meta name="keywords" content="群英会,网上买群英会,山东群英会,福彩群英会" />
<meta name="description" content="山东群英会每期15分钟,全天52期,彩乐乐提供山东福彩群英会网上投注以及群英会开奖直播及推荐资讯，齐鲁风采群英会出票直联省福彩中心，诚信安全请放心购买，这里是中奖福地。" />

<link href="<%=request.getContextPath()%>/static/min?f=/css/public.css,/css/style.css,/css/lottery/lottery.css,/css/lottery/highfrequency/highfrequency.css,/css/lottery/zhuihao.css" rel="stylesheet" type="text/css" />

<script src="<%=request.getContextPath()%>/static/min?f=/js/jQuery/jquery.min.js,/js/boot.js,/js/util/map.js,/js/util/set.js,/js/util/cll.js,/js/trade/helper.js,/js/trade/term_animation.js,/js/qyh/trade.js,/js/qyh/tradeInfo.js" type="text/javascript"></script>

<script type="text/javascript">
	function switchTab(tab,e) {
		var id = tab.id;
		var tId = id.replace("menu", "tab");
		var tbody = document.getElementById(tId);
		$(tbody.parentNode).find(e).hide();
		$(tbody).show();
		$(tab.parentNode).find("li").attr("class","");
		tab.className = "current";
		return;
	}
	
	function changeAwardNo(open,wait){
		$("#openCountID").text(open);
		$("#waitCountID").text(wait);
		return;
	}
	
	function selectRow3(row,key,value,codes,s){
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
		var balls1 = new Array();
		var balls2 = new Array();
		var ballsKey;
		if(s && s!=""){
			ballsKey = trade.playType+s;
			balls1 = fw.dom.getObjTag(ballsKey+'1',"div");
			balls2 = fw.dom.getObjTag(ballsKey+'2',"div");
		}else{
			ballsKey = trade.playType;
			if(row == 1){
				balls1 = fw.dom.getObjTag(ballsKey+'1',"div");
				balls2 = fw.dom.getObjTag(ballsKey+'2',"div");
			}else if (row == 2){
				balls1 = fw.dom.getObjTag(ballsKey+'3',"div");
				balls2 = fw.dom.getObjTag(ballsKey+'4',"div");
			}else if (row == 3){
				balls1 = fw.dom.getObjTag(ballsKey+'5',"div");
				balls2 = fw.dom.getObjTag(ballsKey+'6',"div");
			}
		}
		//balls = $("#" + trade.playType+row ).find("div");
		var balls = new Array();;
		for(var i=0;i<balls1.length;i++){
			balls[i]=balls1[i];
		}
		var baseIndex = balls1.length;
		for(var i=0;i<balls2.length;i++){
			balls[i+baseIndex]=balls2[i];
		}
		
		for(var j=0;j<balls.length;j++){
			selectNum(balls[j],row,"");	selectNum(balls[j],row,"");			//配合组选标准玩法
		}
		if(key=="clear"){
		}else if(key=="all"){
				var c = 0;
				for(var j=0;j<balls.length;j++)
				{
					if(!danSet.contain(codes[c])){
						selectNum(balls[j],row,codes[c]);
					}
					c++;
				}
		}else if(key=="big"){
				var c = 0;
				for(var j=0;j<balls.length;j++)
				{
					if(j>=value){	
						if(!danSet.contain(codes[c])){
							selectNum(balls[j],row,codes[c]);
						} 
						c++; 
					}
				}
		}else if(key=="small"){
				var c = 0;
				for(var j=0;j<balls.length;j++)
				{
					if(j<=value){	
						if(!danSet.contain(codes[c])){
							selectNum(balls[j],row,codes[c]); 
						}
						c++; 
					}
				}
		}else if(key=="even"){
				var c = 0;
				for(var j=0;j<balls.length;j++)
				{
					if( j%2==value ){	
						if(!danSet.contain(codes[c])){
							selectNum(balls[j],row,codes[c]); 
						}
						c++; 
					}
				}
		}else if(key=="odd"){
				var c = 0;
				for(var j=0;j<balls.length;j++)
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
	
	//$(document).ready(function(){
	//	startServerTime('dateTime');
    //});
</script>
<style type="text/css" >
	<!--
	/*提示框*/
	.wenzhegai { position:fixed; _position:absolute; left:0; top:0; z-index:1004; display: block; width:100%; height:100%; background:#000; opacity:.80; filter: alpha(opacity = 40);}
	.wenzhegai .boxiframe {border:0 none; display:block; width:100%; height:100%; background:#000; opacity:.80; filter:alpha(opacity = 40);}
	.alert_w {width:390px;}  
	.alert_shadow {background:#cc7474; opacity:.80; filter: alpha(opacity = 80);}
	.alertbox {background:#fff;border:1px solid #D40000;left:-5px;position:relative;top:-5px;}
	.alertbox .alertbg {background:url(http://img.cailele.com/img/mycll/alert_t.gif) repeat-x 0 0;height:26px;overflow:hidden;}
	.alertbox .alertbg .tstl {color:#fff;float:left;font-size:14px;font-weight:bold;height:26px;line-height:26px;text-indent:10px;}
	.alertbox .alertbg .btnclose {background:url(http://img.cailele.com/img/mycll/alert_btn_close.gif) no-repeat 3px 3px;display:inline-block;float:right;font-size:0;height:17px;line-height:0;margin:5px 5px 0 0;overflow:hidden;text-indent:-9999px;width:18px;}
	.alertbox .textbox p { padding:15px;}
	.alertbox .textbox p,.alertbox .textbox p span { line-height:18px;font-size:12px;color:#454545;}
	.mar{ margin-top:10px;}
	-->
</style>
</head>
<body>

<!-- 头部文件  -->
<!--头部begin-->
<!--说明：下面这个style.css样式表，必需使用绝对路径-->
<link href="<%=request.getContextPath()%>/static/min/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/static/min/js/head.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/min/js/tips.js"></script>
<script type="text/javascript">try{writeTopLine();}catch(e){}</script>


<!--头部提示begin-->
<div id="topTips" class="mytips mytips_top"></div>
<!--头部提示end-->

<!--下拉广告begin-->
<!--<div id="sliderPromo1" class="sliderpromo" style="display:none;">
	<div class="sliderpromobg"></div>
	<div class="slidercon">
    	<a href="javascript:;" class="close"><i class="iconfont">&#xe60c;</i></a>
        <div class="scene"><a href="javascript:;"  class="link"></a></div>
        <div class="scene1">
        	<div class="remind">
            	<div class="hd"></div>
                <div class="bd">
                	<a href="http://www.cailele.com/subject/robbery2016/index.php" target="_blank" class="packet"></a>
                	<ul>
                    	<li><a href="http://www.cailele.com/static/info/201601/show_10405222.shtml" target="_blank">2016年2月7日0:00至2月13日24:00春节休市</a></li>
                        <li><a href="http://www.cailele.com/static/info/201601/show_10409095.shtml" target="_blank">新春佳节将至 2016年春节休市网站业务安排公告</a></li>
                        <li><a href="http://www.cailele.com/static/info/201602/show_10410531.shtml" target="_blank">正月百福至 精彩不间断 假期体育赛事收视指南</a></li>
                        <li><a href="http://www.cailele.com/uc/index.php" target="_blank">春假登陆领积分如常进行 领积分存子弹年后再战</a></li>
                        <li><a href="http://www.cailele.com/subject/robbery2016/index.php" target="_blank">情人节与你倾情相约 穿越回来领取猴年开门利是</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="scene2"><a href="http://www.cailele.com/subject/robbery2016/index.php" target="_blank" class="guide"></a></div>
        <div class="scene3"><a href="javascript:void(0);" class="guide"></a></div> 
    </div>
</div>-->

<div id="sliderPromo2" class="sliderpromo" style="display:none;">
	<div class="sliderpromobg"></div>
	<div class="slidercon">
    	<a href="javascript:;" class="close"><i class="iconfont">&#xe60c;</i></a>
        <div class="scene"><a href="http://www.cailele.com/subject/2016euro/" target="_blank" class="link"></a></div>
        <div class="scene1">
        	<div class="remind">
            	<div class="hd"></div>
                <div class="bd">
                	<!--<a href="http://www.cailele.com/subject/robbery2016/index.php" target="_blank" class="packet"></a>-->
                	<ul>
                    	<li><a href="http://www.cailele.com/static/info/201701/show_10500914.shtml" target="_blank">●喜迎新春佳节 同庆共贺 2017春节休市公告</a></li>
                        <li><a href="http://www.cailele.com/static/info/201701/show_10503773.shtml" target="_blank">●1月21日起客服热线暂停人工服务 敬请留意</a></li>
                        <li><a href="http://www.cailele.com/static/info/201701/show_10503565.shtml" target="_blank">●生鸡勃勃贺新春 开门利是大派送 领红包啦</a></li>
                        <li><a href="http://www.cailele.com/static/info/201701/show_10503163.shtml" target="_blank">●彩乐乐投注温馨提点 助你把握"鸡"会赚大钱</a></li>
                        <li><a href="http://www.cailele.com/static/info/201701/show_10504066.shtml" target="_blank">●休市精彩不间断 春节期间体育赛事收视指南</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="scene2"><a href="http://www.cailele.com/subject/robbery2017/index.php" target="_blank" class="guide"></a></div>
        <div class="scene3"><a href="javascript:void(0);" class="guide"></a></div>
    </div>
</div>
<!--下拉广告end-->

<!--头部区域begin-->
<div class="headerarea">
    <!--页头begin-->
    <div class="header">
        <div class="layout">
            <script type="text/javascript">
				var domain = document.domain.toLowerCase();
				if(domain == "cp.fjsen.com"){
				   document.write('<a style=" float:left; margin-left:5px; margin-top:16px; margin-right:-10px;" href="http://cp.fjsen.com/"><img src="http://img.cailele.com/img_new/partner/dlw_logo.png"></a>');
				}
			</script>
            <span class="logo"><a href="http://www.cailele.com">彩乐乐</a></span>
            <span id="subLogo" class="png sublogo">乐彩票乐生活</span>
            <script type="text/javascript">
				var domain = document.domain.toLowerCase();
				if(domain == "cp.fjsen.com"){
				   document.getElementById('subLogo').style.display='none';
				}
			</script>
            <span class="promo"><script src="<%=request.getContextPath()%>/static/min/js/cllAd/toppromo.js" type="text/javascript"></script></span>
            <div class="service">
            	<span class="hongbo"><a href="http://www.cailele.com/subject/hongbo/" target="_blank" class="hblink">上市公司<em>鸿博股份(002229)</em></a></span>
                <span class="chat">
                	<a href="http://www.cailele.com/aboutus/contact.shtml" target="_blank" class="tel"><i class="iconfont_hd">&#xe628;</i><span class="txt">020-87304860</span></a>
                    <a href="javascript:;" class="ol" onclick="window.open('http://tb.53kf.com/webCompany.php?arg=10127953&style=1','_blank','height=500,width=800,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no');"><i class="iconfont_hd">&#xe62a;</i><span class="txt">在线客服</span></a>
                </span>
            </div>
        </div>
    </div>
    <!--页头end-->
    <!--导航begin-->
    <div class="navigation">
        <div class="layout">
            <div id="selectMenu" class="menu_panel" onmouseover="menuShower();" onmouseout="menuHider();">
                <strong id="selectMenuTxt" class="txt"><b>请选择彩种<em>(37)</em></b><i class="arrow"><s class="s1"></s><s class="s2"></s></i></strong>
                <div id="menuBox" class="menu_box" style="display:none;">
                    <div id="lotteryPanel" class="menu_box_in">
                    	<div class="d_center">
    <ul>
        <li class="gaopin">
            <div class="d_title"><i class="iconfont_hd"></i><strong>高频</strong><em>开奖速度快</em></div>
            <div class="d_lottery">
                <span class="category c_11x5">
                    <label id="lt_gd11x5"><a href="http://www.cailele.com/lottery/gd11x5/" target="_blank" class="disable">广东11选5<i></i></a></label>
                    <label id="lt_jx11x5"><a href="http://www.cailele.com/lottery/jx11x5/" target="_blank" class="disable">江西11选5<i></i></a></label>
                    <!--<label id="lt_cq11x5"><a class="disable" target="_blank" href="http://www.cailele.com/lottery/cq11x5/">重庆11选5<i></i></a></label>-->
                    <label id="lt_11yun"><a href="http://www.cailele.com/lottery/11yun/" target="_blank" class="disable">11运夺金<i></i></a></label>
                    <label id="lt_ln11x5"><a href="http://www.cailele.com/lottery/ln11x5/" target="_blank" class="disable">辽宁11选5<i></i></a></label>
                    <label id="lt_sh11x5"><a href="http://www.cailele.com/lottery/sh11x5/" target="_blank" class="disable">上海11选5<i></i></a></label>
                    <label id="lt_hlj11x5"><a href="http://www.cailele.com/lottery/hlj11x5/" target="_blank" class="disable">黑龙江11选5<i></i></a></label>
            		<label id="lt_js11x5"><a href="http://www.cailele.com/lottery/js11x5/" target="_blank" class="disable">江苏11选5<i></i></a></label>
                </span>
                <span class="category c_k3">
                    <label id="lt_k3"><a href="http://www.cailele.com/lottery/k3/" target="_blank" class="disable">江苏快3<i></i></a></label>
                    <label id="lt_jlk3"><a href="http://www.cailele.com/lottery/jlk3/" target="_blank" class="disable">吉林快3<i></i></a></label>
                    <label id="lt_hbk3"><a href="http://www.cailele.com/lottery/hbk3/" target="_blank" class="disable">湖北快3<i></i></a></label>
                    <label id="lt_ahk3"><a href="http://www.cailele.com/lottery/ahk3/" target="_blank" class="disable">安徽快3<i></i></a></label>
                    <label id="lt_nmgk3"><a href="http://www.cailele.com/lottery/nmgk3/" target="_blank" class="disable">内蒙古快3<i></i></a></label>
                </span>
                <span class="category c_klsf">
                    <label id="lt_klsf"><a href="http://www.cailele.com/lottery/klsf/" target="_blank" class="disable">广东快乐十分<i></i></a></label>
                    <label id="lt_cqklsf"><a href="http://www.cailele.com/lottery/cqklsf/" target="_blank" class="disable">重庆快乐十分<i></i></a></label>
                    <!--<label id="lt_hnklsf"><a href="http://www.cailele.com/lottery/hnklsf/" target="_blank" class="disable">湖南快乐十分<i></i></a></label>-->
                    
                </span>
                <span class="category c_ssc">
                    <label id="lt_ssc"><a href="http://www.cailele.com/lottery/ssc/" target="_blank" class="disable">重庆时时彩<i></i></a></label>
                    <!--<label id="lt_jxssc"><a class="disable" target="_blank" href="http://www.cailele.com/lottery/jxssc/">江西时时彩<i></i></a></label>-->
                </span>
                <span class="category c_other">
                    <label id="lt_qyh"><a href="<%=request.getContextPath()%>/index/qyh/" target="_blank" class="disable">群英会<i></i></a></label>
                    <label id="lt_klpk3"><a href="http://www.cailele.com/lottery/sdklpk3/" target="_blank" class="disable">山东快乐扑克3<i></i></a></label>
                </span>
           </div>
        </li>
        <li class="shuzi">
            <div class="d_title"><i class="iconfont_hd"></i><strong>数字</strong><em>福彩和体彩</em></div>
            <div class="d_lottery">
                <span class="category">            
                    <label id="lt_ssq"><a href="<%=request.getContextPath()%>/index/ssq/" target="_blank" class="disable">双色球<i></i></a></label>
                    <label id="lt_dlt"><a href="http://www.cailele.com/lottery/dlt/" target="_blank" class="disable">大乐透<i></i></a></label>
                    <label id="lt_3d"><a href="<%=request.getContextPath()%>/index/3d/" target="_blank" class="disable">3D<i></i></a></label>
                    <label id="lt_p3"><a href="http://www.cailele.com/lottery/p3/" target="_blank" class="disable">排列三<i></i></a></label>
                    <label id="lt_p5"><a href="http://www.cailele.com/lottery/p5/" target="_blank" class="disable">排列五<i></i></a></label>
                    <label id="lt_qlc"><a href="http://www.cailele.com/lottery/qlc/" target="_blank" class="disable">七乐彩<i></i></a></label>
                    <label id="lt_hc1"><a href="http://www.cailele.com/lottery/hc1/" target="_blank" class="disable">好彩一<i></i></a></label>
                    <label id="lt_qxc"><a href="http://www.cailele.com/lottery/qxc/" target="_blank" class="disable">七星彩<i></i></a></label>
                    <label id="lt_15x5"><a href="http://www.cailele.com/lottery/15x5/" target="_blank" class="disable">15选5<i></i></a></label>
                    <label id="lt_df6j1"><a href="http://www.cailele.com/lottery/df6j1/" target="_blank" class="disable">东方6+1<i></i></a></label>
                </span>
           </div>
        </li>
        <li onmouseout="this.className='jingji'" onmouseover="this.className='jingji menuhover'" class="jingji">
        	<!--显示更多彩种begin-->
        	<i class="arrow"><s class="s1"></s><s class="s2"></s></i>
            <div class="getmore">
           		<div class="d_lottery">
                    <span class="category c_jczq">
                        <label id="lt_zqht"><a href="http://www.cailele.com/lottery/jingcai/zqht.shtml" target="_blank" class="">混合过关<i></i></a></label>
                        <label id="lt_zqbf"><a href="http://www.cailele.com/lottery/jingcai/zqbf.shtml" target="_blank" class="">足球比分<i></i></a></label>
                        <label id="lt_zqbqc"><a href="http://www.cailele.com/lottery/jingcai/zqbqc.shtml" target="_blank" class="">半全场<i></i></a></label>
                    </span>
                    <span class="category c_jclq">
                        <label id="lt_lqht"><a href="http://www.cailele.com/lottery/basketball/lqht.shtml" target="_blank" class="">混合过关<i></i></a></label>
                        <label id="lt_lqsfc"><a href="http://www.cailele.com/lottery/basketball/lqsfc.shtml" target="_blank" class="">胜分差<i></i></a></label>
                        <label id="lt_lqdxf"><a href="http://www.cailele.com/lottery/basketball/lqdxf.shtml" target="_blank" class="">大小分<i></i></a></label>
                    </span>
                    <span class="category c_bjdc">
                        <label id="lt_dcsxds"><a href="http://www.cailele.com/lottery/dcspf/dcsxds.shtml" target="_blank" class="">上下单双<i></i></a></label>
                        <label id="lt_dcbqc"><a href="http://www.cailele.com/lottery/dcspf/dcbqc.shtml" target="_blank" class="	">半全场<i></i></a></label>
                        <label id="lt_dcjqs"><a href="http://www.cailele.com/lottery/dcspf/dcjqs.shtml" target="_blank" class="	">总进球数<i></i></a></label>
                    </span>
                    <span class="category c_ctzc">
                        <label id="lt_fb6cbq"><a href="http://www.cailele.com/lottery/fb6cbq/" target="_blank" class="disable">半全场<i></i></a></label>
                        <label id="lt_fbjq4"><a href="http://www.cailele.com/lottery/fbjq4/" target="_blank" class="disable">进球彩<i></i></a></label>
                    </span>
               </div>
           </div>
           <!--显示更多彩种end-->
            <div class="d_title"><i class="iconfont_hd"></i><strong>竞技</strong><em><!--<a href="javascript:;">竞彩足球年底加奖10%</a>-->中奖容易 成就高手</em></div>
            <div class="d_lottery">
                <span class="category c_jczq">
                    <label id="lt_jingcai"><a href="http://www.cailele.com/lottery/jingcai/" target="_blank" class="disable">[竞彩足球]<i></i></a></label>
                    <label id="lt_rqspf"><a href="http://www.cailele.com/lottery/jingcai/" target="_blank" class="">胜平负/让球<i></i></a></label>
                    <label id="lt_dggd"><a class="new" target="_blank" href="http://www.cailele.com/lottery/jingcai/dgtz.shtml">单场固定奖<i></i></a></label>
                </span>
                <span class="category c_jclq">
                	<label id="lt_basketball"><a href="http://www.cailele.com/lottery/basketball/lqht.shtml" target="_blank" class="disable">[竞彩篮球]<i></i></a></label>
                    <label id="lt_lqrfsf"><a href="http://www.cailele.com/lottery/basketball/" target="_blank" class="">让分胜负<i></i></a></label>
                    <label id="lt_lqdxf"><a href="http://www.cailele.com/lottery/basketball/dgtz.shtml" target="_blank" class="">单场固定奖<i></i></a></label>
                </span>
                <span class="category c_bjdc">
                	<label id="lt_dcspf"><a href="http://www.cailele.com/lottery/dcspf/" target="_blank" class="disable">[北京单场]<i></i></a></label>
                    <label id="lt_dcrqspf"><a href="http://www.cailele.com/lottery/dcspf/" target="_blank" class="">让球胜平负<i></i></a></label>
                    <label id="lt_sfgg"><a href="http://www.cailele.com/lottery/dcspf/sfgg.shtml" target="_blank" class="disable">胜负过关<i></i></a></label>
                </span>
                <span class="category c_ctzc">
                	<label id="lt_ctzc"><a href="http://www.cailele.com/lottery/fbsfc/" target="_blank" class="">[传统足彩]<i></i></a></label>
                    <label id="lt_fbsfc"><a href="http://www.cailele.com/lottery/fbsfc/" target="_blank" class="disable">胜负彩<i></i></a></label>
                    <label id="lt_fbr9"><a href="http://www.cailele.com/lottery/fbr9/" target="_blank" class="disable">任选9场<i></i></a></label>
                </span>
           </div>
        </li>
    </ul>
</div>
                        <!---#include virtual="/static/indexhome/lotteryHead_v4.shtml"-->
                    </div>
                </div>
            </div>
            
            
            <ul id="cllTopNav" class="nav">
                <li><a href="http://www.cailele.com" target="_blank" class="home"><span><i class="iconfont_hd">&#xe62f;</i>首页</span></a></li>
                <li><a href="http://www.cailele.com/lottery/" target="_blank" class="lottery"><span>购彩大厅</span></a></li>
                <li><a href="http://www.cailele.com/hm/newList.php" target="_blank"><span>合买大厅</span></a></li>
                <li>
                    <div id="navOpenDraw" class="drawing" onmouseover="navOpenDrawShow();" onmouseout="navOpenDrawHide();">
                        <a href="http://kjh.cailele.com/" target="_blank" class="infotit">彩票开奖<i class="iconfont_hd">&#xe639;</i></a>
                        <div id="navOpenDrawBox" class="infobox" style="display:none;">
							<a href="http://kjh.cailele.com/" target="_blank" class="kj">开奖公告</a>
                            <a href="http://www.cailele.com/guoguan/jcGuoguan.php?lotteryType=38" target="_blank" class="gg">过关统计</a>
                        </div>
                    </div>
                </li>
                <li><a href="http://www.cailele.com/news/" target="_blank"><span>彩票资讯</span></a></li>
                <li><a href="http://tool.cailele.com/" target="_blank"><span>走势图表</span></a></li>
                <li><a href="http://yl.cailele.com/" target="_blank"><span>遗漏数据</span></a></li>
            </ul>
            <div id="appLottery" class="app" onmouseover="appShower();" onmouseout="appHider();">
            	<a href="http://www.cailele.com/shouji/index.php" target="_blank"><i class="iconfont_hd iconphone">&#xe630;</i><i class="iconfont_hd icontxt1">&#xe63c;</i><i class="iconfont_hd icontxt2">&#xe63d;</i></a>
                <div id="qrCodeBox" class="qr_code_box">
                    <div class="bd">
                    	<span class="title">用手机扫描二维码</span>
                        <span class="subtxt">下载手机客户端，掌上购彩</span>
                    	<span class="qr_code"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--导航end-->
</div>
<!--头部区域end-->
<!--头部end-->

<!--积分夺宝上线弹窗begin-->
<!--
<div id="yungouBox" class="sdialog yungou_dialog" style="display:none;">
    <div class="scoverbg"></div>
    <div class="alertbox" style="display:none;">
        <a href="http://m1.cailele.com/index.shtml?s_id=14219131" target="_blank" class="png con"></a>
        <a href="javascript:;" class="png close"></a>
    </div>
</div>
-->
<script type="text/javascript">
	$(function(){
		/*$('#yungouBox .close').click(function(){
			closeLuckTip();
			$('.sdialog').hide();
		});*/

		/*$('#isShowLuckTip').click(function(){
			var obj = $('#isShowLuckTip');
			
			if (obj.attr("className") == 'default') {
				obj.attr("className","select");
			} else {
				obj.attr("className","default");
			}
		});*/
	});

	/*$(document).ready(function(){
		$.post("/checkLuckTip.php", 
		   function(data){
			     var ret = eval("(" + data + ")");
			     var code = ret.code;
			     if(code == "0"){
			     		$("#yungouBox").show();
						$('#yungouBox .alertbox').slideDown('fast');
			     }
		 });
	});*/
</script>
<!--积分夺宝上线弹窗end-->

<script type="text/javascript">
/*--导航"选择彩种"下拉框隐藏与显示---*/
var currentPage = document.getElementsByTagName('body')[0].getAttribute('id');
if(currentPage == 'cllHome'){
	document.getElementById("menuBox").style.display = "block";
}
function menuShower(){
	if(currentPage != 'cllHome'){
		document.getElementById("menuBox").style.display = "block";
	}
}

function menuHider(){
	if(currentPage != 'cllHome'){
		document.getElementById("menuBox").style.display = "none";
	}
}

/*--导航"彩票开奖"下拉框隐藏与显示---*/
function navOpenDrawShow(){
	document.getElementById("navOpenDraw").className = "drawing hover";
	document.getElementById("navOpenDrawBox").style.display = "";
}

function navOpenDrawHide(){
	document.getElementById("navOpenDraw").className = "drawing";
	document.getElementById("navOpenDrawBox").style.display = "none";
}

/*--导航"手机购彩"下拉框隐藏与显示---*/
function appShower(){
	document.getElementById("qrCodeBox").style.display = "block";
	document.getElementById("appLottery").className = "app app_hover";
}

function appHider(){
	document.getElementById("qrCodeBox").style.display = "none";
	document.getElementById("appLottery").className = "app";
}
</script>
<!--头部 -->

<!-- 广告横幅begin -->
<!-- 广告横幅end -->
  

<!--基本信息begin-->
<div class="centerDIV">
  <div class="contentDIV_t">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="contentTable">
      <tr>
        <td rowspan="3" class="tdLogo" align="center"><a href="http://www.cailele.com/lottery/qyh/" title="群英会"><img src="http://img.cailele.com/img/images/icon_qyh01.gif" alt="群英会" /></a></td>
        <td class="title title_new"><h1><b>山东群英会</b><span class="title_hint_new">每<font>10</font>分钟一期，全天<font>78</font>期</span></h1></td>
        <td rowspan="3" class="tdSWF">
          <script type="text/javascript">
				//flash("/flash/HighFrequencyNew.swf?lotteryType=154", "qyh_WSF", "470px", "100px", { quality: "high", menu: "false", wmode: "transparent", allowScriptAccess: "always", allowNetworking: "all", allowFullScreen: "true" });
          		lottery_animation_control_init(162);
          </script>
        </td>
        <td class="tdR" style="vertical-align:top;"><span id="dateTime">loading...</span></td>
      </tr>
      <tr>
        <td class="tdHint tdHint_new">
          <div class="divHint_enabled">
          	<font id="lottery_status" class="lottery_status">暂停销售</font>
          	<span>当前已开出<b id="openCountID">--</b>期,还剩<b id="waitCountID">--</b>期</span></div>
        </td>
        <td class="tdR">&nbsp;</td>
      </tr>
      <tr>
        <td class="btnTD">
			<a href="javascript:void(0);" class="current"><font class="l"></font><font class="m">投注</font><font class="r"></font></a>
            <a href="http://yl.cailele.com/qyh/rx1Miss.php" target="_blank"><font class="l"></font><font class="m">遗漏</font><font class="r"></font></a>
			<a href="/news/list-10000447-1.html" target="_blank"><font class="l"></font><font class="m">技巧</font><font class="r"></font></a>
			<a href="/news/list-37-1.html" target="_blank"><font class="l"></font><font class="m">推荐</font><font class="r"></font></a>
		</td>
        <td class="tdR">
			<a href="http://www.cailele.com/news/list-53-1.html" target="_blank">开奖</a>|<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">走势图</a>|<a href="/rule/rule22.shtml" target="_blank">玩法介绍</a>
		</td>
      </tr>
    </table>
  </div>
  	 <!--彩种停售提示begin-->
<div class="lot_stop_msg second hidden" id="lot_stop_msg">
    <div class="lot_stop_msg_in">
        <p>
            <span class="a"><em class="lotteryType"></em>&nbsp;<em class="stop_msg"></em></span>
            <span class="b"></span>
			<span class="c"><a href="http://www.cailele.com/static/info/201609/show_10477708.shtml">积分乐园全新改版 积分投注更多fun</a></span>
        </p>
    </div>
	<div class="codes"></div>
</div>
<!--彩种停售提示end-->

    <div class="contentDIV">
        <div id="loadHintDIV">
    	    <img src="http://img.cailele.com/img_new/loading.gif" alt=""/>正在加载数据...
        </div>
        <div id="loadHintBgDIV" style="height:800px;"></div>
        <div id="contentDIV">
            <div class="left">
                  <div class="playChoiceDIV" style="position:relative;">
                    <ul>
                      <li id="rx_menu" class="on" onclick="changeMenu('rx')">任选</li>
                      <li id="rxdt_menu" class="offlong" onclick="changeMenu('rxdt',true)">任选胆拖</li>
                      <li id="wei_menu" onclick="changeMenu('wei')">围选</li>
                      <li id="weidt_menu" class="offlong" onclick="changeMenu('weidt',true)"><!--<img src="http://img.cailele.com/img/images/iconxin5.gif" class="float"/>-->围选胆拖</li>
                      <li id="shun_menu" onclick="changeMenu('shun')">顺选</li>
                    </ul>
                   
                    <!--<span style="position:absolute;top:0;left:25px;"><img src="http://img.cailele.com/img_new/lottery/flag_jiajiang.png" alt=""/></span>
                    <span style="position:absolute;top:0;left:97px;"><img src="http://img.cailele.com/img_new/lottery/flag_jiajiang.png" alt=""/></span>
                    <span style="position:absolute;top:0;left:170px;"><img src="http://img.cailele.com/img_new/lottery/flag_jiajiang.png" alt=""/></span>
                    <span style="position:absolute;top:0;left:244px;"><img src="http://img.cailele.com/img_new/lottery/flag_jiajiang.png" alt=""/></span>
                    <span style="position:absolute;top:0;left:314px;"><img src="http://img.cailele.com/img_new/lottery/flag_jiajiang.png" alt=""/></span>-->
                   
                   
                  </div>
                  <div class="itemListDIV">
                    <!--玩法:任选开始 -->
                    <div id="rx_Div">
                      <div class="item">
                        <div class="title"><h3>第一步</h3>选投注方式</div>
                        <div class="main">
                          <ul>
                            <li class="radio" style="word-spacing:-2px; letter-spacing:-1px;">
					            <label for="rx1Rad"><input id="rx1Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx1');" checked /><font>任一</font></label>
								<label for="rx2Rad"><input id="rx2Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx2');" /><font>任二</font></label>
								<label for="rx3Rad"><input id="rx3Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx3');" /><font>任三</font></label>
								<label for="rx4Rad"><input id="rx4Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx4');" /><font>任四</font></label>
								<label for="rx5Rad"><input id="rx5Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx5');" /><font>任五</font></label>
								<label for="rx6Rad"><input id="rx6Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx6');" /><font>任六</font></label>
								<label for="rx7Rad"><input id="rx7Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx7');" /><font>任七</font></label>
								<label for="rx8Rad"><input id="rx8Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx8');" /><font>任八</font></label>
								<label for="rx9Rad"><input id="rx9Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx9');" /><font>任九</font></label>
								<label for="rx10Rad"><input id="rx10Rad" name="rx_ra" type="radio" class="radio" onclick="setPlayType('rx10');" /><font>任十</font></label>
				            </li>
                          </ul>
						  <p class="col999" id="rx1_label" style="">[玩法介绍]：从01~20共20个数字号码中任选1个号码进行投注，奖金4元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a></p>
						  <p class="col999" id="rx2_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选2个号码进行投注，奖金22元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a>
                          <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年12月2日-2014年12月31日，任二单注加奖3元，加奖后每注奖金25元。<a href="http://www.cailele.com/static/info/201412/show_10311933.shtml" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
 </p>
						  <p class="col999" id="rx3_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选3个号码进行投注，3个全中奖金57元，中2个奖金5元<!--从01~20共20个数字号码中任选3个号码进行投注，全中奖金100元。--><a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a>
                          <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年12月2日-2014年12月31日，单注加8元，加奖后每注奖金65元。<a href="http://www.cailele.com/static/info/201412/show_10311933.shtml" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
                          </p>
						  <p class="col999" id="rx4_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选4个号码进行投注，4个全中奖金820元，中3个奖金10元。<!--从01~20共20个数字号码中任选4个号码进行投注，全中奖金1000元。--><a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a>
                          <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年11月17日直至8000万派完即止，任四中四单注加奖180元，加奖后单注奖金1000元。<a href="http://www.cailele.com/subject/qyh_award/" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
                          
                          </p>
						  <p class="col999" id="rx5_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选5个号码进行投注，5个全中奖金10000元，中4个奖金50元，中3个奖金4元。<!--从01~20共20个数字号码中任选5个号码进行投注，全中奖金10000元。--><a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a>
                         </p>
						  <p class="col999" id="rx6_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选6个号码进行投注，奖金3000元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a></p>
						  <p class="col999" id="rx7_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选7个号码进行投注，奖金855元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a></p>
						  <p class="col999" id="rx8_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选8个号码进行投注，奖金320元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a></p>
						  <p class="col999" id="rx9_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选9个号码进行投注，奖金142元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a></p>
						  <p class="col999" id="rx10_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选10个号码进行投注，奖金71元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a>
                          <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年11月17日直至8000万派完即止，任十单注加奖19元，加奖后单注奖金90元。<a href="http://www.cailele.com/subject/qyh_award/" class="li0" target="_blank">详细介绍</a></em>-->
                          <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]任选十每注加奖30元，即加奖后奖金由原来的150元/注提到为180元/注;<a href="/static/info/201212/show_10103305.shtml" class="li0" target="_blank">详细介绍</a></em>--></p>
                         <!-- <div class="prompt">
                                <p class="a"><em class="award_tips">[加奖提示]</em>2015年2月1日起，单个方案中奖100元(含)以上，即可享受10%的加奖奖金，单个方案最高加奖2000元。<a href="http://www.cailele.com/static/info/201501/show_10325107.shtml" target="_blank" class="detail">详细介绍</a></p>
                            </div>-->
                        </div>
                      </div>
					  <!-- 任一开始 -->
					  <div id="rx1_playTypeDiv">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx11">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx1_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx12">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx1_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任一  -->

					  <!-- 任二开始 -->
					  <div id="rx2_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx21">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx2_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx22">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx2_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任二  -->
						
					  <!-- 任三开始 -->
					  <div id="rx3_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx31">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx3_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx32">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx3_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任三  -->
						
					  <!-- 任四开始 -->
					  <div id="rx4_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx41">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx4_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx42">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx4_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任四  -->
						
					  <!-- 任五开始 -->
					  <div id="rx5_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx51">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx5_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx52">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx5_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任五  -->
						
					  <!-- 任六开始 -->
					  <div id="rx6_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx61">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx6_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx62">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx6_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任六  -->
						
					  <!-- 任七开始 -->
					  <div id="rx7_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx71">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx7_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx72">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									  <div class="numyl" id="rx7_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任7  -->
						
					  <!-- 任8开始 -->
					  <div id="rx8_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx81">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx8_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx82">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx8_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任8  -->
						
					  <!-- 任9开始 -->
					  <div id="rx9_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx91">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx9_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx92">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx9_miss_2">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任9  -->

					  <!-- 任10开始 -->
					  <div id="rx10_playTypeDiv" style="display:none">
						<div class="item">
							<div class="title"><h3>第二步</h3>选择号码</div>
							<div class="main">
								<div class="ul">
									<div class="li1"> 号 码 </div>
									<div id="rx101">
										<div class="li2" onclick="selectNum(this,1,'01')">01</div>
										<div class="li2" onclick="selectNum(this,1,'02')">02</div>
										<div class="li2" onclick="selectNum(this,1,'03')">03</div>
										<div class="li2" onclick="selectNum(this,1,'04')">04</div>
										<div class="li2" onclick="selectNum(this,1,'05')">05</div>
										<div class="li2" onclick="selectNum(this,1,'06')">06</div>
										<div class="li2" onclick="selectNum(this,1,'07')">07</div>
										<div class="li2" onclick="selectNum(this,1,'08')">08</div>
										<div class="li2" onclick="selectNum(this,1,'09')">09</div>
										<div class="li2" onclick="selectNum(this,1,'10')">10</div>
									</div>
								</div>
								<div class="ul">
									<div class="li00">遗 漏</div>
									<div class="numyl" id="rx10_miss_1">
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div id="rx102">
										<div class="li2" onclick="selectNum(this,1,'11')">11</div>
										<div class="li2" onclick="selectNum(this,1,'12')">12</div>
										<div class="li2" onclick="selectNum(this,1,'13')">13</div>
										<div class="li2" onclick="selectNum(this,1,'14')">14</div>
										<div class="li2" onclick="selectNum(this,1,'15')">15</div>
										<div class="li2" onclick="selectNum(this,1,'16')">16</div>
										<div class="li2" onclick="selectNum(this,1,'17')">17</div>
										<div class="li2" onclick="selectNum(this,1,'18')">18</div>
										<div class="li2" onclick="selectNum(this,1,'19')">19</div>
										<div class="li2" onclick="selectNum(this,1,'20')">20</div>
									</div>
									<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
									<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
									<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
									<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
									<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
									<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
								</div>
								<div class="ul">
									<div class="li00"> </div>
									<div class="numyl" id="rx10_miss_2">
								 	  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									  <div class="yl1"></div>
									</div>
								</div>
								
							</div>
						</div>
					  </div>
					  <!--end 任10  -->
				    </div>
					<!--玩法:任选结束 -->
					
					<!--玩法:任选胆拖开始 -->
					<div id="rxdt_Div"  style="display:none">
						<div class="item">
							<div class="title"><h3>第一步</h3>选投注方式</div> 
							<div class="main">
								<ul>
									<li class="radio">
									    <label for="rx2dtRad"><input id="rx2dtRad" name="rxdt_ra" type="radio" class="radio" onclick="setPlayType('rx2dt');" checked /><font>任二胆拖<!--<img src="http://img.cailele.com/img_new/common/award_2.gif" />--></font></label>
										<label for="rx3dtRad"><input id="rx3dtRad" name="rxdt_ra" type="radio" class="radio" onclick="setPlayType('rx3dt');" /><font>任三胆拖<!--<img src="http://img.cailele.com/img_new/common/award_2.gif" />--></font></label>
										<label for="rx4dtRad"><input id="rx4dtRad" name="rxdt_ra" type="radio" class="radio" onclick="setPlayType('rx4dt');" /><font>任四胆拖<!--<img src="http://img.cailele.com/img_new/common/award_2.gif" />--></font></label>
										<label for="rx5dtRad"><input id="rx5dtRad" name="rxdt_ra" type="radio" class="radio" onclick="setPlayType('rx5dt');" /><font>任五胆拖</font></label>
										<label for="rx6dtRad"><input id="rx6dtRad" name="rxdt_ra" type="radio" class="radio" onclick="setPlayType('rx6dt');" /><font>任六胆拖</font></label>
										<label for="rx7dtRad"><input id="rx7dtRad" name="rxdt_ra" type="radio" class="radio" onclick="setPlayType('rx7dt');" /><font>任七胆拖</font></label>
									</li>
								</ul>
								<p class="col999" id="rx2dt_label" >[玩法介绍]：从01~20中任选1个胆码,多个拖码进行投注，奖金22元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a>
                                <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年12月2日-2014年12月31日，任二单注加奖3元，加奖后每注奖金25元。<a href="http://www.cailele.com/static/info/201412/show_10311933.shtml" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
                                </p>
								<p class="col999" id="rx3dt_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选3个号码进行投注，3个全中奖金57元，中2个奖金5元。<!--从01~20中任选1-2个胆码，多个拖码进行投注，全中奖金100元。--><a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a>
                                <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年12月2日-2014年12月31日，单注加8元，加奖后每注奖金65元。<a href="http://www.cailele.com/static/info/201412/show_10311933.shtml" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
                                </p>
								<p class="col999" id="rx4dt_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选4个号码进行投注，4个全中奖金820元，中3个奖金10元。<!--从01~20中任选1-3个胆码，多个拖码进行投注，全中奖金1000元。--><a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a>
                                 <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年11月17日直至8000万派完即止，任四中四单注加奖180元，加奖后单注奖金1000元。<a href="http://www.cailele.com/subject/qyh_award/" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
                                </p>
								<p class="col999" id="rx5dt_label" style="display:none; ">[玩法介绍]：从01~20共20个数字号码中任选5个号码进行投注，5个全中奖金10000元，中4个奖金50元，中3个奖金4元。<!--从01~20中任选1-4个胆码，多个拖码进行投注，全中奖金10000元。--><a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a><!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]任五中四每注加奖加15元，即加奖奖金由原来的奖金150元/注提到165元/注。<a href="/subject/qyh_award/" class="li0" target="_blank">详细介绍</a></em>--></p>
								<p class="col999" id="rx6dt_label" style="display:none; ">[玩法介绍]：从01~20中任选1-5个胆码，多个拖码进行投注，奖金3000元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a></p>
								<p class="col999" id="rx7dt_label" style="display:none; ">[玩法介绍]：从01~20中任选1-6个胆码，多个拖码进行投注，奖金855元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank">出号走势</a> ｜ <a href="http://tool.cailele.com/zs/29_201.htm" target="_blank">AC走势</a></p>
                             <!--<div class="prompt">
                                <p class="a"><em class="award_tips">[加奖提示]</em>2015年2月1日起，单个方案中奖100元(含)以上，即可享受10%的加奖奖金，单个方案最高加奖2000元。<a href="http://www.cailele.com/static/info/201501/show_10325107.shtml" target="_blank" class="detail">详细介绍</a></p>
                            </div>-->
                            
							</div>
						</div>
						<!-- 任二胆拖开始 -->
						<div id="rx2dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="rx2dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx2dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx2dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx2dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="rx2dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx2dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx2dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx2dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 任二胆拖  -->
						
						<!-- 任三胆拖开始 -->
						<div id="rx3dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="rx3dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx3dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx3dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="rx3dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="rx3dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx3dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx3dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx3dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 任三胆拖  -->
						
						<!-- 任四胆拖开始 -->
						<div id="rx4dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="rx4dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx4dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="rx4dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx4dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="rx4dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx4dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx4dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx4dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 任四胆拖  -->
						
						<!-- 任五胆拖开始 -->
						<div id="rx5dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="rx5dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx5dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx5dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="rx5dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="rx5dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx5dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx5dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx5dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 任五胆拖  -->
						
						<!-- 任六胆拖开始 -->
						<div id="rx6dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="rx6dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx6dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx6dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx6dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="rx6dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx6dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx6dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="rx6dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 任六胆拖  -->
						
						<!-- 任七胆拖开始 -->
						<div id="rx7dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="rx7dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx7dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx7dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx7dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="rx7dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="rx7dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="rx7dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="rx7dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 任七胆拖  -->
						
							
					</div>
					<!--玩法:任选胆拖结束 -->
					
					<!--玩法:围选开始 -->
					<div id="wei_Div"  style="display:none">
						<div class="item">
							<div class="title"><h3>第一步</h3>选投注方式</div> 
							<div class="main">
								<ul>
									<li class="radio">
										<!--  <label for="wei1Rad"><input id="wei1Rad" name="wei_ra" type="radio" class="radio" onclick="setPlayType('wei1');" checked /><font>围一</font></label>-->
										<label for="wei2Rad"><input id="wei2Rad" name="wei_ra" type="radio" class="radio" onclick="setPlayType('wei2');" checked /><font>围二</font></label>
										<label for="wei3Rad"><input id="wei3Rad" name="wei_ra" type="radio" class="radio" onclick="setPlayType('wei3');" /><font>围三</font></label>
										<label for="wei4Rad"><input id="wei4Rad" name="wei_ra" type="radio" class="radio" onclick="setPlayType('wei4');" /><font>围四</font></label>
										<label for="wei5Rad"><input id="wei5Rad" name="wei_ra" type="radio" class="radio" onclick="setPlayType('wei5');" /><font>围五</font></label>
									</li>
								</ul>
								<!--<p class="col999" id="wei1_label" style="">[玩法介绍]：围一投注的一个号码与当期开出的第一个中奖号码相同即中奖25元。<a href="/static/info/201402/show_10247269.shtml" class="li0" target="_blank">详细介绍</a></p>-->
								<p class="col999" id="wei2_label" style="display:none; ">[玩法介绍]：围二投注的两个号码与当期开出的前两个中奖号相符（顺序不限）即中奖130元，与前一位相符即中奖5元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/w2Trend.php" target="_blank">围选二走势</a>
                                <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年11月17日直至8000万派完即止，围二中二单注加奖40元，加奖后单注奖金170元。<a href="http://www.cailele.com/subject/qyh_award/" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
                               		 
                                </p>
								<p class="col999" id="wei3_label" style="display:none; ">[玩法介绍]：围三投注的三个号码与当期开出的前三个中奖号相符（顺序不限）即中奖1000元，与前二位相符（顺序不限）即中奖18元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/w3Trend.php" target="_blank">围选三走势</a> </p>
								<p class="col999" id="wei4_label" style="display:none; ">[玩法介绍]：围四投注的四个号码与当期开出的前四个中奖号相符（顺序不限）即中奖5000元，与前三位（顺序不限）即中奖38元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/w4Trend.php" target="_blank">围选四走势</a></p>
								<p class="col999" id="wei5_label" style="display:none; ">[玩法介绍]：围五投注的五个号码与当期开出的前五个中奖号相符（顺序不限）即中奖10000元，与前三位（顺序不限）即中奖28元，与前四位（顺序不限）即中奖300元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://tool.cailele.com/zs/29_209.htm" target="_blank">围选五走势</a></p>
                                <!--<div class="prompt">
                                     <p class="a"><em class="award_tips">[加奖提示]</em>2015年2月1日起，单个方案中奖100元(含)以上，即可享受10%的加奖奖金，单个方案最高加奖2000元。<a href="http://www.cailele.com/static/info/201501/show_10325107.shtml" target="_blank" class="detail">详细介绍</a></p>
                                  </div>-->
							</div>
						</div>
						
						<!-- 围二开始 -->
						<div id="wei2_playTypeDiv">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 号 码 </div>
										<div id="wei21">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div id="wei22">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!--end 围二  -->
						
						<!-- 围三开始 -->
						<div id="wei3_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 号 码 </div>
										<div id="wei31">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei3_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div id="wei32">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei3_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!--end 围三  -->
						
						<!-- 围四开始 -->
						<div id="wei4_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 号 码 </div>
										<div id="wei41">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei4_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div id="wei42">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei4_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!--end 围四  -->
						
						<!-- 围五开始 -->
						<div id="wei5_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 号 码 </div>
										<div id="wei51">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei5_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div id="wei52">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei5_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!--end 围五  -->
						
					</div>
					<!--玩法:围选结束 -->
					
					<!--玩法:围选胆拖开始 -->
					<div id="weidt_Div"  style="display:none">
						<div class="item">
							<div class="title"><h3>第一步</h3>选投注方式</div> 
							<div class="main">
								<ul>
									<li class="radio">
										<label for="wei2dtRad"><input id="wei2dtRad" name="weidt_ra" type="radio" class="radio" onclick="setPlayType('wei2dt');" checked /><font>围二胆拖</font></label>
										<label for="wei3dtRad"><input id="wei3dtRad" name="weidt_ra" type="radio" class="radio" onclick="setPlayType('wei3dt');" /><font>围三胆拖</font></label>
										<label for="wei4dtRad"><input id="wei4dtRad" name="weidt_ra" type="radio" class="radio" onclick="setPlayType('wei4dt');" /><font>围四胆拖</font></label>
										<label for="wei5dtRad"><input id="wei5dtRad" name="weidt_ra" type="radio" class="radio" onclick="setPlayType('wei5dt');" /><font>围五胆拖</font></label>
									</li>
								</ul>
								<p class="col999" id="wei2dt_label" >[玩法介绍]：围二投注的两个号码与当期开出的前两个中奖号相符（顺序不限）即中奖130元，与前一位相符即中奖5元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/w2Trend.php" target="_blank">围选二走势</a>
                                <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年11月17日直至8000万派完即止，围二中二单注加奖40元，加奖后单注奖金170元。<a href="http://www.cailele.com/subject/qyh_award/" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
                                </p>
								<p class="col999" id="wei3dt_label" style="display:none; ">[玩法介绍]：围三投注的三个号码与当期开出的前三个中奖号相符（顺序不限）即中奖1000元，与前二位相符（顺序不限）即中奖18元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/w3Trend.php" target="_blank">围选三走势</a></p>
								<p class="col999" id="wei4dt_label" style="display:none; ">[玩法介绍]：围四投注的四个号码与当期开出的前四个中奖号相符（顺序不限）即中奖5000元，与前三位（顺序不限）即中奖38元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/w4Trend.php" target="_blank">围选四走势</a></p>
								<p class="col999" id="wei5dt_label" style="display:none; ">[玩法介绍]：围五投注的五个号码与当期开出的前五个中奖号相符（顺序不限）即中奖10000元，与前三位（顺序不限）即中奖28元，与前四位（顺序不限）即中奖300元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://tool.cailele.com/zs/29_209.htm" target="_blank">围选五走势</a></p>
                                 <!--<div class="prompt">
                                     <p class="a"><em class="award_tips">[加奖提示]</em>2015年2月1日起，单个方案中奖100元(含)以上，即可享受10%的加奖奖金，单个方案最高加奖2000元。<a href="http://www.cailele.com/static/info/201501/show_10325107.shtml" target="_blank" class="detail">详细介绍</a></p>
                                  </div>-->
							</div>
						</div>
						<!-- 围二胆拖开始 -->
						<div id="wei2dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="wei2dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei2dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="wei2dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei2dt1_miss_2">
											<div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="wei2dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei2dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="wei2dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei2dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 围二胆拖  -->
						
						<!-- 围三胆拖开始 -->
						<div id="wei3dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="wei3dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei3dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="wei3dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="wei3dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="wei3dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei3dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="wei3dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei3dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 围三胆拖  -->
						
						<!-- 围四胆拖开始 -->
						<div id="wei4dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="wei4dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei4dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="wei4dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei4dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="wei4dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei4dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="wei4dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei4dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 围四胆拖  -->
						
						<!-- 围五胆拖开始 -->
						<div id="wei5dt_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 胆 码 </div>
										<div id="wei5dt1_1">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei5dt1_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="wei5dt1_2">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei5dt1_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li1"> 拖 码 </div>
										<div id="wei5dt2_1">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="wei5dt2_miss_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">   </div>
										<div id="wei5dt2_2">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'2_');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'2_');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'2_');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'2_');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'2_');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','2_');">清</div>
									</div>
									<div class="ul">
										<div class="li00"> </div>
										<div class="numyl" id="wei5dt2_miss_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!--end 围四胆拖  -->
							
					</div>
					<!--玩法:围选胆拖结束 -->

					<!--玩法:顺选开始 -->
					<div id="shun_Div"  style="display:none">
						<div class="item">
							<div class="title"><h3>第一步</h3>选投注方式</div> 
							<div class="main">
								<ul>
									<li class="radio">
										<label for="shun1Rad"><input id="shun1Rad" name="shun_ra" type="radio" class="radio" onclick="setPlayType('shun1');" checked /><font>顺一</font></label>
										<label for="shun2Rad"><input id="shun2Rad" name="shun_ra" type="radio" class="radio" onclick="setPlayType('shun2');" /><font>顺二</font></label>
										<label for="shun3Rad"><input id="shun3Rad" name="shun_ra" type="radio" class="radio" onclick="setPlayType('shun3');" /><font>顺三</font></label>
									</li>
								</ul>
								<p class="col999" id="shun1_label" style="">[玩法介绍]：顺一投注的一位号码与当期开出的第一个中奖号码相同即中奖23元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/s1Trend.php" target="_blank">顺一走势</a>
                                <!--<em style="display:block;background:#fffde8;font-style:normal;border:#fae1b4 1px solid;margin-top:5px;padding:5px;color:#F00;">[加奖提示]2014年12月2日-2014年12月31日，单注加3元，加奖后每注奖金26元。<a href="http://www.cailele.com/static/info/201412/show_10311933.shtml" class="li0" target="_blank" style="color:#000; text-decoration:none;">详细介绍</a></em>-->
                                </p>
                                
						<p class="col999" id="shun2_label" style="display:none; ">[玩法介绍]：顺二投注的两位号码与当期开出的前两个中奖号码及其顺序相同即中奖350元，与第一位相符即中奖5元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/s2Trend.php" target="_blank">顺二走势</a></p>
								<p class="col999" id="shun3_label" style="display:none; ">[玩法介绍]：顺三投注的三位号码与当期开出的前三个中奖号码及其顺序相同即中奖7700元，与前两位及其顺序相同即中奖12元。<a href="/rule/rule22.shtml" class="li0" target="_blank">详细介绍</a><br />[查看走势图]：<a href="http://zs.cailele.com/qyh/s3Trend.php" target="_blank">顺三走势</a></p>
                                <!-- <div class="prompt">
                                     <p class="a"><em class="award_tips">[加奖提示]</em>2015年2月1日起，单个方案中奖100元(含)以上，即可享受10%的加奖奖金，单个方案最高加奖2000元。<a href="http://www.cailele.com/static/info/201501/show_10325107.shtml" target="_blank" class="detail">详细介绍</a></p>
                                  </div>-->
							</div>
						</div>
						<!-- 顺一开始 -->
						<div id="shun1_playTypeDiv">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 号 码 </div>
										<div id="shun11">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="shun1_miss_p1_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="shun12">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="shun1_miss_p1_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!--end 顺一  -->
						<!-- 顺二开始 -->
						<div id="shun2_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 第一位 </div>
										<div id="shun21">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="shun2_miss_p1_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="shun22">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="shun2_miss_p1_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
									<div class="ul">
										<div class="li1"> 第二位 </div>
										<div id="shun23">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="shun2_miss_p2_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="shun24">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00"></div>
										<div class="numyl" id="shun2_miss_p2_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!--end 顺二  -->
						
						<!-- 顺三开始 -->
						<div id="shun3_playTypeDiv" style="display:none">
							<div class="item">
								<div class="title"><h3>第二步</h3>选择号码</div>
								<div class="main">
									<div class="ul">
										<div class="li1"> 第一位 </div>
										<div id="shun31">
											<div class="li2" onclick="selectNum(this,1,'01')">01</div>
											<div class="li2" onclick="selectNum(this,1,'02')">02</div>
											<div class="li2" onclick="selectNum(this,1,'03')">03</div>
											<div class="li2" onclick="selectNum(this,1,'04')">04</div>
											<div class="li2" onclick="selectNum(this,1,'05')">05</div>
											<div class="li2" onclick="selectNum(this,1,'06')">06</div>
											<div class="li2" onclick="selectNum(this,1,'07')">07</div>
											<div class="li2" onclick="selectNum(this,1,'08')">08</div>
											<div class="li2" onclick="selectNum(this,1,'09')">09</div>
											<div class="li2" onclick="selectNum(this,1,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="shun3_miss_p1_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="shun32">
											<div class="li2" onclick="selectNum(this,1,'11')">11</div>
											<div class="li2" onclick="selectNum(this,1,'12')">12</div>
											<div class="li2" onclick="selectNum(this,1,'13')">13</div>
											<div class="li2" onclick="selectNum(this,1,'14')">14</div>
											<div class="li2" onclick="selectNum(this,1,'15')">15</div>
											<div class="li2" onclick="selectNum(this,1,'16')">16</div>
											<div class="li2" onclick="selectNum(this,1,'17')">17</div>
											<div class="li2" onclick="selectNum(this,1,'18')">18</div>
											<div class="li2" onclick="selectNum(this,1,'19')">19</div>
											<div class="li2" onclick="selectNum(this,1,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('1','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('1','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('1','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('1','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('1','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('1','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="shun3_miss_p1_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
									<div class="ul">
										<div class="li1"> 第二位 </div>
										<div id="shun33">
											<div class="li2" onclick="selectNum(this,2,'01')">01</div>
											<div class="li2" onclick="selectNum(this,2,'02')">02</div>
											<div class="li2" onclick="selectNum(this,2,'03')">03</div>
											<div class="li2" onclick="selectNum(this,2,'04')">04</div>
											<div class="li2" onclick="selectNum(this,2,'05')">05</div>
											<div class="li2" onclick="selectNum(this,2,'06')">06</div>
											<div class="li2" onclick="selectNum(this,2,'07')">07</div>
											<div class="li2" onclick="selectNum(this,2,'08')">08</div>
											<div class="li2" onclick="selectNum(this,2,'09')">09</div>
											<div class="li2" onclick="selectNum(this,2,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="shun3_miss_p2_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="shun34">
											<div class="li2" onclick="selectNum(this,2,'11')">11</div>
											<div class="li2" onclick="selectNum(this,2,'12')">12</div>
											<div class="li2" onclick="selectNum(this,2,'13')">13</div>
											<div class="li2" onclick="selectNum(this,2,'14')">14</div>
											<div class="li2" onclick="selectNum(this,2,'15')">15</div>
											<div class="li2" onclick="selectNum(this,2,'16')">16</div>
											<div class="li2" onclick="selectNum(this,2,'17')">17</div>
											<div class="li2" onclick="selectNum(this,2,'18')">18</div>
											<div class="li2" onclick="selectNum(this,2,'19')">19</div>
											<div class="li2" onclick="selectNum(this,2,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('2','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('2','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('2','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('2','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('2','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('2','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="shun3_miss_p2_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									
									<div class="ul">
										<div class="li1"> 第三位 </div>
										<div id="shun35">
											<div class="li2" onclick="selectNum(this,3,'01')">01</div>
											<div class="li2" onclick="selectNum(this,3,'02')">02</div>
											<div class="li2" onclick="selectNum(this,3,'03')">03</div>
											<div class="li2" onclick="selectNum(this,3,'04')">04</div>
											<div class="li2" onclick="selectNum(this,3,'05')">05</div>
											<div class="li2" onclick="selectNum(this,3,'06')">06</div>
											<div class="li2" onclick="selectNum(this,3,'07')">07</div>
											<div class="li2" onclick="selectNum(this,3,'08')">08</div>
											<div class="li2" onclick="selectNum(this,3,'09')">09</div>
											<div class="li2" onclick="selectNum(this,3,'10')">10</div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">遗 漏</div>
										<div class="numyl" id="shun3_miss_p3_1">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div id="shun36">
											<div class="li2" onclick="selectNum(this,3,'11')">11</div>
											<div class="li2" onclick="selectNum(this,3,'12')">12</div>
											<div class="li2" onclick="selectNum(this,3,'13')">13</div>
											<div class="li2" onclick="selectNum(this,3,'14')">14</div>
											<div class="li2" onclick="selectNum(this,3,'15')">15</div>
											<div class="li2" onclick="selectNum(this,3,'16')">16</div>
											<div class="li2" onclick="selectNum(this,3,'17')">17</div>
											<div class="li2" onclick="selectNum(this,3,'18')">18</div>
											<div class="li2" onclick="selectNum(this,3,'19')">19</div>
											<div class="li2" onclick="selectNum(this,3,'20')">20</div>
										</div>
										<div class="li3" onclick="selectRow3('3','all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'),'');">全</div>
										<div class="li3" onclick="selectRow3('3','big',10,new Array('11','12','13','14','15','16','17','18','19','20'),'');">大</div>
										<div class="li3" onclick="selectRow3('3','small',9,new Array('01','02','03','04','05','06','07','08','09','10'),'');">小</div>
										<div class="li3" onclick="selectRow3('3','odd',1,new Array('01','03','05','07','09','11','13','15','17','19'),'');">奇</div>
										<div class="li3" onclick="selectRow3('3','even',1,new Array('02','04','06','08','10','12','14','16','18','20'),'');">偶</div>
										<div class="li3" onclick="selectRow3('3','clear','','','');">清</div>
									</div>
									<div class="ul">
										<div class="li00">  </div>
										<div class="numyl" id="shun3_miss_p3_2">
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										  <div class="yl1"></div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!--end 顺三  -->
						
					</div>
					<!--玩法:顺选结束 -->
					<!--计算器begin-->
                    <div class="indi_box">
                    	<div class="indicator">共选择了<em id="cbCount" class="red">0</em>注，金额<em id="cbAmount" class="red">0</em>元<a href="javascript:;" class="abacus_clear" onclick="disSelect();">清空选择号码</a></div>
                    	<div class="add_abacus">
                        	<a href="javascript:;" class="abacus_config on" onclick="selectOk();"></a>
							<a href="/lottery/focusMiss/other.php" class="miss_attention" target="_blank">值得关注的遗漏</a>
                    	</div>
                    </div>
                    <!--计算器end-->
                    <!--添加方案开始 -->
                    <div class="item">
                      <div class="title"><h3>第三步</h3>添加方案</div>
                      <div class="main">
                        <!--<ul class="ul">
                          <li class="addToListBtn"><a href="javascript:void(0);" title="确认选号并加入投注列表" onclick="selectOk();"></a></li>
                          <li class="clearNumberAreaBtn"><a href="javaScript:void(0);" title="清空选号区" onclick="disSelect();"></a></li>
                          <li style="float: left; padding: 8px 0px 0px 15px; height: 28px;">投注计算器：您选择了&nbsp;<span id="cbCount">0</span>&nbsp;注，金额&nbsp;<span id="cbAmount">0</span>&nbsp;元</li>
                        </ul>-->
                        <ul class="ul">
                          <li class="floatleft" style="height:152px;">
                            <div id="tradeList" style="width: 430px; height: 152px;"></div>
                          </li>
                          <li class="btnli"><a href="javascript:void(0);" class="widthOrangeBtn" onclick="JSNEW(1);" title="机选一注">机选一注</a></li>
                          <li class="btnli"><a href="javascript:void(0);" class="widthOrangeBtn" onclick="JSNEW(5);" title="机选五注">机选五注</a></li>
                          <li class="btnli"><a href="javascript:void(0);" class="widthOrangeBtn fornew" onclick="filterBox.showFilterBox('山东群英会-过滤选号', 20)" title="过滤选号"><i></i>过滤选号</a></li>
                          <li class="btnli"><a href="javascript:void(0);" class="widthOrangeBtn" onclick="filterBox.verifyBettingBox();" title="号码验证">号码验证</a></li>
                          <li class="btnli"><a href="javascript:void(0);" class="widthBlueBtn" onclick="clearOption(0,1);" title="清空投注区">清空投注区</a></li>
                        </ul>
                      </div>
                    </div>
                    <!--添加方案结束 -->
                    <!--选购买方式开始 -->
                    <div class="item null">
                      <div class="bntbuy">
                      		<span class="agreement"><input type="checkbox" id="agree" checked="checked" onclick="agreeClick();" /> 我已经年满18岁并同意<a href="/member/agreement.shtml" target="_blank">《彩乐乐网站服务协议》</a></span>
                      		<a href="javascript:void(0);" id="buyBtn" class="btnBuy-orange" onclick="tradeSubmit(1);" style="display:block;"  title="确认购买"></a>
                      		<!-- <a href="javascript:void(0);" onclick="tradeSubmit(1);" class="btnBuy-orange" title="确认购买"></a> -->
                      </div>
          	            <div class="title"><h3>第四步</h3>选购买方式</div>
          	            <div class="main">方案注数:
          		            您选择了&nbsp;<span id="inLineCount">0</span>&nbsp;注，倍数：<input name="multipleDG" id="multipleDG" value="1" type="text" class="inp2" onkeyup="onBuyMutipleChange(this,false);" onblur="onBuyMutipleChange(this,true);" onbeforepaste="BeforePaste()"/>&nbsp;倍，共&nbsp;￥&nbsp;<span id="inLineAmount">0</span>&nbsp;元</div>
        	            <div class="main">
        		            <span class="radio">购买方式:
	                        <label for="buyTypeDg"><input name="buyType" id="buyTypeDg" type="radio" class="radio" onclick="changeDg();" checked="checked" /><font>代购</font></label>
	                        <label for="buyTypeZh"><input name="buyType" id="buyTypeZh" type="radio" class="radio" onclick="changeZh();" /><font>追号</font></label>
	                        <label for="buyTypeZz"><input name="buyType" id="buyTypeZz" type="radio" class="radio" onclick="changeZz();" /><font>智能追号</font></label></span>
          	            </div>
          	            <div class="main">
          		            <span class="radio  hidden" id="isHidden">方案公开:
	                        <style type="text/css">
	.hidden{display:none !important;}
</style>
<label for="notPublic"><input name="selectPublicStatus" id="notPublic" type="radio" value="1" checked="true" />不公开</label>
<label for="publicPlan"><input name="selectPublicStatus" id="publicPlan" type="radio" value="2"  />公开</label>
<label for="followPublic" class="hidden"><input name="selectPublicStatus" id="followPublic" type="radio" value="4" />跟单公开</label>
<label for="awardPublic"><input name="selectPublicStatus" id="awardPublic" type="radio" value="3" />截止公开</label>
</span><br/>
	                        <a href="/help/faq07.shtml" class="red" target="_blank">什么叫代购、合买、追号？</a>
                        </div>
                    </div>
                    <!--选购买方式结束 -->
                    <!--普通追号开始-->
	               	<div class="pursuers" id="chaseSelect" style="display: none;">
	<!--截止时间begin-->
	<div class="dailybeta">
    	<div class="periods">当前<b id="pzCurrentTerm"></b>期</div>
        <div class="dailybeta_time" id="pzTime"></div>
    </div>
    <!--截止时间end-->
    <!--倍投begin-->
    <div class="cast_times">
    	<div class="put_up">
        	<div class="headline">追号期数：</div>
            <div class="choose"> 
            	<div class="terms">
                	我要追
                    <span class="cllinput"><input type="text" id="chaseCount" value="10" onkeyup="changeChaseCount(this.value);" maxlength="3" class="default"></span>
                    期，
                    快速选择：
                    <span class="cllradio cllradio_sys"><a id="5_radio" href="javascript:changeChaseCount('5');" class="default"><i></i><em>5期</em></a></span>
                    <span class="cllradio cllradio_sys"><a id="10_radio" href="javascript:changeChaseCount('10');" class="select"><i></i><em>10期</em></a></span>
                    <span class="cllradio cllradio_sys"><a id="20_radio" href="javascript:changeChaseCount('20');" class="default"><i></i><em>20期</em></a></span>
                </div>
            </div>
        </div>
        
        <div class="put_up">
        	<div class="headline">停追设置：</div>
            <div class="choose">
            	<div class="terms">
                	<input id="chaseStopCondition" type="checkbox" checked value="0"  onclick="onlyChoose(this)" />
                    中奖累计
                    <span class="cllinput"><input type="text" id="totalPrize" onkeyup="totalPrizeChange(this.value);" class="default"></span>
                    元后停止追号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="bingoStopCondition" type="checkbox" value="0"  onclick="onlyChoose(this)" />
                    中奖
                   	<select id="bingoPrize"  name="bingoPrize">
					  <option value="1" selected>1</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
					  <option value="4">4</option>
					  <option value="5">5</option>
					</select>
                    次停止追号
                </div>
            </div>
        </div>

        <div class="put_up">
        	<div class="headline">选择期号：</div>
            <div class="choose">
            	<div class="raise">
                    <table cellspacing="0" cellpadding="0" width="642px" class="clldatalist">
						<colgroup>
						    <col width="30px"/>
                            <col width="157px"/>
                            <col width="94px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="auto"/>
						</colgroup>
                        <thead>
                            <tr>
                                <th>序</th>
                                <td><span class="cllinput"><input type="text" onkeyup="javascript:changeChaseCount(this.value);" id="chaseTermCountByList" maxlength="3" class="default" value="10"></span>&nbsp;期</td>
                                <td><span class="cllinput"><input type="text" onkeyup="javascript:changeChaseMultiple(this.value);" id="chaseMultiple" maxlength="3" class="default" value="1"></span>&nbsp;倍</td>
                                <td>本期投入</td>
                                <td>累计投入</td>
                                <td>本期奖金</td>
                                <td>累计盈利</td>
                                <td>累计盈利率%</td>
                            </tr>
                        </thead>
                    </table>
                </div>
                <div class="proposal">
                    <table cellspacing="0" cellpadding="0" id="period_table" width="642px" class="clldatalist">
                        <colgroup>
						    <col width="30px"/>
                            <col width="157px"/>
                            <col width="94px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="auto"/>
						</colgroup>
                        <tbody id="chaseTermSubShow">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--倍投end-->
    <!--总数begin-->
    <div class="purchase">追号期数：<b id="chaseSumCount"></b>期&nbsp;&nbsp;&nbsp;总金额：<b id="chaseSumAmount"></b>元</div>
    <!--总数end-->
</div>
	               	<!--普通追号结束-->
	                <!--智能追号开始-->
	               	<div class="pursuers" id="inteChaseSelect" style="display: none;">
	<!--截止时间begin-->
	<div class="dailybeta">
    	<div class="periods">当前<b id="zzCurrentTerm"></b>期</div>
        <div class="dailybeta_time" id="zzTime"></div>
    </div>
    <!--截止时间end-->
    <!--倍投begin-->
    <div class="cast_times">
    	<div class="put_up">
        	<div class="headline">启动条件：</div>
            <div class="choose">
            	<div class="terms">
                	我要追
                    <span class="cllinput"><input type="text" id="zzCountSelect" value="30" maxlength="4"  onkeyup="onZzTermCountChange(this);" onblur="onZzTermCountChange(this,true);" class="default"></span>
                    期，
                    从
                    <select id="zzbingoPrize"  name="zzbingoPrize">
					</select>
                    开始，初始
                    <span class="cllinput"><input id="zzInitBet" value="1"  type="text" maxlength="4"  onkeyup="onZzInitBetChange(this);" onblur="onZzInitBetChange(this,true);" class="default"></span>
                    倍，追号总金额<b id="iChaseSumAmount"></b>元
                </div>
            </div>
        </div>
        <div class="put_up">
        	<div class="headline">盈利设置：</div>
            <div class="choose">
            	<div id="syDiv1"  class="catch grayrow">
                	<input id="syType1" type="radio" name="syType" class="radios" value="1" onclick="changeType()" checked></input>
                    全程最低盈利
                    <span class="cllinput"><input type="text" class="default" id="minWinFund" onkeyup="onHuiBaoChange(this);" onblur="onHuiBaoChange(this,true);"></span>
                	元，最低盈利率
                    <span class="cllinput"><input type="text" class="default" id="minRate" onkeyup="onHuiBaoChange(this);" onblur="onHuiBaoChange(this,true);"></span>
                    %
                </div>
                <div id="syDiv3" class="terms check">
                	<input id="syType3" type="radio" class="radios" name="syType" value="1" onclick="changeType()"></input>
                    前
                    <span class="cllinput"><input type="text" class="default" id="qi" name="datainput"  Disabled="Disabled"  value="" size="3" maxlength="4" onkeyup="onHuiBaoChange(this);" onblur="onHuiBaoChange(this,true);"></span>
                	期盈利率
                    <span class="cllinput"><input type="text" class="default" id="qgain" name="datainput" Disabled="Disabled" value="" size="6" maxlength="6" onkeyup="onHuiBaoChange(this);" onblur="onHuiBaoChange(this,true);"></span>
                    %，之后盈利率
                    <span class="cllinput"><input type="text" class="default" id="hgain" name="datainput" Disabled="Disabled" value="" size="8" maxlength="8" onkeyup="onHuiBaoChange(this);" onblur="onHuiBaoChange(this,true);"></span>
                    %
                </div>
            </div>
        </div>
        <div class="put_up">
        	<div class="headline">停追设置：</div>
            <div class="choose">
            	<div class="terms">
                	<input id="ichaseStopCondition" type="checkbox" checked value="0" onclick="onlyZzChoose(this)" />
                    中奖累计
                    <span class="cllinput"><input type="text" class="default" id="itotalPrize" value="1" class="inp2" maxlength="10" size="10" onkeyup="onTotalPrizeChange(this);" onblur="onTotalPrizeChange(this,true);" ></span>
                    元后停止追号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="ibingoStopCondition" type="checkbox" value="0"  onclick="onlyZzChoose(this)" />
                    中奖
                    <select id="ibingoPrize"  name="ibingoPrize">
			  			<option value="1" selected>1</option>
			  			<option value="2">2</option>
			  			<option value="3">3</option>
			  			<option value="4">4</option>
			  			<option value="5">5</option>
					</select>
                    次停止追号
                </div>
                <!-- <div class="catch">
                	<span class="cllcheckbox"><a href="javascript:;" class="default"><i></i></a></span>
                	隔断追号，第
                    <span class="cllinput"><input type="text" class="default"></span>
                    期至
                    <span class="cllinput"><input type="text" class="default"></span>
                    期不追，
                    <span class="cllcheckbox"><a href="javascript:;" class="select"><i></i></a></span>
                    停追期间开出停止追号
                </div> -->
            </div>
        </div>
        <div class="put_up">
        	<div class="generation">
            	<span class="cllbtn"><a  class="default" id="zzBtn" href="javascript:void(0);" onclick="zzPlan();" ><i></i><em id="zzButon">生成追号方案</em></a></span>
                <span class="cllbtn"><a href="javascript:void(0);" onclick="clearSelect();" class="disable"><i></i><em>清空设置</em></a></span>
            </div>
        </div>
        <div class="put_up">
        	<div class="headline">选择期号：</div>
            <div class="choose">
            	<div class="raise">
                  <table cellspacing="0" cellpadding="0" width="642px" class="clldatalist">
                    <colgroup>
                        <col width="30px"/>
                        <col width="157px"/>
                        <col width="94px"/>
                        <col width="68px"/>
                        <col width="68px"/>
                        <col width="68px"/>
                        <col width="68px"/>
                        <col width="87px"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th>序</th>
                            <td>期次</td>
                            <td>倍数</td>
                            <td>本期投入</td>
                            <td>累计投入</td>
                            <td>本期奖金</td>
                            <td>累计盈利</td>
                            <td>累计盈利率%</td>
                        </tr>
                    </thead>
                </table>
                </div>
                <div class="proposal">
                     <table cellspacing="0" cellpadding="0"  width="642px" id="zzperiod_table"   class="clldatalist">
                        <colgroup>
                            <col width="30px"/>
                            <col width="157px"/>
                            <col width="94px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="68px"/>
                            <col width="87px"/>
                        </colgroup>
                        <tbody id="zzchaseTermSubShow">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--倍投end-->
    <!--总数begin-->
    <div class="purchase">追号期数：<b id="iChaseSumCount"></b>期&nbsp;&nbsp;&nbsp;总金额：<b id="zzChaseSumAmount"></b>元</div>
    <!--总数end-->
</div>
	               	<!--智能追号结束-->
	                                  
                  </div>
                  <!--投注记录begin-->
				<script type="text/javascript">
	/*投注历史记录*/
	initRecords = function(pageIndex){
		pageIndex=pageIndex||1;
		var planType = $("#record").attr("plantype");
		$('#RecordDataDiv').html("<div align='center'><img src='http://img.cailele.com/img_new/loading.gif' align='middle'/></div>");
		$.get(ctx_jsonp+'/trade/tradePlanListNew.php?lotteryType='+ trade.lotteryType +'&show=new&planType=' + planType + '&page='+pageIndex+"&v="+(new Date().getTime()), 
		function(data) {
			$("#RecordDataDiv").html(data);
			$("#pagingData").html($("#pagingView").html());
			switchRecordData(planType);
		});
	}
	
	var fn = function(){initRecords(1);}
	
	$(document).ready(function(){
	 	fn();
	});
	
	//登录成功之后执行方法
	loginSucceedFunction = fn;
	//退出成功之后执行方法
	exitSucceedFunction = fn;
	
	switchRecordData = function(planType){
		if(planType == 1){    //代购
			$("#categoryUl").find("li:not('li[id='dg']')").removeClass('current');
			$("#categoryUl").find("li[id='dg']").attr("class","current");
		}else if(planType == 2){   //合买
			$("#categoryUl").find("li:not('li[id='hm']')").removeClass('current');
			$("#categoryUl").find("li[id='hm']").attr("class","current");
		}else if(planType == 4){  //追号记录
			$("#categoryUl").find("li:not('li[id='zhjl']')").removeClass('current');
			$("#categoryUl").find("li[id='zhjl']").attr("class","current");
		}else if(planType == 10){  //追号计划
			$("#categoryUl").find("li:not('li[id='zhjh']')").removeClass('current');
			$("#categoryUl").find("li[id='zhjh']").attr("class","current");
		}
	}
	
	function chaseCannel(chaseNo){
		cll_confirm('撤消追号后将无法恢复，是否确认？',function (){
			$.get('/uc/chaseList.php?action=cancel&chaseNo=' + chaseNo + "&v="+(new Date().getTime()), function(data) {
				initRecords(1);
			});
		});
	}
	
	function switchRecord(plantype){
		$("#record").attr("plantype",plantype);
		initRecords(1);
	}	
</script>
<div id="record" plantype ="1">
     <div class="lot_record">
         <div class="hd">
             <div class="hd_in">
              <div class="category">
                  <ul id="categoryUl" class="category_list">
                 	  <li id="dg" class="current" onclick="switchRecord(1);"><a href="javascript:;">代购记录</a></li>
                      <li id="zhjl" onclick="switchRecord(4);"><a href="javascript:;">追号记录</a></li>
                      <li id="zhjh" onclick="switchRecord(10);"><a href="javascript:;">追号计划</a></li>
                   </ul>
               </div>              
              <div id="pagingData" class="paginator">
              </div>
        	</div>
       </div>
       <div class="bd">
			<div id="RecordDataDiv" class="bd_in"></div>
       </div>
   </div>
</div>

	                <!--投注记录end-->
                </div>
            <div class="right">
          		 <!--<div class="lot_sider_ad mar">
                	<a href="http://www.cailele.com/static/info/201501/show_10325107.shtml" target="_blank"><img src="http://img.cailele.com/img_new/banner/201502/2015-2-1qyh_260x100.jpg" /></a>
          		 </div>-->
		           <!--限号begin-->
		            <div class="module mod_sider sider_limit" style="display:none;">
		                <div class="hd">
		                    <div class="hd_in"><h5 class="tit">新群英会限号公告</h5></div>
		                </div>
		                <div class="bd">
		                    <div class="bd_in">
		                        <table class="limit_tb">
		                            <colgroup>
		                                <col style="width:40%;">
		                                <col style="">
		                            </colgroup>
		                            <thead>
		                                <tr>
		                                    <td>玩法</td>
		                                    <td>限号</td>
		                                </tr>
		                            </thead>
		                            <tbody id="limitData">
		                            </tbody>
		                        </table>
		                    </div>
		                </div>
		            </div>
		            <!--限号end-->                    
	              <div class="rightPanel">
                    <div class="title"><a href="http://zs.cailele.com/qyh/chuhaoTrend.php" target="_blank" class="float">更多开奖</a>福彩群英会开奖公告</div>
                    <table border="0" cellspacing="0" cellpadding="0" class="panelBorder">
                      <tr>
                        <td class="td-title">期数</td>
                        <td class="td-title">时间</td>
                        <td class="td-title">奖号</td>
                      </tr>
                      <tbody id="openPanel">
						<tr><td>0307037</td><td>15:10</td><td>09,01,18,15,02</td></tr><tr><td>0307036</td><td>15:00</td><td>11,17,15,09,08</td></tr><tr><td>0307035</td><td>14:50</td><td>06,11,13,15,09</td></tr><tr><td>0307034</td><td>14:40</td><td>06,09,19,04,14</td></tr><tr><td>0307033</td><td>14:30</td><td>14,03,05,17,08</td></tr><tr><td>0307032</td><td>14:20</td><td>05,08,12,10,15</td></tr><tr><td>0307031</td><td>14:10</td><td>06,10,08,13,19</td></tr><tr><td>0307030</td><td>14:00</td><td>12,11,03,02,19</td></tr><tr><td>0307029</td><td>13:50</td><td>13,17,12,04,07</td></tr><tr><td>0307028</td><td>13:40</td><td>14,04,13,15,06</td></tr>
                      </tbody>
                    </table>
                  </div>
                  <div class="rightPanel">
                    <div class="title">新群英会号码冷热分析<span class="notes">(近200期)</span></div>
                    <table class="panelBorder" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td class="td-title">状态</td>
                        <td class="td-title">号码</td>
                        <td class="td-title">遗漏</td>
                        <td class="td-title">次数</td>
                        <td class="td-title">欲出几率</td>
                      </tr>
					  <tbody id="tab_1_1">
							           		 <tr class="hot">
		   			 	<td class="td-title hot" rowspan="5">热号</td>
					    <td style="font-weight:bold;">04</td>
					    <td >3</td>
					    <td >62</td>
					    <td >1.35</td>
               		 </tr>
	          		 <tr class="hot">
					    <td style="font-weight:bold;">06</td>
					    <td >2</td>
					    <td >61</td>
					    <td >0.88</td>
               		 </tr>
	          		 <tr class="hot">
					    <td style="font-weight:bold;">03</td>
					    <td >4</td>
					    <td >61</td>
					    <td >1.75</td>
               		 </tr>
	          		 <tr class="hot">
					    <td style="font-weight:bold;">05</td>
					    <td >4</td>
					    <td >59</td>
					    <td >1.67</td>
               		 </tr>
	          		 <tr class="hot">
					    <td style="font-weight:bold;">18</td>
					    <td >0</td>
					    <td >57</td>
					    <td >0.0</td>
               		 </tr>
                	 <tr class="commond">
		  				<td class="td-title" rowspan="5">常态</td>
					    <td style="font-weight:bold;">14</td>
					    <td >3</td>
					    <td >48</td>
					    <td >0.95</td>
               		 </tr>
               		<tr class="commond">
					    <td style="font-weight:bold;">12</td>
					    <td >5</td>
					    <td >48</td>
					    <td >1.58</td>
               		 </tr>
               		<tr class="commond">
					    <td style="font-weight:bold;">07</td>
					    <td >8</td>
					    <td >48</td>
					    <td >2.52</td>
               		 </tr>
               		<tr class="commond">
					    <td style="font-weight:bold;">02</td>
					    <td >0</td>
					    <td >48</td>
					    <td >0.0</td>
               		 </tr>
               		<tr class="commond">
					    <td style="font-weight:bold;">13</td>
					    <td >2</td>
					    <td >46</td>
					    <td >0.6</td>
               		 </tr>
	   				 <tr class="cool">
		   				<td class="td-title cool" bgcolor="#f8f8f8" rowspan="5">冷号</td>
					    <td style="font-weight:bold;">15</td>
					    <td >0</td>
					    <td >40</td>
					    <td >0.0</td>
               		 </tr>
		       		<tr class="cool">
					    <td style="font-weight:bold;">08</td>
					    <td >1</td>
					    <td >40</td>
					    <td >0.25</td>
               		 </tr>

					  </tbody>
                    </table>
                  </div>
                  <!--中奖排行榜begin-->
                  <div class="rightPanel">
                    <div class="title">
		              <a href="/news/list-10000821-1.html" target="_blank" class="float">中奖新闻</a>山东群英会中奖排行
                      <!--<a href="/subject/prizeRank/rank.shtml" target="_blank" class="float" style="color:red;">上榜有奖</a>山东群英会中奖排行-->
		            </div>
                    <div class="selectDIV">
                      <ul>
                        <li class="current" id="menu_2_1" onmouseover="switchTab(this,'tbody')">今日</li>
                        <li id="menu_2_2" onmouseover="switchTab(this,'tbody')">昨日</li>
                        <li id="menu_2_3" onmouseover="switchTab(this,'tbody')">七天</li>
                        <li id="menu_2_4" onmouseover="switchTab(this,'tbody')">月榜</li>
                      </ul>
                    </div>
                    <table border="0" cellspacing="0" cellpadding="0" class="panelBorder">
                      <thead>
                        <tr>
                          <th>排名</th>
                          <th>用户名</th>
                          <th>中奖总金额</th>
                        </tr>
                      </thead>
                      <tbody id="tab_2_1">
                        <tr></tr>
                      </tbody>
                      <tbody id="tab_2_2" style="display:none">
                        <tr></tr>
                      </tbody>
                      <tbody id="tab_2_3" style="display:none">
                        <tr></tr>
                      </tbody>
                      <tbody id="tab_2_4" style="display:none">
                        <tr></tr>
                      </tbody>
                    </table>
                  </div>
                  <!--中奖排行榜end-->
                  <div class="rightPanel">
                    <div class="title">山东群英会资讯</div>
					<div class="selectDIV">
                      <ul>
                        <li class="current" style="width:128px;" id="menu_3_1" onmouseover="switchTab(this,'ul')">预测推荐</li>
                        <li id="menu_3_2" style="width:128px;" onmouseover="switchTab(this,'ul')">投注技巧</li>
                      </ul>
                    </div>
                    <div class="newListDIV">
                      <ul id="tab_3_1">
			            <li><a href='/static/info/201703/show_10510619.shtml' target='_blank' >山东群英会推荐（03.07）：每日推荐</a><span class='dat'>07日</span></li><li><a href='/static/info/201703/show_10510432.shtml' target='_blank' >山东群英会推荐（03.06）：每日推荐</a><span class='dat'>06日</span></li><li><a href='/static/info/201703/show_10510261.shtml' target='_blank' >山东群英会推荐（03.05）：每日推荐</a><span class='dat'>05日</span></li><li><a href='/static/info/201703/show_10510098.shtml' target='_blank' >山东群英会推荐（03.04）：每日推荐</a><span class='dat'>04日</span></li><li><a href='/static/info/201703/show_10509882.shtml' target='_blank' >山东群英会推荐（03.03）：每日推荐</a><span class='dat'>03日</span></li><li><a href='/static/info/201703/show_10509707.shtml' target='_blank' >山东群英会推荐（03.02）：每日推荐</a><span class='dat'>02日</span></li><li><a href='/static/info/201703/show_10509529.shtml' target='_blank' >山东群英会推荐（03.01）：每日推荐</a><span class='dat'>01日</span></li><li><a href='/static/info/201702/show_10509331.shtml' target='_blank' >山东群英会推荐（02.28）：每日推荐</a><span class='dat'>28日</span></li><li><a href='/static/info/201702/show_10509120.shtml' target='_blank' >山东群英会推荐（02.27）：每日推荐</a><span class='dat'>27日</span></li><li><a href='/static/info/201702/show_10508961.shtml' target='_blank' >山东群英会推荐（02.26）：每日推荐</a><span class='dat'>26日</span></li><li><a href='/static/info/201702/show_10508813.shtml' target='_blank' >山东群英会推荐（02.25）：每日推荐</a><span class='dat'>25日</span></li><li><a href='/static/info/201702/show_10508618.shtml' target='_blank' >山东群英会推荐（02.24）：每日推荐</a><span class='dat'>24日</span></li>
						<li style="background:none;text-align:right;"><a target="_blank" href="http://www.cailele.com/news/list-37-1.html">更多>></a></li>
                      </ul>
					  <ul id="tab_3_2" style="display:none">
			            <li><a href='/static/news/show_10033587.shtml' target='_blank' >群英会投注小技巧</a><span class='dat'>23日</span></li><li><a href='/static/news/show_10033203.shtml' target='_blank' >群英会三大极品技巧推荐</a><span class='dat'>19日</span></li><li><a href='/static/news/show_10032201.shtml' target='_blank' >群英会秘诀之投注变换法 </a><span class='dat'>08日</span></li><li><a href='/static/news/show_10031906.shtml' target='_blank' >实用技巧：黄金分割点投注法 </a><span class='dat'>05日</span></li><li><a href='/static/news/show_10029389.shtml' target='_blank' >群英会技巧盘点：012路辅助法</a><span class='dat'>08日</span></li><li><a href='/static/news/show_10027900.shtml' target='_blank' >山东群英会投注技巧 让你中奖连连</a><span class='dat'>25日</span></li><li><a href='/static/news/show_10027181.shtml' target='_blank' >群英会技巧：顺二投注有妙法</a><span class='dat'>20日</span></li><li><a href='/static/news/show_10026917.shtml' target='_blank' >山东群英会任2选号技巧</a><span class='dat'>18日</span></li><li><a href='/static/news/show_10026102.shtml' target='_blank' >山东群英会技巧：四大经济投注法</a><span class='dat'>12日</span></li><li><a href='/static/news/show_10017625.shtml' target='_blank' >群英会同尾号选号投注法</a><span class='dat'>09日</span></li><li><a href='/static/news/show_10017460.shtml' target='_blank' >两种技巧教您玩转“群英会”</a><span class='dat'>08日</span></li><li><a href='/static/news/show_10017426.shtml' target='_blank' >山东群英会技巧：容易犯的致命错误</a><span class='dat'>07日</span></li>
						<li style="background:none;text-align:right;"><a target="_blank" href="http://www.cailele.com/news/list-10000447-1.html">更多>></a></li>
                      </ul>
                    </div>
                  </div>
            </div>
        </div>
    </div>
</div>
<div class="clear"></div>

<!-- 脚部文件  -->
<!-- 底部begin -->
<!--底部导航begin-->
<div class="footnav">
	<div class="inner">
    	<script type="text/javascript">try{writeBottomNavigation();}catch(e){}</script>
    </div>
</div>
<!--底部导航end-->
<!--相关信息begin-->
<div class="footbase">
	<div class="inner">
        <div class="company_info">
        	<span class="cinfo">
            <a href="http://www.cailele.com" target="_blank">彩乐乐彩票网</a> 广州彩创网络技术有限公司 <a href="http://www.miibeian.gov.cn" target="_blank" rel="nofollow">备案：粤ICP备09126983号</a>  
            <a href="http://www.cailele.com/beian/" target="_blank">经营许可证编号：粤B2-20100475</a> 
            </span>
			<script type="text/javascript">try{writeStatistic();}catch(e){}</script>
        </div>
        <div class="company_slogan">
            理性购彩，量力而行 不向未满18周岁的青少年出售彩票
        </div>
    </div>
</div>
<!--相关信息end-->
<!--网站安全begin-->
<div class="footsecurity">
	<div class="inner">
    		<a href="http://netadreg.gzaic.gov.cn/ntmm/WebSear/WebLogoPub.aspx?logo=440106106022009061400161" target="_blank" title="工商网监" rel="nofollow" class="bottompic bottompic9"></a>
    	    <a href="javascript:;" title="支付宝特约商家" rel="nofollow" class="bottompic bottompic3"></a>
            <a href="http://www.gzjd.gov.cn/" target="_blank" title="网络110报警" rel="nofollow" class="bottompic bottompic4"></a>
            <a href="http://net.china.cn/chinese/" target="_blank" title="不良信息举报" rel="nofollow" class="bottompic bottompic7"></a>
            <a href="http://www.miibeian.gov.cn" target="_blank" title="经营性网站备案" rel="nofollow" class="bottompic bottompic8"></a>
            <a href="javascript:;" title="360安全网站认证" rel="nofollow" class="bottompic bottompic5"></a>
            <a href="https://ss.knet.cn/verifyseal.dll?sn=2011033000100007539&ct=df&pa=419574" target="_blank" title="可信网站" rel="nofollow" class="bottompic bottompic6"></a>
            <a href="http://www.weibo.com/gzcailele" target="_blank" title="新浪微博" rel="nofollow" class="bottompic bottompic10"></a>
            <a href="http://t.qq.com/cailelewang" target="_blank" title="腾讯微博" rel="nofollow" class="bottompic bottompic11"></a>
        	<!--<script type="text/javascript">try{serverDateToFootImg();}catch(e){}</script>-->
    </div>
</div>
<!--网站安全end-->
<!--热点推荐begin-->
<div class="footguide">
	<div class="inner">
            <div class="hotlinks">
                <span id="footguideContent" class="links" style="height:26px;">
                    <a href="http://zs.cailele.com/ssq/chuhaoTrend.php" target="_blank">双色球走势图</a>
                    <a href="http://zs.cailele.com/dlt/chuhaoTrend.php" target="_blank">大乐透走势图</a>
                    <a href="http://www.cailele.com/shahao/ssq/index.shtml" target="_blank">双色球杀号定胆</a>
                    <a href="http://www.cailele.com/shahao/dlt/index.shtml" target="_blank">大乐透杀号</a>
                    <a href="http://www.cailele.com/shahao/3d/index.shtml" target="_blank">3D杀号定胆</a>
                    <a href="http://kjh.cailele.com/kj_ssq.shtml" target="_blank">双色球开奖结果</a>
                    <a href="http://kjh.cailele.com/kj_dlt.shtml" target="_blank">大乐透开奖结果</a>
                    <a href="http://kjh.cailele.com/kj_3d.shtml" target="_blank">3d开奖结果</a>
                    <a href="http://www.cailele.com/news/list-2-1.html" target="_blank">双色球预测</a>
                    <a href="http://www.cailele.com/news/list-3-1.html" target="_blank">大乐透预测</a>
                    <a href="http://www.cailele.com/news/roll.php" target="_blank">彩票资讯</a>
                    <a href="http://kjh.cailele.com/kj_qyh.shtml" target="_blank">群英会开奖</a>
                    <a href="http://kjh.cailele.com/kj_k3.shtml" target="_blank">快3开奖结果</a>
                    <a href="http://kjh.cailele.com/kj_qxc.shtml" target="_blank">七星彩开奖结果</a>
                    <a href="http://www.cailele.com/news/jilinkuai3.shtml" target="_blank">吉林快3</a>
                    <a href="http://www.cailele.com/rule/" target="_blank">彩票玩法</a>
                    <a href="http://www.cailele.com/news/list-10000040-1.html" target="_blank">双色球预测专家</a>
                    <a href="http://www.cailele.com/rule/rule10.shtml" target="_blank">双色球中奖规则</a>
                    <a href="http://www.cailele.com/news/list-10000220-1.html"  target="_blank">大乐透专家预测</a>
                    <a href="http://www.cailele.com/news/list-14-1.html"  target="_blank">七星彩预测</a>
                    <a href="http://kjh.cailele.com/kj_qlc.shtml" target="_blank">七乐彩开奖号码</a>
                    <a href="http://www.cailele.com/shahao/p3/index.shtml" target="_blank">排列3杀号</a>
                    <a href="http://www.cailele.com/shahao/ssq/ssq_lq1m.shtml" target="_blank">貂蝉双色球杀号</a>
                    <a href="http://www.cailele.com/news/list-5-1.html" target="_blank">3D预测</a>
                    <a href="http://kjh.cailele.com/kj_p3_sjh.shtml" target="_blank">p3试机号</a>
                    <a href="http://kjh.cailele.com/kj_3d_sjh.shtml" target="_blank">福彩3d试机号</a>
                    <a href="http://www.cailele.com/promotion/ssq_5yi.shtml" target="_blank">双色球加奖</a>
                    <a href="http://www.cailele.com/subject/nba2014/index.shtml" target="_blank">竞彩篮球加奖</a>
                    <a href="http://www.cailele.com/subject/qyh_award/" target="_blank">群英会加奖</a>
                    <a href="http://www.cailele.com/subject/hnklsf_award/" target="_blank">快乐十分加奖</a>
                    <a href="http://www.cailele.com/subject/gd11x5_award/" target="_blank">广东11选5加奖</a>
                    <a href="http://www.cailele.com/lottery/k2/" target="_blank">海南快2</a>
                    <a href="http://www.cailele.com/yingchao/" target="_blank">英超</a>
                    <a href="http://www.cailele.com/xijia/" target="_blank">西甲</a>
                    <a href="http://www.cailele.com/yijia/" target="_blank">意甲</a>
                    <a href="http://www.cailele.com/dejia/" target="_blank">德甲</a>
                    <a href="http://www.cailele.com/ouguan/" target="_blank">欧冠</a>
                    <a href="http://www.cailele.com/yaguan/" target="_blank">亚冠</a>
                    <a href="http://www.cailele.com/ouzhoubei/" target="_blank">2016欧洲杯</a>
                    <a href="http://www.cailele.com/nba/" target="_blank">NBA中文网</a>
                    <a href="http://www.cailele.com/saicheng/" target="_blank">足球赛程</a>
                    <a href="http://www.cailele.com/saicheng/yingchao.shtml" target="_blank">英超赛程表</a>
                    <a href="http://www.cailele.com/saicheng/xijia.shtml" target="_blank">西甲赛程表</a>
                    <a href="http://www.cailele.com/saicheng/yijia.shtml" target="_blank">意甲赛程表</a>
                    <a href="http://www.cailele.com/saicheng/dejia.shtml" target="_blank">德甲赛程表</a>
                    <a href="http://www.cailele.com/saicheng/fajia.shtml" target="_blank">法甲赛程表</a>
                    <a href="http://www.cailele.com/saicheng/ajia.shtml" target="_blank">阿甲赛程表</a>
                    <a href="http://www.cailele.com/saicheng/bajia.shtml" target="_blank">巴甲赛程表</a>
                    <a href="http://www.cailele.com/saicheng/Germany.shtml" target="_blank">德国杯赛程表</a>
                    <a href="http://www.cailele.com/saicheng/ruichao.shtml" target="_blank">瑞典超级联赛赛程</a>
                    <a href="http://www.cailele.com/saicheng/yingguan.shtml" target="_blank">英冠赛程表</a>
                    <a href="http://www.cailele.com/saicheng/nuochao.shtml" target="_blank">挪超赛程表</a>
                    <a href="http://www.cailele.com/saicheng/hejia.shtml" target="_blank">荷甲赛程表</a>
                    <a href="http://www.cailele.com/news/list-10000400-1.html" target="_blank">日本足球</a>
                    <a href="http://www.cailele.com/news/list-10000421-1.html" target="_blank">广州恒大</a>
                    <a href="http://www.cailele.com/news/list-10000422-1.html" target="_blank">亚冠决赛</a>
                    <a href="http://www.cailele.com/news/list-10000423-1.html" target="_blank">中超</a>
                    <a href="http://www.cailele.com/jingcaizuqiu/" target="_blank">竞彩网</a>
                    <a href="http://www.cailele.com/lottery/js7ws/" target="_blank">七位数</a>
                    <a href="http://zs.cailele.com/3d/chuhaoTrend.php" target="_blank">3d走势图</a>
                    <a href="http://zs.cailele.com/p3/chuhaoTrend.php" target="_blank">排列3走势图</a>
                    <a href="http://m.cailele.com/" target="_blank">手机买彩票</a>
                    <a href="http://www.cailele.com/site/" target="_blank">彩票导航</a>
                    <a href="http://www.cailele.com/news/hlj11xuan5.shtml" target="_blank">黑龙江11选5</a>
                    <a href="http://www.cailele.com/news/saima.shtml" target="_blank">赛马彩票</a>
                    <a href="http://www.cailele.com/lottery/hnklsf/" target="_blank">湖南快乐十分</a>
                    <a href="http://www.cailele.com/lottery/xysc/" target="_blank">湖南幸运赛车</a>
                    <a href="http://www.cailele.com/lottery/zj11x5/ " target="_blank">浙江11选5</a>
                    <a href="http://www.cailele.com/lottery/xj11x5/" target="_blank">新疆11选5</a>
                    <a href="http://www.cailele.com/lottery/zj12x5/" target="_blank">浙江12选5</a>
                    <a href="http://www.cailele.com/lottery/kl8/" target="_blank">北京快乐8</a>
                    <a href="http://www.cailele.com/lottery/gxk3/" target="_blank">广西快3</a>
                    <a href="http://www.cailele.com/guolv/index.shtml" target="_blank">11选5过滤器</a>
                    <a href="http://www.cailele.com/lottery/fj31x7/" target="_blank">福建31选7</a>
                    <a href="http://www.cailele.com/lottery/fj22x5/" target="_blank">福建22选5</a>
                    <a href="http://www.cailele.com/lottery/fj36x7/" target="_blank">福建36选7</a>
                    <a href="http://www.cailele.com/lottery/jxk3/" target="_blank">江西快3</a>
                </span>
                <span class="more">
                	<a href="javascript:void(0);" id="showHotMoreOpenLink"> 更多</a>
                </span>
            </div>
	</div>
    
    <script type="text/javascript">
	document.getElementById("showHotMoreOpenLink").onclick = function(){
		if(document.getElementById('footguideContent').style.height == "26px"){
			document.getElementById('footguideContent').style.height = "auto";
		}else{
			document.getElementById('footguideContent').style.height = "26px";
		}
	};
	</script>
</div>
<!--热点推荐end-->

<!--百度推广统计代码begin-->
<!-- <div style="display:none">
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fa12bd8605a9677fee2a5de6eed347e5c' type='text/javascript'%3E%3C/script%3E"));
</script>

</div> -->
<!--百度推广统计代码begin-->

<!--悬浮二维码样式begin-->
<style>
/*----------悬浮二维码样式----------*/
.qr_code_float{position:fixed;left:50%;top:160px;width:100px;margin-left:505px;background:#fff;}
* html .qr_code_float{position:absolute;left:expression(eval(document.documentElement.scrollLeft+50%));top:expression(eval(document.documentElement.scrollTop+160))}
.qr_code_float_in{}
.qr_code{position:relative;padding-top:5px;border:#eff0f0 1px solid;text-align:center;}
.qr_code:hover{background:#eff0f0;border:#dddddd 1px solid;}
.qr_code a,
.qr_code a:visited{display:block;color:#aaaaaa;}
.qr_code a:hover{color:#aaaaaa;}
.qr_code .qr_c{}
.qr_code .qr_c .t{display:block;margin:5px 0;}
.qr_close{height:14px;}
.qr_close .close,
.qr_close .close:visited{float:right;width:16px;height:14px;line-height:14px;text-align:center;background:#d7d7d6;color:#fff;font-family:Verdana,Simsun;}
</style>
<div id="qrCodeFloat" class="qr_code_float" style="display:none;">
    <div class="qr_code_float_in">
    	<div class="qr_code">
            <a href="http://www.cailele.com/shouji/index.php" target="_blank" class="qr_c">
                <img src="http://img.cailele.com/img_new/common/qr_code2.jpg" />
                <span class="t">手机购彩点这里</span>
            </a>
        </div>
        <div class="qr_close">
        	<a href="javascript:;" class="close" onclick="document.getElementById('qrCodeFloat').style.display='none';"><span>X</span></a>
        </div>
    </div>
</div>
<!--悬浮二维码样式end-->
<!-- 底部end -->
<script type="text/javascript">
	//bbs显示悬浮二维码
	var curUrl = document.domain;
	if(curUrl == "bbs.cailele.com"){
		document.getElementById('qrCodeFloat').style.display='block';
	}
	
	//onload = function(){
	  	setTimeout(lazy_do,200);
	//}
</script>
<!--新用户注册50送70弹窗begin-->
<script src="<%=request.getContextPath()%>/static/min/js/search.js" type="text/javascript"></script>
<!--新用户注册50送70弹窗end--> 
 
<!--脚部文件结束 -->
<!-- 过滤选号层文件  -->
<!--过滤选号begin-->
<div id="msgDiv" class="lot_filter_box klsf_lot_filter">
    <div class="lot_filter_box_in">
    	<!--过滤选号左侧begin-->
        <div class="lot_filter_main">
        	<div class="lot_filter_main_in">
            	<!--切换菜单begin-->
                <div class="filter_tab_box">
                    <ul class="clearfix lot_tab">
                        <li id="rx3_fmenu"><a href="javascript:;" onclick="filterBox.selectPlayType('rx3');"><span class="tit">任三</span></a></li>
                        <li id="rx4_fmenu"><a href="javascript:;" onclick="filterBox.selectPlayType('rx4');"><span class="tit">任四</span></a></li>
                        <li id="rx5_fmenu"><a href="javascript:;" onclick="filterBox.selectPlayType('rx5');"><span class="tit">任五</span></a></li>
                        <li id="shun2_fmenu"><a href="javascript:;" onclick="filterBox.selectPlayType('shun2');"><span class="tit">顺二</span></a></li>
                        <li id="wei2_fmenu"><a href="javascript:;" onclick="filterBox.selectPlayType('wei2');"><span class="tit">围二</span></a></li>
                        <li id="shun3_fmenu"><a href="javascript:;" onclick="filterBox.selectPlayType('shun3');"><span class="tit">顺三</span></a></li>
                        <li id="wei3_fmenu" style="border-right:none;"><a href="javascript:;" onclick="filterBox.selectPlayType('wei3');"><span class="tit">围三</span></a></li>
                    </ul>
                </div>
                <!--切换菜单end-->
                <!-- 任三 start -->
                <div id="rx3_ftable" class="gltjselect" style="display:none">
                    <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('01','02','03','04','05','06','07','08','09','10'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('06','07','08','09','10'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('01','02','03','04','05'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(0,'odd',1,new Array('01','03','05','07','09'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(0,'even',1,new Array('02','04','06','08','10'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="01" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="02" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="03" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="04" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="05" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="06" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="07" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="08" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="09" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="10" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="01"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="02"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="03"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="04"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="05"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="06"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="07"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="08"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="09"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="10"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(1,'all',0,new Array('11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('11','12','13','14','15'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(1,'odd',1,new Array('11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(1,'even',1,new Array('12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(1,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="11" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="12" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="13" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="14" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="15" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="16" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="17" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="18" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="19" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="20" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="11"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="12"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="13"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="14"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="15"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="16"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="17"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="18"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="19"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="20"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional grouping">
	                    <h6 class="tit">分组过滤</h6>
	                    <div class="con">
	                        <div class="isgroup"><span class="cllradio"><a href="javascript:;" class="select" value="0"><i></i><em>不分组</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>分组过滤</em></a></span></div>
	                        <div class="groupcon" style="display:none;">
	                            <div class="grouptab"><p>我要分<select><option>2</option><option>3</option></select>个组</p></div>
	                            <div class="group_sprite">
	                                <div class="basketbox selecting">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox" style="display:none;">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">热号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">常态个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">冷号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">小数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">偶数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area" style="display:none">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
	                        <div id="rx3_hz" class="opt_box"></div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值区间</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> <span class="remarks">注：和值区间为6-57</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">跨度</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">上期重号</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">连号长度</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>0</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
                </div>
	            <!-- 任三  end-->   
                <!-- 任四 start -->
                <div id="rx4_ftable" class="gltjselect" style="display:none">
                    <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('01','02','03','04','05','06','07','08','09','10'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('06','07','08','09','10'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('01','02','03','04','05'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(0,'odd',1,new Array('01','03','05','07','09'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(0,'even',1,new Array('02','04','06','08','10'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="01" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="02" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="03" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="04" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="05" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="06" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="07" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="08" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="09" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="10" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="01"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="02"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="03"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="04"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="05"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="06"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="07"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="08"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="09"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="10"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(1,'all',0,new Array('11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('11','12','13','14','15'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(1,'odd',1,new Array('11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(1,'even',1,new Array('12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(1,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="11" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="12" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="13" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="14" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="15" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="16" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="17" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="18" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="19" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="20" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="11"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="12"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="13"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="14"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="15"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="16"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="17"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="18"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="19"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="20"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional grouping">
	                    <h6 class="tit">分组过滤</h6>
	                    <div class="con">
	                        <div class="isgroup"><span class="cllradio"><a href="javascript:;" class="select" value="0"><i></i><em>不分组</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>分组过滤</em></a></span></div>
	                        <div class="groupcon" style="display:none;">
	                            <div class="grouptab"><p>我要分<select><option>2</option><option>3</option><option>4</option></select>个组</p></div>
	                            <div class="group_sprite">
	                                <div class="basketbox selecting">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox" style="display:none;">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox" style="display:none;">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">热号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4"/><span>4</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">常态个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4"/><span>4</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">冷号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">小数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">偶数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area" style="display:none">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
	                        <div id="rx4_hz" class="opt_box"></div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值区间</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> <span class="remarks">注：和值区间为10-74</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">跨度</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">上期重号</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">连号长度</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>0</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                        </div>
	                    </div>
	                </div>
                </div>
	            <!-- 任四 end -->   
                <!-- 任五 start -->
                <div id="rx5_ftable"  class="gltjselect" style="display:none;">
                    <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('01','02','03','04','05','06','07','08','09','10'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('06','07','08','09','10'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('01','02','03','04','05'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(0,'odd',1,new Array('01','03','05','07','09'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(0,'even',1,new Array('02','04','06','08','10'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="01" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="02" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="03" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="04" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="05" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="06" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="07" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="08" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="09" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="10" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="01"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="02"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="03"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="04"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="05"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="06"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="07"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="08"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="09"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="10"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(1,'all',0,new Array('11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('11','12','13','14','15'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(1,'odd',1,new Array('11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(1,'even',1,new Array('12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(1,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="11" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="12" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="13" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="14" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="15" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="16" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="17" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="18" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="19" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="20" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="11"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="12"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="13"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="14"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="15"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="16"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="17"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="18"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="19"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="20"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional grouping">
	                    <h6 class="tit">分组过滤</h6>
	                    <div class="con">
	                        <div class="isgroup"><span class="cllradio"><a href="javascript:;" class="select" value="0"><i></i><em>不分组</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>分组过滤</em></a></span></div>
	                        <div class="groupcon" style="display:none;">
	                            <div class="grouptab"><p>我要分<select><option>2</option><option>3</option><option>4</option><option>5</option></select>个组</p></div>
	                            <div class="group_sprite">
	                                <div class="basketbox selecting">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox" style="display:none;">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox" style="display:none;">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox" style="display:none;">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">热号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4"/><span>4</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5"/><span>5</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">常态个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4"/><span>4</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5"/><span>5</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">冷号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">小数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">偶数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area" style="display:none">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
	                        <div id="rx5_hz" class="opt_box"></div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值区间</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> <span class="remarks">注：和值区间为15-90</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">跨度</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">上期重号</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">连号长度</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>0</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                        </div>
	                    </div>
	                </div>
                </div>
	            <!-- 任五 end -->
	            <!-- 顺二 start -->
                <div id="shun2_ftable" class="gltjselect multi_row_ball qszx_row_ball" style="display:none">
                    <div class="regional ball_regional">
						<h6 class="tit">第一位</h6>
						<div class="con">
						    <div class="ballmode"><span class="cllradio"><a href="javascript:;" class="default" value="0"><i></i><em>胆</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>杀</em></a></span></div>
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('11','12','13','14','15','16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('01','02','03','04','05','06','07','08','09','10'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(0,'odd',1,new Array('01','03','05','07','09','11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(0,'even',1,new Array('02','04','06','08','10','12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
		            <div class="regional ball_regional">
						<h6 class="tit">第二位</h6>
						<div class="con">
						    <div class="ballmode"><span class="cllradio"><a href="javascript:;" class="default" value="0"><i></i><em>胆</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>杀</em></a></span></div>
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(1,'all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('11','12','13','14','15','16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('01','02','03','04','05','06','07','08','09','10'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(1,'odd',1,new Array('01','03','05','07','09','11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(1,'even',1,new Array('02','04','06','08','10','12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(1,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">热号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">常态个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">冷号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">小数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">偶数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area" style="display:none">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
	                        <div id="shun2_hz" class="opt_box"></div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值区间</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> <span class="remarks">注：和值区间为3-39</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">跨度</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">上期重号</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">连号长度</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>0</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
							</div>
	                    </div>
	                </div>
                </div>
	            <!--顺二 end -->
	            <!--围二 start -->
                <div id="wei2_ftable" class="gltjselect" style="display:none">
                    <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('01','02','03','04','05','06','07','08','09','10'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('06','07','08','09','10'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('01','02','03','04','05'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(0,'odd',1,new Array('01','03','05','07','09'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(0,'even',1,new Array('02','04','06','08','10'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="01" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="02" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="03" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="04" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="05" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="06" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="07" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="08" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="09" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="10" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="01"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="02"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="03"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="04"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="05"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="06"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="07"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="08"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="09"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="10"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(1,'all',0,new Array('11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('11','12','13','14','15'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(1,'odd',1,new Array('11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(1,'even',1,new Array('12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(1,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="11" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="12" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="13" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="14" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="15" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="16" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="17" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="18" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="19" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="20" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="11"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="12"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="13"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="14"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="15"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="16"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="17"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="18"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="19"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="20"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional grouping">
	                    <h6 class="tit">分组过滤</h6>
	                    <div class="con">
	                        <div class="isgroup"><span class="cllradio"><a href="javascript:;" class="select" value="0"><i></i><em>不分组</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>分组过滤</em></a></span></div>
	                        <div class="groupcon" style="display:none;">
	                            <div class="grouptab"><p>我要分<select><option>2</option></select>个组</p></div>
	                            <div class="group_sprite">
	                                <div class="basketbox selecting">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">热号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">常态个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">冷号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">小数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">偶数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area" style="display:none">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
	                        <div id="wei2_hz" class="opt_box"></div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值区间</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> <span class="remarks">注：和值区间为3-39</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">跨度</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">上期重号</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">连号长度</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>0</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
							</div>
	                    </div>
	                </div>
                </div>
	            <!--围二 end -->
	            <!--顺三 start -->
                <div id="shun3_ftable" class="gltjselect multi_row_ball qszx_row_ball" style="display:none">
                    <div class="regional ball_regional">
						<h6 class="tit">第一位</h6>
						<div class="con">
						    <div class="ballmode"><span class="cllradio"><a href="javascript:;" class="default" value="0"><i></i><em>胆</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>杀</em></a></span></div>
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('11','12','13','14','15','16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('01','02','03','04','05','06','07','08','09','10'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(0,'odd',1,new Array('01','03','05','07','09','11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(0,'even',1,new Array('02','04','06','08','10','12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
                    <div class="regional ball_regional">
						<h6 class="tit">第二位</h6>
						<div class="con">
						    <div class="ballmode"><span class="cllradio"><a href="javascript:;" class="default" value="0"><i></i><em>胆</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>杀</em></a></span></div>
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(1,'all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('11','12','13','14','15','16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('01','02','03','04','05','06','07','08','09','10'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(1,'odd',1,new Array('01','03','05','07','09','11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(1,'even',1,new Array('02','04','06','08','10','12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(1,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
		            <div class="regional ball_regional">
						<h6 class="tit">第三位</h6>
						<div class="con">
						    <div class="ballmode"><span class="cllradio"><a href="javascript:;" class="default" value="0"><i></i><em>胆</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>杀</em></a></span></div>
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(2,'all',0,new Array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(2,'big',5,new Array('11','12','13','14','15','16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(2,'small',4,new Array('01','02','03','04','05','06','07','08','09','10'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(2,'odd',1,new Array('01','03','05','07','09','11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(2,'even',1,new Array('02','04','06','08','10','12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(2,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">热号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">常态个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">冷号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">小数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">偶数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area" style="display:none">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
                            <div id="shun3_hz" class="opt_box"></div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值区间</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> <span class="remarks">注：和值区间为6-57</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">跨度</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">上期重号</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">连号长度</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>0</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
							</div>
	                    </div>
	                </div>
                </div>
	            <!--顺三 end -->
	            <!--围三 start -->
                <div id="wei3_ftable" class="gltjselect" style="display:none">
                    <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'01')" num="01"><i>01</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'02')" num="02"><i>02</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'03')" num="03"><i>03</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'04')" num="04"><i>04</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'05')" num="05"><i>05</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'06')" num="06"><i>06</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'07')" num="07"><i>07</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'08')" num="08"><i>08</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'09')" num="09"><i>09</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'10')" num="10"><i>10</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('01','02','03','04','05','06','07','08','09','10'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('06','07','08','09','10'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('01','02','03','04','05'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(0,'odd',1,new Array('01','03','05','07','09'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(0,'even',1,new Array('02','04','06','08','10'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="01" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="02" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="03" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="04" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="05" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="06" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="07" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="08" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="09" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="10" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="01"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="02"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="03"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="04"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="05"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="06"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="07"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="08"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="09"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="10"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional ball_regional">
						<h6 class="tit">号码</h6>
						<div class="con">
							<ul class="balls">
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'11')" num="11"><i>11</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'12')" num="12"><i>12</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'13')" num="13"><i>13</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'14')" num="14"><i>14</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'15')" num="15"><i>15</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'16')" num="16"><i>16</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'17')" num="17"><i>17</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'18')" num="18"><i>18</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'19')" num="19"><i>19</i></li>
								<li class="li2" name="numCode" onclick="filterBox.selectNum(this,'20')" num="20"><i>20</i></li>
							</ul>
							<ul class="assist">
								<li class="ass" onclick="filterBox.selectRow(1,'all',0,new Array('11','12','13','14','15','16','17','18','19','20'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('16','17','18','19','20'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('11','12','13','14','15'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(1,'odd',1,new Array('11','13','15','17','19'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(1,'even',1,new Array('12','14','16','18','20'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(1,'clear',0,new Array());">清</li>
							</ul>
						</div>
		            </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="11" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="12" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="13" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="14" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="15" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="16" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="17" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="18" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="19" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="20" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="11"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="12"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="13"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="14"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="15"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="16"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="17"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="18"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="19"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="20"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional grouping">
	                    <h6 class="tit">分组过滤</h6>
	                    <div class="con">
	                        <div class="isgroup"><span class="cllradio"><a href="javascript:;" class="select" value="0"><i></i><em>不分组</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>分组过滤</em></a></span></div>
	                        <div class="groupcon" style="display:none;">
	                            <div class="grouptab"><p>我要分<select><option>2</option><option>3</option></select>个组</p></div>
	                            <div class="group_sprite">
	                                <div class="basketbox selecting">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                                <div class="basketbox" style="display:none;">
	                                    <div class="in">
	                                        <div class="checkballs">
	                                            <ul></ul>
	                                        </div>
	                                        <div class="del"><a href="javascript:;">清空</a></div>
	                                        <div class="afew">认为此区出<select><option>0</option></select>个</div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">热号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="hotNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">常态个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                            <label><input name="normalNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">冷号个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0"/><span>0</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1"/><span>1</span></label>
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2"/><span>2</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">小数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="decimals" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">偶数个数</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="evenNumber" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area" style="display:none">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
	                        <div id="wei3_hz" class="opt_box"></div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值区间</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> <span class="remarks">注：和值区间为6-57</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">跨度</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">上期重号</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
								<label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="sqchao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">连号长度</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>0</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="lianHao" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
							</div>
	                    </div>
	                </div>
                </div>
	            <!--围三 end -->
	        </div>
            <div class="lot_filter_btn">
            	<a href="javascript:void(0);" onclick="filterBox.handleFilterCondition();" class="filter_btn lfb_config">开始过滤<i>&gt;&gt;</i></a>
            </div>
        </div>
        <!--过滤选号左侧end-->
        <!--过滤选号右侧begin-->
        <div class="lot_filter_sider">
        	<div class="lot_filter_sider_in">
            	<div class="head">
	            	<h4 class="tit">过滤结果</h4>
	            	<div class="condi">
		            	<select id="seCountTerm1" class="se">
			            	<option value="50">50期</option>
			            	<option value="100">100期</option>
			            	<option value="200">200期</option>
	            			<option value="500">500期</option>	  			            	
			            	<option value="1000">1000期</option>
		            	</select>
		            	<a href="javascript:;" id="verifyNum">验证号码</a>
	            	</div>
            	</div>
                <div class="result">
                	<table cellpadding="0" cellspacing="0" class="result_tb">
                    	<colgroup>
                        	<col width="15%" />
                            <col width="45%" />
                            <col width="20%" />
                            <col width="auto" />
                        </colgroup>
                    	<thead>
                        	<tr>
                                <th>序号</th>
                                <th>号码</th>
                                <th>遗漏</th>
                                <th>删除</th>
                            </tr>
                        </thead>
                    </table>
                    <div class="result_bd">
                	<table cellpadding="0" cellspacing="0" class="result_tb">
                    	<colgroup>
                        	<col width="15%" />
                            <col width="45%" />
                            <col width="20%" />
                            <col width="auto" />
                        </colgroup>
                        <tbody id="filterResult">
                        </tbody>
                    </table>
                    </div>
                </div>
                <div class="count">
                	<p>过滤后共<em id="fcbCount">0</em>注，金额<em id="fcbAmount">0</em>元</p>
                </div>
            </div>
            <div class="lot_filter_btn">
            	<a href="javascript:;" class="filter_btn" onclick="filterBox.addFilterToSelect();">确认选号并添加到投注框</a>
            </div>
        </div>
        <!--过滤选号右侧end-->
    </div>
    <!--弹出对话框begin-->
    <div id="lfAlert" class="lot_filter_alert" style="display:none;">
    	<div class="lot_filter_alert_bg"></div>
    	<!--<iframe src="about:blank" frameborder="0"></iframe>-->
        <div class="lf_alert_box">
            <div class="hd">
                <h4 class="tit">过滤号码验证</h4>
                <select id="seCountTerm2" class="se">
	            	<option value="50">50期</option>
	            	<option value="100">100期</option>
	            	<option value="200">200期</option>
	            	<option value="500">500期</option>	            	
	            	<option value="1000">1000期</option>
                </select>
                <a href="javascript:;" id="lfAlertClose" class="close">X</a>
            </div>
            <div class="bd">
                <div class="bd_in">
                	<table cellpadding="0" cellspacing="0" class="datalist_tb">
                    	<colgroup>
                        	<col width="20%" />
                            <col width="45%" />
                            <col width="15%" />
                            <col width="auto" />
                        </colgroup>
                    	<thead>
                        	<tr>
                                <th>期号</th>
                                <th>历史开奖号码</th>
                                <th>中奖注数</th>
                                <th>遗漏期数</th>
                            </tr>
                        </thead>
                    </table>
                    <div class="datalist_tb_bd">
                    <table cellpadding="0" cellspacing="0" class="datalist_tb">
                        <colgroup>
                        	<col width="20%" />
                            <col width="45%" />
                            <col width="15%" />
                            <col width="auto" />
                        </colgroup>
                        <tbody id="verifyArea">
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
            <div class="ft">
            	<p>当前遗漏：<em id="missCountArea">0</em><s></s>最大遗漏：<em id="missMaxArea">0</em><s></s>平均遗漏：<em id="missAvgArea">0</em></p>
            </div>
        </div>
    </div>
    <!--弹出对话框end-->
</div>
<!--过滤选号end-->

<!--投注栏弹出对话框begin-->
<div id="lfAlert2" class="lot_filter_alert2" style="display:none;">
    <div class="lf_alert_box">
        <div class="hd">
            <h4 class="tit">选择验证期数：</h4>
            <select id="seCountTerm3" class="se">
         	<option value="50">50期</option>
         	<option value="100">100期</option>
         	<option value="200">200期</option>
         	<option value="500">500期</option>	            	
         	<option value="1000">1000期</option>
            </select>
        </div>
        <div class="bd">
            <div class="bd_in">
            	<table cellpadding="0" cellspacing="0" class="datalist_tb">
                	<colgroup>
                    	<col width="20%" />
                        <col width="45%" />
                        <col width="15%" />
                        <col width="auto" />
                    </colgroup>
                	<thead>
                    	<tr>
                            <th>期号</th>
                            <th>历史开奖号码</th>
                            <th>中奖注数</th>
                            <th>遗漏期数</th>
                        </tr>
                    </thead>
                </table>
                <div class="datalist_tb_bd">
                <table cellpadding="0" cellspacing="0" class="datalist_tb">
                    <colgroup>
                    	<col width="20%" />
                        <col width="45%" />
                        <col width="15%" />
                        <col width="auto" />
                    </colgroup>
                    <tbody id="verifyArea2">
                    </tbody>
                </table>
                </div>
            </div>
        </div>
        <div class="ft">
        	<p>当前遗漏：<em id="missCountArea2">0</em><s></s>最大遗漏：<em id="missMaxArea2">0</em><s></s>平均遗漏：<em id="missAvgArea2">0</em></p>
        </div>
    </div>
</div>
<!--弹出对话框end-->

<script type="text/javascript">
	//投注框之过滤选号功能中的号码验证
	$('#verifyNum').click(function(){
		if(filterBox.codes.elements == ''){
			cll_alert("请筛选结果！");
			return false;
		}
		var count = $("#seCountTerm1").val();
		filterBox.findHistoryOpenResult(count);
		$("#seCountTerm2").val(count);
		$('#lfAlert').show();		
	});
	$('#lfAlertClose').click(function(){
		$('#lfAlert').hide();
	});
	
	//投注框之过滤选号功能中的期数切换
	$('#seCountTerm2').change(function(i){
		var count = $(this).val();
		filterBox.findHistoryOpenResult(count);
  	});
  	
	//投注框之号码验证功能中的期数切换
	$('#seCountTerm3').change(function(i){
		var count = $(this).val();
		filterBox.findHistoryOpenResult2(count);
  	});
    
    // 分组过滤单选按钮点击事件
	$('.grouping .isgroup .cllradio a').click(function(){
		$('#' + filterBox.playType + '_ftable .grouping .isgroup .cllradio a').attr('class', 'default');
		$(this).attr('class', 'select');
		
		if ($(this).attr('value') == 1) {
			$('#' + filterBox.playType + '_ftable .groupcon').slideDown('fast');
		} else {
			$('#' + filterBox.playType + '_ftable .groupcon').slideUp('fast');
		}
        
		filterBox.clearInfoOnGroupChange();
	});
    
	// 分组过滤下拉列表切换事件
	$('.grouptab select').change(function(){
		var count = $(this).val();
        
		for (var i = 0; i < count; i++) {
			$('#' + filterBox.playType + '_ftable .basketbox').eq(i).css('display', 'block');
		}
        
        for (var i = count; i < 5; i++) {
        	$('#' + filterBox.playType + '_ftable .basketbox').eq(i).css('display', 'none');
        }
        
        filterBox.clearGroupInfo();
	});
    
	// 分组过滤区点击事件
	$('.basketbox').click(function(){
		$(this).siblings().removeClass('selecting');
		$(this).addClass('selecting');
    });
    
    // 分组过滤清空点击事件
    $('.basketbox .del a').click(function(){
    	filterBox.clearGroupNum($(this));
    });
    
    // 直选胆杀按钮点击事件
    $('.ballmode .cllradio a').click(function(){
        var className = $(this).attr('class');
        $(this).parents('.ballmode').find('.cllradio a').attr('class', 'default');
        $(this).parents('.ballmode').next().find("li[name=numCode]").attr("class","li2");
        
    	if (className == "select") {
		    $(this).attr('class', 'default');
    	} else {
    		$(this).attr('class', 'select');
        }
    });
    
    $(function(){
        // 生成和值HTML
    	filterBox.genHzHtml('rx3', 6, 57);
    	filterBox.genHzHtml('rx4', 10, 74);
    	filterBox.genHzHtml('rx5', 15, 90);
    	filterBox.genHzHtml('shun2', 3, 39);
    	filterBox.genHzHtml('wei2', 3, 39);
    	filterBox.genHzHtml('shun3', 6, 57);
    	filterBox.genHzHtml('wei3', 6, 57);
    });
</script>
<!--过滤选号层文件结束 -->
<!--值得关注的的遗漏弹窗begin-->
<div id="focusMissing" class="focus_missing" style="display:none;">
	<div class="inner">
    	<ul class="tab">
        	<li class="current"><a href="javascript:;">其它</a></li>
        	<!-- 
            <li><a href="javascript:;">快3</a></li>
            <li><a href="javascript:;">快乐十分</a></li> -->
        </ul>
        <div class="miss_data_box" id="focusMissContent">
        </div>
        
    </div>
</div>
<!--值得关注的的遗漏弹窗begin-->
<script language="javascript">
	tradeInit();
</script>
<script src="<%=request.getContextPath()%>/static/min/js/filter/filterBox.js" type="text/javascript"></script>
 <form name="tradeForm" method="post">
 <input type="hidden" id="term" name="term" />
 <input type="hidden" id="amount" name="amount" />
 <input type="hidden" id="amounts" name="amounts" />
 <input type="hidden" id="content" name="content" />
 <input type="hidden" id="multiple" name="multiple" />
 <input type="hidden" id="lotType" name="lotType" />
 <input type="hidden" id="isDS" name="isDS" value="false"/>
 <input type="hidden" id="playType" name="playType" />
 <input type="hidden" id="founderAmount" name="founderAmount" />
 <input type="hidden" id="founderBdAmount" name="founderBdAmount" />
  <input type="hidden" id="publicStatus" name="publicStatus"/>
 <input type="hidden" id="other" name="other" />
 <input type="hidden" id="stopCondition" name="stopCondition" /><!--终止条件-->
  <input type="hidden" id="gainCondition" name="gainCondition" /><!-- 盈利条件 -->
 <input name="submit1" type="submit" value="提交" style="display:none"/>
 </form>
</body>
</html>
