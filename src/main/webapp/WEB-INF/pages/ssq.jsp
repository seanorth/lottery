<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>双色球投注-福利彩票双色球代购合买-网上购买双色球 - 彩乐乐</title>
<meta name="keywords" content="双色球,双色球购买,双色球网上投注,福利彩票双色球" />
<meta name="description" content="彩乐乐提供中国福利彩票双色球开奖结果、走势图、预测分析以及双色球网上投注服务,双色球出票为直联彩票中心无纸化投注,购买双色球来彩乐乐,这里是中奖福地。" />
<meta name="mobile-agent" content="format=xhtml;url=http://m.cailele.com/lottery/sxq/">
<!-- 全局contextPath变量 -->
<script type="text/javascript">var ctx='${pageContext.request.contextPath}';var ctx_jsonp=ctx+"/jsonp";var ctx_static_proxy=ctx+"/static/proxy";</script>
<!--css document-->
<!--说明：public.css与style.css是全站通用样式，lottery.css所有购彩页面公共样式，number.css是数字彩公共样式-->
<link href="<%=request.getContextPath()%>/static/min?f=/css/public.css,/css/style.css,/css/lottery/lottery.css,/css/lottery/number/number.css,/css/lottery/number/ssq.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/static/min?f=/css/lottery/zhuihao.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/static/min?f=/js/util/jquery.min.js,/js/boot.js,/js/util/map.js,/js/util/set.js,/js/util/cll.js,/js/trade/helper.js,/js/trade/term_beta.js,/js/ssq/trade2.js,/js/ssq/tradeInfo2.js,/js/trade/dsUpload.js,/js/ssq/shrink.js,/js/common.js" type="text/javascript"></script>
 
<!-- 
<link href="/css/public.css" rel="stylesheet" type="text/css" />
<link href="/css/style.css" rel="stylesheet" type="text/css" />
<link href="/css/lottery/lottery.css" rel="stylesheet" type="text/css" />
<link href="/css/lottery/number/number.css" rel="stylesheet" type="text/css" /> 
<link href="/css/lottery/number/ssq.css" rel="stylesheet" type="text/css" />

<script src="/js/util/jquery.min.js" type="text/javascript"></script>
<script src="/js/boot.js" type="text/javascript"></script> 
<script src="/js/util/map.js" type="text/javascript"></script>
<script src="/js/util/set.js" type="text/javascript"></script>
<script src="/js/util/cll.js" type="text/javascript"></script>
<script src="/js/trade/helper.js" type="text/javascript"></script>
<script src="/js/trade/term_beta.js" type="text/javascript"></script>
<script src="/js/ssq/trade2.js" type="text/javascript"></script>
<script src="/js/ssq/tradeInfo2.js" type="text/javascript"></script>
<script src="/js/trade/dsUpload.js" type="text/javascript"></script>
<script src="/js/ssq/shrink.js" type=text/javascript></script> -->
<script type="text/javascript">
$(document).ready(function(){
	startServerTime('currentTime');
});

// 计算器手工录入隐藏蓝、红球个数计算；文字改变
$(document).ready(function(){
	$("#ds_menu").bind("click",function(){
		$("#cbgs").hide();
		$("#cbfs").hide();
		$("#cbds").show();
	})
	$("#fs_menu").bind("click",function(){
		$("#cbgs").show();
		$("#cbfs").show();
		$("#cbds").hide();
	})
	$("#dt_menu").bind("click",function(){
		$("#cbgs").show();
		$("#cbfs").show();
		$("#cbds").hide();
	})
	$("#gj_menu").bind("click",function(){
		$("#cbgs").show();
		$("#cbfs").show();
		$("#cbds").hide();
	})
});

$(function(){
	cllCommon.cllSelect('#cllSelect');
	cllCommon.cllScroll('#cllScroll');
	cllCommon.generalTab('cllBasetab','mouseover');
});

</script>
<!--以下这段是用于修复IE6下的PNG问题-->
<!--[if IE 6]>
	<script type="text/javascript" src="/js/DD_belatedPNG.js" ></script>
	
	<script type="text/javascript">
		DD_belatedPNG.fix('.png');
	</script>
<![endif]-->
</head>

<body id="lotBetting">
<!-- 头部begin-->
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
            <span class="promo"><script src="http://www.cailele.com/js/cllAd/toppromo.js" type="text/javascript"></script></span>
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
<!--头部end-->
<!--中间begin-->
<div id="container" class="mainer">
	<!----------------------------------------------------------------------------------------------------------------------彩种页面头部-->
    <!--<div class="adbanner" style="margin:5px auto 0 auto;">
    <a href="http://bbs.cailele.com/thread-829345-1-1.html" target="_blank"><img src="http://img.cailele.com/img_new/banner/201406/20140609_1000x80-lt.jpg" /></a>
</div>-->
<div class="hd_lottery">
    <div class="hd_lottery_in">
        <ul class="clearfix base_area">
            <li class="logo_box">
                <div class="png lottery_logo"><img src="http://img.cailele.com/img/images/icossq.gif" class="logo" /></div>
                <span id="logo"></span>
            </li>
            <li class="info_box">
                <div class="t_area"><h1 class="tit">双色球</h1><span class="info">每注2元，最高奖金<span style="color:#2d374b">1000</span>万</span></div>
                <div class="divHint_new"><p class="readme"><i class="ico ico_clock"></i>周二、周四、周日 19:45截止 21:30开奖</p></div>
            </li>
            <li class="other_box">
                <div class="sale_timer def_style_st dlt_st">
                    <div class="sale_date">当前销售：第<span id="currentTerm">loading..</span>期 &nbsp;<span id="weekTips"></span></div>
                    <div class="clear"></div>
                     <div class="sale_time">销售截止：
                     	  <span id="saleRTShow"></span>
	                  </div>
                      <span id="openRTShow" style="display:none"></span>     
                </div>
            </li>
            <li class="tools_box">
                <dl class="tlinks">
                    <dd><a href="http://zs.cailele.com/ssq/chuhaoTrend.php" target="_blank">出号走势</a></dd>
                    <dd><a href="http://zs.cailele.com/ssq/blueTrend.php" target="_blank">蓝球走势</a></dd>
                    <dd><a href="http://kjh.cailele.com/kj_ssq.shtml" target="_blank">开奖公告</a></dd>
                    <dd><a href="/rule/rule10.shtml" target="_blank">玩法介绍</a></dd>
                    <dd><a href="/lecture/ssq.shtml" target="_blank">购彩助手</a></dd>
                </dl>
            </li>
        </ul>
        <div class="clearfix action_area">
            <ul class="clearfix base_tab">
                <!--说明：下面a标签样式award为加奖，new为最新，hot为热门-->
                <li class="betting"><a href="/lottery/ssq/"><span>选号投注<i class="ico"></i></span></a></li>
                <li class="join_hm"><a href="/hm/findhm.php?lotType=100"><span>参与合买<i class="ico"></i></span></a></li>  
                <li class="small lucky"><a href="/lottery/ssq/lucky.shtml"><span>趣味玩法<i class="ico"></i></span></a></li>
                <li class="small yutou"><a href="/lottery/ssq/yutou.shtml"><span>预投合买<i class="ico"></i></span></a></li>
                <!--<li class="small shrink"><a href="http://tool.cailele.com/tool/ssq_ss.aspx" target="_blank"><span>在线缩水<i class="ico"></i></span></a></li>-->
                <li class="small shahao"><a href="http://www.cailele.com/shahao/ssq/index.shtml" target="_blank"><span>专家杀号<i class="ico"></i></span></a></li>
                <li class="small yilou"><a href="http://yl.cailele.com/ssq/hqMiss.php" target="_blank" ><span>遗漏数据<i class="ico"></i></span></a></li>
                <!--<li class="small shahao"><a href="http://www.cailele.com/subject/package/index.shtml" target="_blank" class="hot" ><span>追号套餐<i class="ico"></i></span></a></li>-->
            </ul>
            <div class="clock">
                <i class="ico ico_guide"></i><span id="currentTime">--月--日 --:--:--</span>
            </div>
        </div>
    </div>
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


    <!----------------------------------------------------------------------------------------------------------------------购彩页面主要部分-->
    <div class="clearfix lottery_main">
    	<!--左右布局页面begin-->
    	<div class="clearfix column_wapper">
    	<!--购彩页面左边部分begin-->
    	<div class="lo_mainer">
        	<!--切换菜单begin-->
        	<div class="lot_tab_box2">
                <ul class="clearfix lot_tab">
                	<!--说明：下面a标签样式award为加奖，new为最新，hot为热门-->
                    <li id="fs_menu" class="on" onclick="changeMenu('fs');"><a href="javascript:;"><span class="tit">标准投注<i class="ico"></i></span></a></li>
                    <li id="dt_menu" onclick="changeMenu('dt');"><a href="javascript:;"><span class="tit">胆拖投注<i class="ico"></i></span></a></li>
                    <li id="gj_menu" onclick="changeMenu('gj');"><a href="javascript:;"><span class="tit">高级投注<i class="ico"></i></span></a></li>
                    <li id="ds_menu" onclick="changeMenu('ds');"><a href="javascript:;"><span class="tit">手工录入<i class="ico"></i></span></a></li>
                    <li id="upload_menu" onclick="changeMenu('upload');"><a href="javascript:;"><span class="tit">单式上传<i class="ico"></i></span></a></li>
                </ul>
            </div>
            <!--切换菜单end-->
            <div class="lot_step_area">
            	<!-----------------------------------不同玩法的切换-->
            	<!--玩法:标准投注开始 -->
                <div id="fs_Div">
            	<div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="fsRad" class="lo_radio" checked="checked"/><label for="fsRad" class="txt">标准选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>至少选择6个红球和1个蓝球，支持单式和复式投注。<a href="/rule/rule10.shtml" target="_blank" class="detail">详细介绍</a>
                                        </div>
                                        <div id="fs_label" style="display:none;"></div>
                                    </div>
                                </div>
                            </div>
                            <!--<div class="prompt"><em>[加奖提示]</em>任选三单期单张彩票在4元(含)以上，每注加奖3元。<a href="/rule/rule10.shtml" target="_blank" class="detail">详细介绍</a></div>-->
                        </div>
                    </div>
                </div>
                
                <div class="step_box step_select">
                	<div class="step_tit">
                    	<h5 class="tit">第二步</h5>
                        <span class="info">选择号码</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="clearfix lot_ball">
                            	<div class="lot_ball_in">
                                	<!--红球begin-->
                                	<dl id="fs1" class="ball_box front">
                                    	<dt class="hd">红球选号区</dt>
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">红球</h6>
                                                <ul class="balls">
                                                    <li id="fs_rc01" class="li2" onclick="selectNum(this,1,'01')"><i>01</i></li>
                                                    <li id="fs_rc02" class="li2" onclick="selectNum(this,1,'02')"><i>02</i></li>
                                                    <li id="fs_rc03" class="li2" onclick="selectNum(this,1,'03')"><i>03</i></li>
                                                    <li id="fs_rc04" class="li2" onclick="selectNum(this,1,'04')"><i>04</i></li>
                                                    <li id="fs_rc05" class="li2" onclick="selectNum(this,1,'05')"><i>05</i></li>
                                                    <li id="fs_rc06" class="li2" onclick="selectNum(this,1,'06')"><i>06</i></li>
                                                    <li id="fs_rc07" class="li2" onclick="selectNum(this,1,'07')"><i>07</i></li>
                                                    <li id="fs_rc08" class="li2" onclick="selectNum(this,1,'08')"><i>08</i></li>
                                                    <li id="fs_rc09" class="li2" onclick="selectNum(this,1,'09')"><i>09</i></li>
                                                    <li id="fs_rc10" class="li2" onclick="selectNum(this,1,'10')"><i>10</i></li>
                                                    <li id="fs_rc11" class="li2" onclick="selectNum(this,1,'11')"><i>11</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="fs_red_miss_1" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                	<li id="fs_rc12" class="li2" onclick="selectNum(this,1,'12')"><i>12</i></li>
                                                    <li id="fs_rc13" class="li2" onclick="selectNum(this,1,'13')"><i>13</i></li>
                                                    <li id="fs_rc14" class="li2" onclick="selectNum(this,1,'14')"><i>14</i></li>
                                                    <li id="fs_rc15" class="li2" onclick="selectNum(this,1,'15')"><i>15</i></li>
                                                    <li id="fs_rc16" class="li2" onclick="selectNum(this,1,'16')"><i>16</i></li>
                                                    <li id="fs_rc17" class="li2" onclick="selectNum(this,1,'17')"><i>17</i></li>
                                                    <li id="fs_rc18" class="li2" onclick="selectNum(this,1,'18')"><i>18</i></li>
                                                    <li id="fs_rc19" class="li2" onclick="selectNum(this,1,'19')"><i>19</i></li>
                                                    <li id="fs_rc20" class="li2" onclick="selectNum(this,1,'20')"><i>20</i></li>
                                                    <li id="fs_rc21" class="li2" onclick="selectNum(this,1,'21')"><i>21</i></li>
                                                    <li id="fs_rc22" class="li2" onclick="selectNum(this,1,'22')"><i>22</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="fs_red_miss_2" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                	<li id="fs_rc23" class="li2" onclick="selectNum(this,1,'23')"><i>23</i></li>
                                                    <li id="fs_rc24" class="li2" onclick="selectNum(this,1,'24')"><i>24</i></li>
                                                    <li id="fs_rc25" class="li2" onclick="selectNum(this,1,'25')"><i>25</i></li>
                                                    <li id="fs_rc26" class="li2" onclick="selectNum(this,1,'26')"><i>26</i></li>
                                                    <li id="fs_rc27" class="li2" onclick="selectNum(this,1,'27')"><i>27</i></li>
                                                    <li id="fs_rc28" class="li2" onclick="selectNum(this,1,'28')"><i>28</i></li>
                                                    <li id="fs_rc29" class="li2" onclick="selectNum(this,1,'29')"><i>29</i></li>
                                                    <li id="fs_rc30" class="li2" onclick="selectNum(this,1,'30')"><i>30</i></li>
                                                    <li id="fs_rc31" class="li2" onclick="selectNum(this,1,'31')"><i>31</i></li>
                                                    <li id="fs_rc32" class="li2" onclick="selectNum(this,1,'32')"><i>32</i></li>
                                                    <li id="fs_rc33" class="li2" onclick="selectNum(this,1,'33')"><i>33</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="fs_red_miss_3" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                        </dd>
                                        <dd class="clearfix ft">
                                        	<div class="clearfix auto_operate">
                                            	<div class="recommend">
													<!--<a name="pushRedBtn" href="javascript:;" class="key skin_def r_recom"><span>推荐</span></a>
													<a href="javascript:;" name="clearRedHightBtn" class="key skin_def"><span>清</span></a>-->
												</div>
                                                <div class="random">
                                                	<select id="fs_getRandomRed" name="randomRedSelect" class="rnd_nums">
                                                    	<option value="6" selected="selected">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                    </select>
                                                    <a href="javascript:;" class="key skin_pink" onclick="JxRed(1);"><span>机选红球</span></a><a href="javascript:void(0);" class="key skin_def"  onclick="clearRed(1);"><span>清</span></a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <!--红球end-->
                                    <!--蓝球begin-->
                                    <dl id="fs2" class="ball_box behind">
                                    	<dt class="hd">蓝球选号区</dt>
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">蓝球</h6>
                                                <ul class="balls">
                                                    <li id="fs_bc01" class="blue-off" onclick="selectNum(this,2,'01')"><i>01</i></li>
                                                    <li id="fs_bc02" class="blue-off" onclick="selectNum(this,2,'02')"><i>02</i></li>
                                                    <li id="fs_bc03" class="blue-off" onclick="selectNum(this,2,'03')"><i>03</i></li>
                                                    <li id="fs_bc04" class="blue-off" onclick="selectNum(this,2,'04')"><i>04</i></li>
                                                    <li id="fs_bc05" class="blue-off" onclick="selectNum(this,2,'05')"><i>05</i></li>
                                                    <li id="fs_bc06" class="blue-off" onclick="selectNum(this,2,'06')"><i>06</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="fs_blue_miss_1" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                    <li id="fs_bc07" class="blue-off" onclick="selectNum(this,2,'07')"><i>07</i></li>
                                                    <li id="fs_bc08" class="blue-off" onclick="selectNum(this,2,'08')"><i>08</i></li>
                                                    <li id="fs_bc09" class="blue-off" onclick="selectNum(this,2,'09')"><i>09</i></li>
                                                    <li id="fs_bc10" class="blue-off" onclick="selectNum(this,2,'10')"><i>10</i></li>
                                                    <li id="fs_bc11" class="blue-off" onclick="selectNum(this,2,'11')"><i>11</i></li>
                                                    <li id="fs_bc12" class="blue-off" onclick="selectNum(this,2,'12')"><i>12</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="fs_blue_miss_2" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                    <li id="fs_bc13" class="blue-off" onclick="selectNum(this,2,'13')"><i>13</i></li>
                                                    <li id="fs_bc14" class="blue-off" onclick="selectNum(this,2,'14')"><i>14</i></li>
                                                    <li id="fs_bc15" class="blue-off" onclick="selectNum(this,2,'15')"><i>15</i></li>
                                                    <li id="fs_bc16" class="blue-off" onclick="selectNum(this,2,'16')"><i>16</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="fs_blue_miss_3" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                        </dd>
                                        <dd class="clearfix ft">
                                        	<div class="clearfix auto_operate">
                                            	<div class="recommend">
													<!--<a href="javascript:;" name="pushBlueBtn" class="key skin_def b_recom"><span>推荐</span></a>
													<a href="javascript:;" name="clearBlueHightBtn" class="key skin_def"><span>清</span></a>-->
												</div>
                                                <div class="random">
                                                	<select id="fs_getRandomBlue" name="randomHouSelect" class="randomBlueSelect">
                                                		<option value="1" selected="selected">1</option>
                                                    	<option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                    </select>
                                                    <a href="javascript:;" class="key skin_blue" onclick="JxBlue(2);"><span>机选蓝球</span></a><a href="javascript:void(0);" class="key skin_def" onclick="clearBlue(2);"><span>清</span></a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <!--蓝球end-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--玩法:标准投注结束-->
                
                <!--玩法:胆拖开始 -->
                <div id="dt_Div" style="display:none;">
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="dtRad" class="lo_radio" name="dt_ra" checked="checked"/><label for="dtRad" class="txt">胆拖选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>红球选择1-5个胆码，拖码个数加胆码个数要大于6，蓝球选择1个或多个。<a href="/rule/rule10.shtml" target="_blank" class="detail">详细介绍</a>
                                        </div>
                                        <div id="dt_label" style="display:none;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div id="dt_playTypeDiv" class="step_box step_select">
                	<div class="step_tit">
                    	<h5 class="tit">第二步</h5>
                        <span class="info">选择号码</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="clearfix lot_ball dt_style">
                            	<div class="lot_ball_in">
                                	<!--红球begin-->
                                	<dl class="ball_box front">
                                    	<dt class="hd">红球选号区</dt>
                                        <dd class="bd">
                                        	<!--红球胆码区begin-->
                                        	<div class="sp"><b class="m_tit">胆码区</b><span class="readme">--我认为必出的号码。至少选择1个，最多5个</span></div>
                                            <!--胆码选号:开始-->
                                            <div id="dt1">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">红球</h6>
                                                <ul class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'01')"><i>01</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'02')"><i>02</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'03')"><i>03</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'04')"><i>04</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'05')"><i>05</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'06')"><i>06</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'07')"><i>07</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'08')"><i>08</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'09')"><i>09</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'10')"><i>10</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'11')"><i>11</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'12')"><i>12</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'13')"><i>13</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'14')"><i>14</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'15')"><i>15</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'16')"><i>16</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'17')"><i>17</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'18')"><i>18</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="dt_red_miss1_1" class="omit">
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
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'19')"><i>19</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'20')"><i>20</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'21')"><i>21</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'22')"><i>22</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'23')"><i>23</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'24')"><i>24</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'25')"><i>25</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'26')"><i>26</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'27')"><i>27</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'28')"><i>28</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'29')"><i>29</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'30')"><i>30</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'31')"><i>31</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'32')"><i>32</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'33')"><i>33</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="dt_red_miss1_2" class="omit">
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
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                  <a href="javascript:;" class="key skin_def dm_clear" onclick="clearRed(1);"><span>清</span></a>
                                                </div>
                                            </div>
                                            </div>
											
                                            <!--胆码选号:结束-->
                                            <!--红球胆码区end-->
                                            <hr /><!--分割线-->
                                            <!--红球拖码区begin-->
                                            <div class="sp"><b class="m_tit">拖码区</b><span class="readme">--我认为可能出的号码。至少选择2个</span></div>
                                            <!--拖码选号:开始-->
                                            <div id="dt2">
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">红球</h6>
                                                <ul class="balls">
                                                    <li id="dt_rc01" class="li2" onclick="selectNum(this,2,'01')"><i>01</i></li>
                                                    <li id="dt_rc02" class="li2" onclick="selectNum(this,2,'02')"><i>02</i></li>
                                                    <li id="dt_rc03" class="li2" onclick="selectNum(this,2,'03')"><i>03</i></li>
                                                    <li id="dt_rc04" class="li2" onclick="selectNum(this,2,'04')"><i>04</i></li>
                                                    <li id="dt_rc05" class="li2" onclick="selectNum(this,2,'05')"><i>05</i></li>
                                                    <li id="dt_rc06" class="li2" onclick="selectNum(this,2,'06')"><i>06</i></li>
                                                    <li id="dt_rc07" class="li2" onclick="selectNum(this,2,'07')"><i>07</i></li>
                                                    <li id="dt_rc08" class="li2" onclick="selectNum(this,2,'08')"><i>08</i></li>
                                                    <li id="dt_rc09" class="li2" onclick="selectNum(this,2,'09')"><i>09</i></li>
                                                    <li id="dt_rc10" class="li2" onclick="selectNum(this,2,'10')"><i>10</i></li>
                                                    <li id="dt_rc11" class="li2" onclick="selectNum(this,2,'11')"><i>11</i></li>
                                                    <li id="dt_rc12" class="li2" onclick="selectNum(this,2,'12')"><i>12</i></li>
                                                    <li id="dt_rc13" class="li2" onclick="selectNum(this,2,'13')"><i>13</i></li>
                                                    <li id="dt_rc14" class="li2" onclick="selectNum(this,2,'14')"><i>14</i></li>
                                                    <li id="dt_rc15" class="li2" onclick="selectNum(this,2,'15')"><i>15</i></li>
                                                    <li id="dt_rc16" class="li2" onclick="selectNum(this,2,'16')"><i>16</i></li>
                                                    <li id="dt_rc17" class="li2" onclick="selectNum(this,2,'17')"><i>17</i></li>
                                                    <li id="dt_rc18" class="li2" onclick="selectNum(this,2,'18')"><i>18</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="dt_red_miss2_1" class="omit">
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
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                    <li id="dt_rc19" class="li2" onclick="selectNum(this,2,'19')"><i>19</i></li>
                                                    <li id="dt_rc20" class="li2" onclick="selectNum(this,2,'20')"><i>20</i></li>
                                                    <li id="dt_rc21" class="li2" onclick="selectNum(this,2,'21')"><i>21</i></li>
                                                    <li id="dt_rc22" class="li2" onclick="selectNum(this,2,'22')"><i>22</i></li>
                                                    <li id="dt_rc23" class="li2" onclick="selectNum(this,2,'23')"><i>23</i></li>
                                                    <li id="dt_rc24" class="li2" onclick="selectNum(this,2,'24')"><i>24</i></li>
                                                    <li id="dt_rc25" class="li2" onclick="selectNum(this,2,'25')"><i>25</i></li>
                                                    <li id="dt_rc26" class="li2" onclick="selectNum(this,2,'26')"><i>26</i></li>
                                                    <li id="dt_rc27" class="li2" onclick="selectNum(this,2,'27')"><i>27</i></li>
                                                    <li id="dt_rc28" class="li2" onclick="selectNum(this,2,'28')"><i>28</i></li>
                                                    <li id="dt_rc29" class="li2" onclick="selectNum(this,2,'29')"><i>29</i></li>
                                                    <li id="dt_rc30" class="li2" onclick="selectNum(this,2,'30')"><i>30</i></li>
                                                    <li id="dt_rc31" class="li2" onclick="selectNum(this,2,'31')"><i>31</i></li>
                                                    <li id="dt_rc32" class="li2" onclick="selectNum(this,2,'32')"><i>32</i></li>
                                                    <li id="dt_rc33" class="li2" onclick="selectNum(this,2,'33')"><i>33</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="dt_red_miss2_2" class="omit">
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
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            </div>
                                            <!--拖码选号:结束-->
                                            <!--红球拖码区end-->
                                        </dd>
                                        <dd class="clearfix ft">
                                        	<div class="clearfix auto_operate">
                                                <div class="random">
                                                	<select id="dt_getRandomRed" name="randomQianSelect" class="rnd_nums">
                                                    	<option value="5" selected="selected">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                    </select>
                                                   <a href="javascript:;" class="key skin_def" onclick="JxRed(2);"><span>机选拖码</span></a><a href="javascript:;" class="key skin_def" onclick="clearRed(2);"><span>清</span></a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <!--红球end-->
                                    <!--蓝球begin-->
                                    <dl id="dt3" class="ball_box behind">
                                    	<dt class="hd">蓝球选号</dt>
                                        <dd class="bd">
                                        	<!--蓝球选号区begin-->
                                        	<div class="sp"><b class="m_tit">选号区</b><span class="readme">--至少选择1个号码</span></div>
                                            <div id="dt3">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">蓝球</h6>
                                                <ul class="balls">
                                                    <li id="dt_bc01" class="blue-off" onclick="selectNum(this,3,'01')"><i>01</i></li>
                                                    <li id="dt_bc02" class="blue-off" onclick="selectNum(this,3,'02')"><i>02</i></li>
                                                    <li id="dt_bc03" class="blue-off" onclick="selectNum(this,3,'03')"><i>03</i></li>
                                                    <li id="dt_bc04" class="blue-off" onclick="selectNum(this,3,'04')"><i>04</i></li>
                                                    <li id="dt_bc05" class="blue-off" onclick="selectNum(this,3,'05')"><i>05</i></li>
                                                    <li id="dt_bc06" class="blue-off" onclick="selectNum(this,3,'06')"><i>06</i></li>
                                                    <li id="dt_bc07" class="blue-off" onclick="selectNum(this,3,'07')"><i>07</i></li>
                                                    <li id="dt_bc08" class="blue-off" onclick="selectNum(this,3,'08')"><i>08</i></li>
                                                    <li id="dt_bc09" class="blue-off" onclick="selectNum(this,3,'09')"><i>09</i></li>
                                                    <li id="dt_bc10" class="blue-off" onclick="selectNum(this,3,'10')"><i>10</i></li>
                                                    <li id="dt_bc11" class="blue-off" onclick="selectNum(this,3,'11')"><i>11</i></li>
                                                    <li id="dt_bc12" class="blue-off" onclick="selectNum(this,3,'12')"><i>12</i></li>
                                                    <li id="dt_bc13" class="blue-off" onclick="selectNum(this,3,'13')"><i>13</i></li>
                                                    <li id="dt_bc14" class="blue-off" onclick="selectNum(this,3,'14')"><i>14</i></li>
                                                    <li id="dt_bc15" class="blue-off" onclick="selectNum(this,3,'15')"><i>15</i></li>
                                                    <li id="dt_bc16" class="blue-off" onclick="selectNum(this,3,'16')"><i>16</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="dt_blue_miss1_1" class="omit">
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
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                         </div>
                                         <!--蓝球选号区end-->
                                        <dd class="clearfix ft">
                                        	<div class="clearfix auto_operate">
                                                <div class="random">
                                                	<select id="dt_getRandomBlue" name="randomHouSelect" class="rnd_nums">
                                                    	<option value="1" selected>1</option>
											            <option value="2">2</option>
											            <option value="3">3</option>
											            <option value="4">4</option>
											            <option value="5">5</option>
											            <option value="6">6</option>
											            <option value="7">7</option>
											            <option value="8">8</option>
											            <option value="9">9</option>
											            <option value="10">10</option>
											            <option value="11">11</option>
											            <option value="12">12</option>
											            <option value="13">13</option>
											            <option value="14">14</option>
											            <option value="15">15</option>
											            <option value="16">16</option>
                                                    </select>
                                                    <a href="javascript:;" class="key skin_def" onclick="JxBlue(3);"><span>机选拖码</span></a><a href="javascript:;" class="key skin_def" onclick="clearBlue(3);"><span>清</span></a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <!--蓝球end-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--玩法:胆拖结束 -->
                
                <!--玩法:高级开始 -->
                <div id="gj_Div" style="display:none;">
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="xzjzRad" name="gj_ra" class="lo_radio" checked="checked" onclick="setPlayType('xzjz');" /><label for="xzjzRad" class="txt">旋转矩阵</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>选择8-20个红球号码和1-16个蓝球号码，再使用旋转矩阵原理科学组号，是彩民广泛使用的选号方法。（蓝球号码不参加旋转）<a href="/static/news/show_10027047.shtml" target="_blank" class="detail">旋转矩阵使用说明</a><a href="/rule/rule10.shtml" target="_blank" class="detail">玩法介绍</a>
                                        </div>
                                        <div id="xzjz_label"  style="display:none;"></div>
                                    </div>
                                </div>
                                <input type="radio" id="ddshjxRad" name="gj_ra" class="lo_radio" onclick="setPlayType('ddshjx');" /><label for="ddshjxRad" class="txt">定胆杀号机选</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>使用定胆会让随机的结果中每一注都出现某一个号码,使用杀号会让随机的结果中每一注都消失某一个号码。<a href="/static/news/show_10069916.shtml" target="_blank" class="detail">定胆杀号使用说明</a><a href="/rule/rule10.shtml" target="_blank" class="detail">玩法介绍</a>
                                        </div>
                                        <div id="ddshjx_label"  style="display:none;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!--旋转矩阵begin-->
                <div id="xzjz_playTypeDiv" class="step_box step_select">
                	<div class="step_tit">
                    	<h5 class="tit">第二步</h5>
                        <span class="info">选择号码</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="clearfix lot_ball">
                            	<div class="lot_ball_in">
                                	<!--红球begin-->
                                	<dl id="xzjz_red" class="ball_box front">
                                    	<dt class="hd">红球</dt>
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">红球</h6>
                                                <ul class="balls">
                                                    <li class="li2" id="xzjz_rc01" onclick="selectNum(this,1,'01')"><i>01</i></li>
                                                    <li class="li2" id="xzjz_rc02" onclick="selectNum(this,1,'02')"><i>02</i></li>
                                                    <li class="li2" id="xzjz_rc03" onclick="selectNum(this,1,'03')"><i>03</i></li>
                                                    <li class="li2" id="xzjz_rc04" onclick="selectNum(this,1,'04')"><i>04</i></li>
                                                    <li class="li2" id="xzjz_rc05" onclick="selectNum(this,1,'05')"><i>05</i></li>
                                                    <li class="li2" id="xzjz_rc06" onclick="selectNum(this,1,'06')"><i>06</i></li>
                                                    <li class="li2" id="xzjz_rc07" onclick="selectNum(this,1,'07')"><i>07</i></li>
                                                    <li class="li2" id="xzjz_rc08" onclick="selectNum(this,1,'08')"><i>08</i></li>
                                                    <li class="li2" id="xzjz_rc09" onclick="selectNum(this,1,'09')"><i>09</i></li>
                                                    <li class="li2" id="xzjz_rc10" onclick="selectNum(this,1,'10')"><i>10</i></li>
                                                    <li class="li2" id="xzjz_rc11" onclick="selectNum(this,1,'11')"><i>11</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="xzjz_red_miss_1" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                	<li class="li2" id="xzjz_rc12" onclick="selectNum(this,1,'12')"><i>12</i></li>
                                                    <li id="xzjz_rc13" class="li2" onclick="selectNum(this,1,'13')"><i>13</i></li>
                                                    <li id="xzjz_rc14" class="li2" onclick="selectNum(this,1,'14')"><i>14</i></li>
                                                    <li id="xzjz_rc15" class="li2" onclick="selectNum(this,1,'15')"><i>15</i></li>
                                                    <li id="xzjz_rc16" class="li2" onclick="selectNum(this,1,'16')"><i>16</i></li>
                                                    <li id="xzjz_rc17" class="li2" onclick="selectNum(this,1,'17')"><i>17</i></li>
                                                    <li id="xzjz_rc18" class="li2" onclick="selectNum(this,1,'18')"><i>18</i></li>
                                                    <li id="xzjz_rc19" class="li2" onclick="selectNum(this,1,'19')"><i>19</i></li>
                                                    <li id="xzjz_rc20" class="li2" onclick="selectNum(this,1,'20')"><i>20</i></li>
                                                    <li id="xzjz_rc21" class="li2" onclick="selectNum(this,1,'21')"><i>21</i></li>
                                                    <li id="xzjz_rc22" class="li2" onclick="selectNum(this,1,'22')"><i>22</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="xzjz_red_miss_2" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                	<li id="xzjz_rc23" class="li2" onclick="selectNum(this,1,'23')"><i>23</i></li>
                                                    <li id="xzjz_rc24" class="li2" onclick="selectNum(this,1,'24')"><i>24</i></li>
                                                    <li id="xzjz_rc25" class="li2" onclick="selectNum(this,1,'25')"><i>25</i></li>
                                                    <li id="xzjz_rc26" class="li2" onclick="selectNum(this,1,'26')"><i>26</i></li>
                                                    <li id="xzjz_rc27" class="li2" onclick="selectNum(this,1,'27')"><i>27</i></li>
                                                    <li id="xzjz_rc28" class="li2" onclick="selectNum(this,1,'28')"><i>28</i></li>
                                                    <li id="xzjz_rc29" class="li2" onclick="selectNum(this,1,'29')"><i>29</i></li>
                                                    <li id="xzjz_rc30" class="li2" onclick="selectNum(this,1,'30')"><i>30</i></li>
                                                    <li id="xzjz_rc31" class="li2" onclick="selectNum(this,1,'31')"><i>31</i></li>
                                                    <li id="xzjz_rc32" class="li2" onclick="selectNum(this,1,'32')"><i>32</i></li>
                                                    <li id="xzjz_rc33" class="li2" onclick="selectNum(this,1,'33')"><i>33</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="xzjz_red_miss_3" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                        </dd>
                                        <dd class="clearfix ft">
                                        	<div class="clearfix auto_operate">
                                            	<!--<div class="recommend"><a href="javascript:;" class="key skin_def r_recom"><span>推荐</span></a><a href="javascript:;" class="key skin_def"><span>清</span></a></div>-->
                                                <div class="random">
                                                	<select id="xzjz_getRandomRed" name="randomQianSelect" class="rnd_nums">
                                                        <option value="8" selected="selected">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                    </select>
                                                    <a href="javascript:;" class="key skin_def" onclick="JxRed(1)"><span>机选红球</span></a><a href="javascript:void(0);" class="key skin_def" onclick="clearRed(1)"><span>清</span></a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <!--红球end-->
                                    <!--蓝球begin-->
                                    <dl id="xzjz_blue" class="ball_box behind">
                                    	<dt class="hd">蓝球</dt>
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">蓝球</h6>
                                                <ul class="balls">
                                                    <li id="xzjz_bc01" class="blue-off" onclick="selectNum(this,2,'01')"><i>01</i></li>
                                                    <li id="xzjz_bc02" class="blue-off" onclick="selectNum(this,2,'02')"><i>02</i></li>
                                                    <li id="xzjz_bc03" class="blue-off" onclick="selectNum(this,2,'03')"><i>03</i></li>
                                                    <li id="xzjz_bc04" class="blue-off" onclick="selectNum(this,2,'04')"><i>04</i></li>
                                                    <li id="xzjz_bc05" class="blue-off" onclick="selectNum(this,2,'05')"><i>05</i></li>
                                                    <li id="xzjz_bc06" class="blue-off" onclick="selectNum(this,2,'06')"><i>06</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="xzjz_blue_miss_1" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                    <li id="xzjz_bc07" class="blue-off" onclick="selectNum(this,2,'07')"><i>07</i></li>
                                                    <li id="xzjz_bc08" class="blue-off" onclick="selectNum(this,2,'08')"><i>08</i></li>
                                                    <li id="xzjz_bc09" class="blue-off" onclick="selectNum(this,2,'09')"><i>09</i></li>
                                                    <li id="xzjz_bc10" class="blue-off" onclick="selectNum(this,2,'10')"><i>10</i></li>
                                                    <li id="xzjz_bc11" class="blue-off" onclick="selectNum(this,2,'11')"><i>11</i></li>
                                                    <li id="xzjz_bc12" class="blue-off" onclick="selectNum(this,2,'12')"><i>12</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="xzjz_blue_miss_2" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                    <li id="xzjz_bc13" class="blue-off" onclick="selectNum(this,2,'13')"><i>13</i></li>
                                                    <li id="xzjz_bc14" class="blue-off" onclick="selectNum(this,2,'14')"><i>14</i></li>
                                                    <li id="xzjz_bc15" class="blue-off" onclick="selectNum(this,2,'15')"><i>15</i></li>
                                                    <li id="xzjz_bc16" class="blue-off" onclick="selectNum(this,2,'16')"><i>16</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="xzjz_blue_miss_2" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                        </dd>
                                        <dd class="clearfix ft">
                                        	<div class="clearfix auto_operate">
                                            	<!--<div class="recommend"><a href="javascript:;" class="key skin_def r_recom"><span>推荐</span></a><a href="javascript:;" class="key skin_def"><span>清</span></a></div>-->
                                                <div class="random">
                                                	<select id="xzjz_getRandomBlue" name="randomHouSelect" class="rnd_nums">
                                                    	<option value="1" selected="selected">1</option>
                                                    	<option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="15">16</option>
                                                    </select>
                                                    <a href="javascript:;" class="key skin_def" onclick="JxBlue(2);"><span>机选蓝球</span></a><a href="javascript:void(0);" class="key skin_def" onclick="clearBlue(2);"><span>清</span></a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <!--蓝球end-->
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!--旋转矩阵end-->
                <!--定胆杀号机选begin-->
                <div id="ddshjx_playTypeDiv" class="step_box step_select" style="display:none">
                	<div class="step_tit">
                    	<h5 class="tit">第二步</h5>
                        <span class="info">选择号码</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="clearfix lot_ball">
                            	<div class="lot_ball_in">
                                	<!--红球begin-->
                                	<dl id="ddshjx_red" class="ball_box front">
                                    	<dt class="hd">红球</dt>
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">红球</h6>
                                                <ul class="balls">
                                                    <li class="li2" id="ddshjx_rc01" onclick="selectNum(this,1,'01')"><i>01</i></li>
                                                    <li class="li2" id="ddshjx_rc02" onclick="selectNum(this,1,'02')"><i>02</i></li>
                                                    <li class="li2" id="ddshjx_rc03" onclick="selectNum(this,1,'03')"><i>03</i></li>
                                                    <li class="li2" id="ddshjx_rc04" onclick="selectNum(this,1,'04')"><i>04</i></li>
                                                    <li class="li2" id="ddshjx_rc05" onclick="selectNum(this,1,'05')"><i>05</i></li>
                                                    <li class="li2" id="ddshjx_rc06" onclick="selectNum(this,1,'06')"><i>06</i></li>
                                                    <li class="li2" id="ddshjx_rc07" onclick="selectNum(this,1,'07')"><i>07</i></li>
                                                    <li class="li2" id="ddshjx_rc08" onclick="selectNum(this,1,'08')"><i>08</i></li>
                                                    <li class="li2" id="ddshjx_rc09" onclick="selectNum(this,1,'09')"><i>09</i></li>
                                                    <li class="li2" id="ddshjx_rc10" onclick="selectNum(this,1,'10')"><i>10</i></li>
                                                    <li class="li2" id="ddshjx_rc11" onclick="selectNum(this,1,'11')"><i>11</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="ddshjx_red_miss_1" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                	<li class="li2" id="ddshjx_rc12" onclick="selectNum(this,1,'12')"><i>12</i></li>
                                                    <li id="ddshjx_rc13" class="li2" onclick="selectNum(this,1,'13')"><i>13</i></li>
                                                    <li id="ddshjx_rc14" class="li2" onclick="selectNum(this,1,'14')"><i>14</i></li>
                                                    <li id="ddshjx_rc15" class="li2" onclick="selectNum(this,1,'15')"><i>15</i></li>
                                                    <li id="ddshjx_rc16" class="li2" onclick="selectNum(this,1,'16')"><i>16</i></li>
                                                    <li id="ddshjx_rc17" class="li2" onclick="selectNum(this,1,'17')"><i>17</i></li>
                                                    <li id="ddshjx_rc18" class="li2" onclick="selectNum(this,1,'18')"><i>18</i></li>
                                                    <li id="ddshjx_rc19" class="li2" onclick="selectNum(this,1,'19')"><i>19</i></li>
                                                    <li id="ddshjx_rc20" class="li2" onclick="selectNum(this,1,'20')"><i>20</i></li>
                                                    <li id="ddshjx_rc21" class="li2" onclick="selectNum(this,1,'21')"><i>21</i></li>
                                                    <li id="ddshjx_rc22" class="li2" onclick="selectNum(this,1,'22')"><i>22</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="ddshjx_red_miss_2" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                	<li id="ddshjx_rc23" class="li2" onclick="selectNum(this,1,'23')"><i>23</i></li>
                                                    <li id="ddshjx_rc24" class="li2" onclick="selectNum(this,1,'24')"><i>24</i></li>
                                                    <li id="ddshjx_rc25" class="li2" onclick="selectNum(this,1,'25')"><i>25</i></li>
                                                    <li id="ddshjx_rc26" class="li2" onclick="selectNum(this,1,'26')"><i>26</i></li>
                                                    <li id="ddshjx_rc27" class="li2" onclick="selectNum(this,1,'27')"><i>27</i></li>
                                                    <li id="ddshjx_rc28" class="li2" onclick="selectNum(this,1,'28')"><i>28</i></li>
                                                    <li id="ddshjx_rc29" class="li2" onclick="selectNum(this,1,'29')"><i>29</i></li>
                                                    <li id="ddshjx_rc30" class="li2" onclick="selectNum(this,1,'30')"><i>30</i></li>
                                                    <li id="ddshjx_rc31" class="li2" onclick="selectNum(this,1,'31')"><i>31</i></li>
                                                    <li id="ddshjx_rc32" class="li2" onclick="selectNum(this,1,'32')"><i>32</i></li>
                                                    <li id="ddshjx_rc33" class="li2" onclick="selectNum(this,1,'33')"><i>33</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="ddshjx_red_miss_3" class="omit">
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
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                        </dd>
                                        <dd class="clearfix ft">
                                        	<div class="clearfix auto_operate">
                                                <div class="random">
                                                    </a><a href="javascript:void(0);" class="key skin_def" onclick="clearRed(1)"><span>清</span></a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <!--红球end-->
                                    <!--蓝球begin-->
                                    <dl id="ddshjx_blue" class="ball_box behind">
                                    	<dt class="hd">蓝球</dt>
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">蓝球</h6>
                                                <ul class="balls">
                                                    <li id="ddshjx_bc01" class="blue-off" onclick="selectNum(this,2,'01')"><i>01</i></li>
                                                    <li id="ddshjx_bc02" class="blue-off" onclick="selectNum(this,2,'02')"><i>02</i></li>
                                                    <li id="ddshjx_bc03" class="blue-off" onclick="selectNum(this,2,'03')"><i>03</i></li>
                                                    <li id="ddshjx_bc04" class="blue-off" onclick="selectNum(this,2,'04')"><i>04</i></li>
                                                    <li id="ddshjx_bc05" class="blue-off" onclick="selectNum(this,2,'05')"><i>05</i></li>
                                                    <li id="ddshjx_bc06" class="blue-off" onclick="selectNum(this,2,'06')"><i>06</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">遗漏</h6>
                                                <div id="ddshjx_blue_miss_1" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                    <li id="ddshjx_bc07" class="blue-off" onclick="selectNum(this,2,'07')"><i>07</i></li>
                                                    <li id="ddshjx_bc08" class="blue-off" onclick="selectNum(this,2,'08')"><i>08</i></li>
                                                    <li id="ddshjx_bc09" class="blue-off" onclick="selectNum(this,2,'09')"><i>09</i></li>
                                                    <li id="ddshjx_bc10" class="blue-off" onclick="selectNum(this,2,'10')"><i>10</i></li>
                                                    <li id="ddshjx_bc11" class="blue-off" onclick="selectNum(this,2,'11')"><i>11</i></li>
                                                    <li id="ddshjx_bc12" class="blue-off" onclick="selectNum(this,2,'12')"><i>12</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="ddshjx_blue_miss_2" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <ul class="balls">
                                                    <li id="ddshjx_bc13" class="blue-off" onclick="selectNum(this,2,'13')"><i>13</i></li>
                                                    <li id="ddshjx_bc14" class="blue-off" onclick="selectNum(this,2,'14')"><i>14</i></li>
                                                    <li id="ddshjx_bc15" class="blue-off" onclick="selectNum(this,2,'15')"><i>15</i></li>
                                                    <li id="ddshjx_bc16" class="blue-off" onclick="selectNum(this,2,'16')"><i>16</i></li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit">&nbsp;</h6>
                                                <div id="ddshjx_blue_miss_2" class="omit">
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                    <div class="yl1"></div>
                                                </div>
                                            </div>
                                        </dd>
                                        <dd class="clearfix ft">
                                        	<div class="clearfix auto_operate">
                                                <div class="random"> 
                                                  </a><a href="javascript:void(0);" class="key skin_def" onclick="clearBlue(2);"><span>清</span></a>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <!--蓝球end-->
                                </div>
                                
                                <div class="opt">
                                <div id="ddshjx_Div">
                                           机选：
                                    <select id="ddshjx_getRandomRed" name="randomQianSelect">
                                        <option value="6" selected>6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                    </select>个红球号码
                                    <i class="s"></i>
                                    <select id="ddshjx_getRandomBlue" name="randomHouSelect" style="margin-top:2px;">
                                    	<option value="1" selected>1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>个蓝球号码
                                    <i class="s"></i>
                                    <select id="ddshjx_getRandomGroup" style="margin-top:2px;">
                                        <option value="1" selected>1</option>
                                        <option value="2">2</option>
                                        <option value="5">5</option>
                                        <option value="10">10</option>
                                        <option value="20">20</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select>组号码
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--定胆杀号机选end-->
                </div>
                <!--玩法:高级结束 -->
                
                <!--玩法:单式开始 -->
                <div id="ds_Div" style="display:none">
            	<div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                            	<input type="radio" id="dsRad" name="ds_ra" class="lo_radio" checked="checked" /><label for="dsRad" class="txt">单式选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>用软件做单方案格式要与下面一致，可用txt里面的替换功能使格式与本站格式一致。<a href="/rule/rule10.shtml" target="_blank" class="detail">详细介绍</a>
                                        </div>
                                        <div id="ds_label"  style="display:none;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div id="sxl_playTypeDiv" class="step_box step_select">
                	<div class="step_tit">
                    	<h5 class="tit">第二步</h5>
                        <span class="info">选择号码</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="clearfix handwork">
                        		<div class="hw_right">
                                	<textarea id="ds_cText" name="cText" rows="7" cols="50" onblur="showSelectInfo();"></textarea>
                                </div>
                            	<div class="">
                                	<span class="a">格式说明:<br /></span>
                                    <span class="b">单式：01 02 03 04 05 06:01 或 1 2 3 4 5 6:1<br /></span>
									<span class="c">复式：01 02 03 04 05 06 07:01 02  或 1 2 3 4 5 6 7:1 2<br /></span>
									1、每行为一个投注号，每行至少有六个红球和一个蓝球，红球和蓝球之间以一个":"（冒号）分隔；<br />
									2、红球与红球之间或蓝球与蓝球之间用一个空格间隔；
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--玩法:单式结束-->
                
                <!--玩法:文件上传开始 -->
                <div id="upload_Div" style="display:none">
            	<div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                            	<input type="radio" id="uploadRad" name="upload_ra" class="lo_radio" checked="checked" /><label for="uploadRad" class="txt">文件上传<span style="padding-left:10px;color:red;">最大可上传20000元方案。</span></label>
                            	 <div id="upload_label"  style="display:none;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div id="upload_playTypeDiv" class="step_box step_upload">
                	<div class="step_tit">
                    	<h5 class="tit">第二步</h5>
                        <span class="info">上传文件</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="prompt">请严格参照<a href="/lottery/ssq/dsupload.txt" target="_blank">标准格式样式</a>上传方案，否则网站不保证为您做过关统计以及历史战绩统计！</div>
                        	<div class="clearfix handwork">
                                <dl class="upload_readme">
                                <dt><em>特别提醒:</em></dt>
                                <dd>
                                    <ul class="readme_list">
                                        <li>1、文件格式必须是文本的，文本文字须一行一注；</li>
                                        <li>2、每行七个号码以空格隔开，小于10的号码前面加0，如：号码1的格式需为01；</li>
                                        <li>3、注意不要有序号，若有不解，请参照<a href="/lottery/ssq/dsupload.txt" target="_blank">标准格式样本；</a></li>
                                        <li>4、由于上传的文件较大，会导致上传时间及在本页停留时间较长，请耐心等待。</li>
                                    </ul>
                                </dd>
                            	</dl>
	                            <div class="upload_area">
	                                <form action="/trade/dsUpload.php" method="post" enctype="multipart/form-data"  name="uploadForm" target="singleFrame" onsubmit="return checkUpload();">
	                                    <input type="hidden" name="lotteryType" value="100" />
	                                    <input type="hidden" name="playTypeDs" value="1" />
	                                    
	                                    <input type="file" id="file" name="file" />
	                                    <input type="submit" id="sc" name="Submit2" value="上传" />
	                                    <iframe id="singleFrame" name="singleFrame" src="" width="0" height="0" scrolling="no" frameborder="0"></iframe>
	                                </form>
	                            </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--玩法:文件上传结束-->
                
                
                <!--计算器begin-->
                <div id="indicator" class="indi_box">
                    <div class="indicator"><span id="cbgs">红球选了<em class="red" id="cbRed">0</em>个号码，蓝球选了<em class="blue" id="cbBlue">0</em>个号码，</span><span id="cbfs">共选择了</span><span id="cbds" style="display:none">共录入了</span><em id="cbCount" class="red">0</em>注，金额<em id="cbAmount" class="red">0</em>元<a href="javascript:;" class="abacus_clear" onclick="disSelect();">清空选择号码</a></div>
                    <div class="opt" id="shrinkDIV" style="display: none;">	
                    	<div class="opt_in">
                    		<strong class="t">缩水选项：</strong>
                            <input type="radio" id="shrink1" name="shrinkType" value="z6b5" checked="checked" /><label for="shrink1">中6保5缩水后[<span id="z6b5Money">0</span>]元</label>
                            <input type="radio" id="shrink2" name="shrinkType" value="z6b4" /><label for="shrink2">中6保4缩水后[<span id="z6b4Money">0</span>]元</label>
                            <input type="radio" id="shrink3" name="shrinkType" value="z5b5" /><label for="shrink3">中5保5缩水后[<span id="z5b5Money">0</span>]元</label>
                        </div> 
                    </div>    
                    <div class="add_abacus">
                        <a href="javascript:;" class="abacus_config on" onclick="selectOk();"></a>
                        <!--<a href="javascript:;" class="abacus_clear" onclick="disSelect();"></a>-->
                    </div>
                </div>
                <!--计算器end-->
                <!-----------------------------------不同玩法的切换end-->
                <div class="step_box step_plan">
                	<div class="step_tit">
                    	<h5 class="tit">第三步</h5>
                        <span class="info">添加方案</span>
                    </div>
                    <!--新的投注区域 begin-->
                        <div class="step_main">
                            <div class="step_main_in">
                            	<div class="betingbasket">
                                    <div  class="betarea" id="tradeList">
                                    </div>
                                    <div class="betoper">
                                        <ul>
                                            <li><span class="cllbtn ran1"><a href="javascript:;" onclick="JSNEW(1);" class="default"><i></i><em>机选1注</em></a></span></li>
                                            <li><span class="cllbtn ran5"><a href="javascript:;" onclick="JSNEW(5);" class="default"><i></i><em>机选5注</em></a></span></li>
											<li><span class="cllbtn filtnum"><a href="javascript:;" onclick="calculator.openWindow();" class="default"><i></i><em>奖金计算</em></a></span><a href="http://www.cailele.com/static/info/201507/show_10358655.shtml" class="answers" target="_blank"><i class="iconfont">&#xe65f;</i></a></li>
                                            <li><span class="cllbtn checknum"><a href="javascript:void(0);" onclick="historyCheckBox.verifyBettingBox();" class="default"><span>对比历史开奖号</span></a></span><a href="http://www.cailele.com/static/info/201507/show_10358667.shtml" class="answers" target="_blank"><i class="iconfont">&#xe65f;</i></a></li>
                                            <li><span class="cllbtn removed"><a href="javascript:;" onclick="clearOption(0,1);" class="default"><i></i><em>清空</em></a></span></li> 
                                        </ul>
                                    </div>
                                    <div class="trade_count">
                                        您选择了<em id="inLineCount">0</em>注，
										<span class="widget_multiple"><span class="minus"  onclick="onBuyMutipleChangeNew('minus');">-</span><span class="cllinput"><input name="multipleDG" id="multipleDG" value="1" type="text" class="disable" onkeyup="onBuyMutipleChange(this,false);" onblur="onBuyMutipleChange(this,true);" onbeforepaste="BeforePaste()"></span><span class="add"  onclick="onBuyMutipleChangeNew('add')">+</span></span>
										倍,<span>共￥<em id="inLineAmount" >0</em></span>元
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--新的投注区域 end-->
                </div>
                
                <div class="step_box step_buy">
                	<div class="step_tit">
                    	<h5 class="tit">第四步</h5>
                        <span class="info">选购买方式</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="mode">
                            	购买方式：<input name="buyType" id="buyTypeDg" type="radio" checked="checked" onclick="changeDg();"/><label for="buyTypeDg">代购</label><input name="buyType" id="buyTypeHm" type="radio" onclick="changeHm();"/><label for="buyTypeHm">合买</label><input name="buyType" id="buyTypeZh" type="radio" onclick="changeZh();"/><label for="buyTypeZh">追号</label><a href="/help/faq07.shtml" target="_blank">什么叫代购、合买、追号？</a>
                            </div>
                             <div class="trade_overt hidden" style="padding-top:10px" id="isHidden">方案公开： <style type="text/css">
	.hidden{display:none !important;}
</style>
<label for="notPublic"><input name="selectPublicStatus" id="notPublic" type="radio" value="1" checked="true" />不公开</label>
<label for="publicPlan"><input name="selectPublicStatus" id="publicPlan" type="radio" value="2"  />公开</label>
<label for="followPublic" class="hidden"><input name="selectPublicStatus" id="followPublic" type="radio" value="4" />跟单公开</label>
<label for="awardPublic"><input name="selectPublicStatus" id="awardPublic" type="radio" value="3" />截止公开</label>
</div>
                            <div class="expand">
                           	<!--合买开始-->
							<div id="hmSelect">
   <table border="0">
     <tr>
       <td>方案提成: </td>
       <td>
         <select name="commisionInput" id="commisionInput">
           <option selected>0</option>
           <option>1</option>
           <option>2</option>
           <option>3</option>
           <option>4</option>
           <option>5</option>
           <option>6</option>
           <option>7</option>
           <option>8</option>
           <option>9</option>
           <option>10</option>
         </select>%</td>
     </tr>
     <tr>
       <td>我要认购: </td>
       <td><input id="founderAmountInput" name="founderAmountInput" type="text" class="text"></input>元&nbsp;<span>*</span>(发起人必须认购1元以上)</td>
     </tr>
     <tr>
       <td> 我要保底: </td>
       <td><input id="founderBdAmountInput" name="founderBdAmountInput" type="text" class="text" value="0"></input>元&nbsp;<span>*</span>(0元则不保底,您了解保底的规则吗?) </td>
     </tr>
     <tr>
       <td> 宣传口号: </td>
       <td><input type="text" id="memoInput" name="memoInput" maxlength="20" size="20" value="团结就是中奖!" /><span>*</span>(长度为20个字符,10个汉字)</td>
     </tr>
   </table>
 </div>
							<!--合买结束-->
                            </div>
                        </div>
                    </div>
                    <!--追号开始-->
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
                    <span class="cllinput"><input type="text" id="chaseCount" onkeyup="changeChaseCount(this.value);" maxlength="3" class="default"></span>
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
                    <!--追号结束-->
                </div>
                
                <div class="buy_confirm">
                	<div class="agree"><p><input type="checkbox" id="agree" checked="checked" onclick="agreeClick();" />我已经年满18岁并同意<br /><a href="/member/agreement.shtml" target="_blank">《彩乐乐网站服务协议》</a></p></div>
                    <div class="btn"><a href="javascript:void(0);" id="buyBtn" class="btnBuy-orange" onclick="tradeSubmit(1);"></a></div>
                    <!--保存方案begin-->
                    <div class="save"><span class="saveplan"><a href="javascript:;" onclick="freeSavePlan()">保存方案</a></span></div>
                    <!--保存方案end-->
                </div>
               	<!--投注记录begin-->
    			<script type="text/javascript">
<!--
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
//-->
</script>
<div id="record" plantype ="1">
     <div class="lot_record">
         <div class="hd">
             <div class="hd_in">
              <div class="category">
                  <ul id="categoryUl" class="category_list">
                 	  <li id="dg" class="current" onclick="switchRecord(1);"><a href="javascript:;">代购记录</a></li>
                      <li id="hm" onclick="switchRecord(2);"><a href="javascript:;">合买记录</a></li>
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
        </div>
        <!--购彩页面左边部分end-->
        <!--购彩页面右边部分begin-->
        <div class="lo_sider">
	<!--右侧广告begin-->
    <!--<div class="lot_sider_ad">
        <a href="http://www.cailele.com/static/info/201412/show_10318099.shtml" target="_blank"><img src="http://img.cailele.com/img_new/banner/201501/2015-01-01ssqdlt_260x100.jpg" width="260" /></a>
    </div>-->
    <!--右侧广告end-->
    
    <!--右侧广告begin-->
    <!--<div class="lot_sider_ad">
        <a href="http://www.cailele.com/subject/twoyuan/" target="_blank"><img src="http://img.cailele.com/img_new/banner/201407/20140711_twoyuan_480x210.jpg" width="260" /></a>
    </div>-->
    <!--右侧广告end-->
    
    <!--奖池情况 begin-->
    <div class='module mod_sider experts'><div class='hd'><div class='hd_in'><h5 class='tit'>双色球奖池情况</h5></div></div><div class='jc_situation'><div class='pp line'><b>9</b>亿<b>8068</b>万<b>9536</b>元</div><div class='pp'>至少可开出<i>196</i>注500万大奖</div></div></div>
    <!--奖池情况 end-->
    
    <!--开奖公告begin-->
    <div class="module mod_sider sider_award">
        <div class="hd">
            <div class="hd_in"><h5 class="tit">双色球开奖公告</h5><a class="more" target="_blank" href="http://kjh.cailele.com/kj_ssq.shtml">更多开奖</a></div>
        </div>
        <div class="bd">
            <div class="bd_in">
                   <div class="clearfix newest">
	<div class="open_term">
		<span class="a">双色球</span>
			<span class="b">2017027</span>
				<span id=class="c">期</span>
	</div>
	<div class="open_time">
		<span>开奖时间：2017-03-09 21:30</span>
	</div>
	<div class="open_num">
		<ul class="clearfix open_num_list">
			<li class="red_ball">02</li>
			<li class="red_ball">04</li>
			<li class="red_ball">11</li>
			<li class="red_ball">14</li>
			<li class="red_ball">27</li>
			<li class="red_ball">30</li>
			<li class="blue_ball">05</li>
		</ul>
	</div>
</div>	

                <table class="open_history_tb">
                    <thead>
                       <tr>
                            <td style="width:50px;">期数</td>
                            <td style="width:130px;">开奖号码</td>
                            <td style="width:35px;">大小</td>
                            <td style="width:35px;">单双</td>
                       </tr>
                    </thead>
                    <tbody id="openPanel">
                  		<tr><td>17027</td><td>02,04,11,14,27,30|05</td><td>2:4</td><td>2:4</td></tr><tr><td>17026</td><td>03,10,12,19,27,30|08</td><td>3:3</td><td>3:3</td></tr><tr><td>17025</td><td>02,15,16,17,22,32|07</td><td>3:3</td><td>2:4</td></tr><tr><td>17024</td><td>09,21,25,26,29,31|13</td><td>5:1</td><td>5:1</td></tr><tr><td>17023</td><td>01,03,04,11,18,22|14</td><td>2:4</td><td>3:3</td></tr><tr><td>17022</td><td>02,06,15,16,18,32|15</td><td>2:4</td><td>1:5</td></tr><tr><td>17021</td><td>02,05,10,22,32,33|09</td><td>3:3</td><td>2:4</td></tr><tr><td>17020</td><td>04,08,10,12,31,33|10</td><td>2:4</td><td>2:4</td></tr><tr><td>17019</td><td>04,06,08,12,23,25|08</td><td>2:4</td><td>2:4</td></tr><tr><td>17018</td><td>01,02,03,17,25,31|09</td><td>3:3</td><td>5:1</td></tr>
                 	</tbody>
                </table>
            </div>
        </div>
    </div>
    <!--开奖公告end-->
    
    <!--专家推荐begin-->
     <div class="module mod_sider experts">
          <div class="hd">
            <div class="hd_in"><h5 class="tit">双色球专家推荐</h5><a href="/news/list-10000040-1.html" target="_blank" class="more">更多推荐</a></div>
          </div>
          <div class="bd">
             <div class="bd_in"><dl class="expert_box"><dt><a href='/static/info/201703/show_10511212.shtml' target="_blank"><img src='<%=request.getContextPath()%>/jsonp/static/news/expert/20131112093941SHR.png' /><span>小马哥</span></a></dt><dd class="say"><h4><a href='/static/info/201703/show_10511212.shtml'>双色球2017028期专家推荐</a></h4><p><P>分析:本期留意区间比2:2:2，看好蓝球01,02</P>
<P></p></dd><dd class="recom"><h4>当期推荐<a href="javascript:void(0);" id="areaBtn0" class="key skin_def"><span>添加到选号区</span></a></h4><p>红球：<span id="areaRed0" class="area_red">01,05,09,12,17,19,22,24,25,26</span></p><p>蓝球：<span id="areaBlue0" class="area_blue">01,02,03,04,16</span></p></dd></dl></div><div class="bd_in"><dl class="expert_box last"><dt><a href='/static/info/201703/show_10511208.shtml' target="_blank"><img src='<%=request.getContextPath()%>/jsonp/static/news/expert/20111129103150SHR.png' /><span>陌陌</span></a></dt><dd class="say"><h4><a href='/static/info/201703/show_10511208.shtml'>双色球2017028期专家推荐</a></h4><p><P>分析:本期留意区间比1:3:2,看好蓝球06,11</P>
<P></p></dd><dd class="recom"><h4>当期推荐<a href="javascript:void(0);" id="areaBtn1" class="key skin_def"><span>添加到选号区</span></a></h4><p>红球：<span id="areaRed1" class="area_red">01,05,10,16,17,18,22,25,31,32</span></p><p>蓝球：<span id="areaBlue1" class="area_blue">06,09,11,12</span></p></dd></dl></div>
          </div>
      </div>
    <!--专家推荐end-->
</div>
       
        <!--购彩页面右边部分end-->
     </div>
     <!--左右布局页面end-->
    </div>
		
    <!-- 相关文章部分begin -->
    <div class="clearfix relate_area">
    	<dl class="clearfix relate_layout">
        	<dd class="column1">
            	<div class="module relate_recommend">
                	<div class="hd">
                    	<div class="hd_in">双色球预测</div>
                    </div>
                    <div class="bd">
                    	<div class="bd_in">
                            <ul id="newslist" class="list">
                            	<li><a href='/static/info/201703/show_10511243.shtml' target='_blank' >[陌陌]双色球2017028期专家推荐</a><span class='dat'>10日</span></li><li><a href='/static/info/201703/show_10511224.shtml' target='_blank' >[陌陌]双色球2017028期专家推荐</a><span class='dat'>10日</span></li><li><a href='/static/info/201703/show_10511220.shtml' target='_blank' >[小马哥]彩乐乐双色球2017028期推荐</a><span class='dat'>10日</span></li><li><a href='/static/info/201703/show_10511200.shtml' target='_blank' >双色球第17028期区间比关注2:1:3</a><span class='dat'>10日</span></li><li><a href='/static/info/201703/show_10511194.shtml' target='_blank' >双色球第17028期和值范围：59-141</a><span class='dat'>10日</span></li><li><a href='/static/info/201703/show_10511190.shtml' target='_blank' >双色球第17028期蓝球重点关注05 07 11</a><span class='dat'>10日</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </dd>
            <dd class="column2">
            	<div class="module relate_recommend">
                	<div class="hd">
                    	<div class="hd_in">双色球专家推荐</div>
                    </div>
                    <div class="bd">
                    	<div class="bd_in">
                            <ul id="newslist" class="list">
                            	<li><a href='/static/info/201703/show_10511212.shtml' target='_blank' >[小马哥]彩乐乐双色球2017028期推荐</a><span class='dat'>10日</span></li><li><a href='/static/info/201703/show_10511208.shtml' target='_blank' >[陌陌]双色球2017028期专家推荐</a><span class='dat'>10日</span></li><li><a href='/static/info/201703/show_10510858.shtml' target='_blank' >[小马哥]彩乐乐双色球2017027期推荐</a><span class='dat'>08日</span></li><li><a href='/static/info/201703/show_10510847.shtml' target='_blank' >[陌陌]双色球2017027期专家推荐</a><span class='dat'>08日</span></li><li><a href='/static/info/201703/show_10510512.shtml' target='_blank' >[小马哥]彩乐乐双色球2017026期推荐</a><span class='dat'>06日</span></li><li><a href='/static/info/201703/show_10510504.shtml' target='_blank' >[陌陌]双色球2017026期专家推荐</a><span class='dat'>06日</span></li><li><a href='/static/info/201703/show_10509927.shtml' target='_blank' >[小马哥]彩乐乐双色球2017025期推荐</a><span class='dat'>03日</span></li><li><a href='/static/info/201703/show_10509919.shtml' target='_blank' >[陌陌]双色球2017025期专家推荐</a><span class='dat'>03日</span></li><li><a href='/static/info/201703/show_10509608.shtml' target='_blank' >[小马哥]彩乐乐双色球2017024期推荐</a><span class='dat'>01日</span></li><li><a href='/static/info/201703/show_10509600.shtml' target='_blank' >[陌陌]双色球2017024期专家推荐</a><span class='dat'>01日</span></li><li><a href='/static/info/201702/show_10509222.shtml' target='_blank' >[小马哥]彩乐乐双色球2017023期推荐</a><span class='dat'>27日</span></li><li><a href='/static/info/201702/show_10509214.shtml' target='_blank' >[陌陌]双色球2017023期专家推荐</a><span class='dat'>27日</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </dd>
            <dd class="column3">
            	<div class="module relate_recommend">
                	<div class="hd">
                    	<div class="hd_in">双色球技巧</div>
                    </div>
                    <div class="bd">
                    	<div class="bd_in">
                            <ul id="newslist" class="list">
                            	<li><a href='/static/info/201408/show_10288300.shtml' target='_blank' >双色球预测最准确的计算公式</a><span class='dat'>18日</span></li><li><a href='/static/info/201312/show_10219857.shtml' target='_blank' >技术型彩民常用的九大选号方法</a><span class='dat'>10日</span></li><li><a href='/static/info/201310/show_10200878.shtml' target='_blank' >双色球3亿派奖即将开始 彩民需提前热身</a><span class='dat'>21日</span></li><li><a href='/static/info/201212/show_10101496.shtml' target='_blank' >双色球蓝球选号技巧 多种指标综合分析</a><span class='dat'>10日</span></li><li><a href='/static/info/201212/show_10100197.shtml' target='_blank' >四招破解“连号”密码 独享丰厚奖池</a><span class='dat'>05日</span></li><li><a href='/static/news/show_10089377.shtml' target='_blank' >探寻福利双色球开连号中奖的秘密</a><span class='dat'>25日</span></li><li><a href='/static/news/show_10084036.shtml' target='_blank' >双色球杀蓝球技巧 中奖率高达90%</a><span class='dat'>25日</span></li><li><a href='/static/news/show_10024303.shtml' target='_blank' >双色球实战诀窍：五招定蓝首选跟形态</a><span class='dat'>28日</span></li><li><a href='/static/news/show_10023286.shtml' target='_blank' >双色球投注技巧：九数奇偶擒蓝法</a><span class='dat'>21日</span></li><li><a href='/static/news/show_10021130.shtml' target='_blank' >双色球实战秘籍：巧用悬摆选红球</a><span class='dat'>06日</span></li><li><a href='/static/news/show_10019369.shtml' target='_blank' >双色球实战秘籍：综合参数拍断区</a><span class='dat'>24日</span></li><li><a href='/static/news/show_10017975.shtml' target='_blank' >双色球实战诀窍：重号的连续性</a><span class='dat'>12日</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </dd>
        </dl>
    </div>
    <div class="bonus_explain">
        	<div class="hd"><h5 class="tit">双色球奖金说明</h5><a href="/rule/rule10.shtml" target="_blank" class="readme">详细说明</a></div>
        <div class="bd">
        	<table class="bonus_explain_tb">
            	<thead>
                    <tr>
                        <td rowspan="2">奖级</td>
                        <td colspan="2">中奖条件</td>
                        <td rowspan="2">中奖说明</td>
                        <td rowspan="2">单注奖金</td>
                        <td rowspan="2">单注赔率</td>
                    </tr>
                    <tr>
                        <td>红球</td>
                        <td>蓝球</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>一等奖</td>
                        <td class="red">●●●●●●</td>
                        <td class="blue">●</td>
                        <td>中6+1</td>
                        <td>当期高奖级奖金的75%与奖池中累积的资金之和，再除以中奖注数。</td>
                        <td>——</td>
                    </tr>
                    <tr>
                        <td>二等奖</td>
                        <td class="red">●●●●●●</td>
                        <td class="blue">&nbsp;</td>
                        <td>中6+0</td>
                        <td>当期高奖级奖金的25%，再除以中奖注数。</td>
                        <td>——</td>
                    </tr>
                    <tr>
                        <td>三等奖</td>
                        <td class="red">●●●●●</td>
                        <td class="blue">●</td>
                        <td>中5+1</td>
                        <td>3000元</td>
                        <td>1:1500</td>
                    </tr>
                    <tr>
                        <td rowspan="2">四等奖</td>
                        <td class="red">●●●●●</td>
                        <td class="blue">&nbsp;</td>
                        <td>中5+0</td>
                        <td rowspan="2">200元</td>
                        <td rowspan="2">1:100</td>
                    </tr>
                    <tr>
                        <td class="red">●●●●</td>
                        <td class="blue">●</td>
                        <td>中4+1</td>
                    </tr>
                    <tr>
                        <td rowspan="2">五等奖</td>
                        <td class="red">●●●●</td>
                      <td class="blue">&nbsp;</td>
                        <td>中4+0</td>
                        <td rowspan="2">10元</td>
                      <td rowspan="2">1:5</td>
                    </tr>
                    <tr>
                        <td class="red">●●●</td>
                        <td class="blue">●</td>
                        <td>中3+1</td>
                    </tr>
                    <tr>
                        <td rowspan="3">六等奖</td>
                        <td class="red">●●</td>
                      <td class="blue">●</td>
                        <td>中2+1</td>
                      <td rowspan="3">5元</td>
                      <td rowspan="3">1:2.5</td>
                    </tr>
                    <tr>
                        <td class="red">●</td>
                        <td class="blue">●</td>
                        <td>中1+1</td>
                    </tr>
                    <tr>
                        <td class="red">&nbsp;</td>
                        <td class="blue">●</td>
                        <td>中0+1</td>
                    </tr>
                </tbody>
          </table>
        </div>
    </div>
    <!----------------------------------------------------------------------------------------------------------------------SEO文字部分-->
    <div class="clearfix lottery_intro">
    	<p><strong>彩乐乐彩票网提示您：</strong>本站销售的双色球是国家批准发行的数字型中国福利彩票双色球。您可直接进行双色球网上投注或参与双色球合买，也可以在选单提交后保存方案进行在线过滤福利彩票双色球投注方案。同时彩乐乐彩票网还提供福彩双色球开奖结果、双色球走势图、双色球投注技巧大全、双色球专家推荐、双色球过滤缩水等特色服务，助您提高双色球中奖概率和中奖奖金，让您足不出户就能轻松放心的网上购买双色球。而且在彩乐乐彩票网购买双色球的安全流程非常严谨，福彩双色球中奖奖金实时派发至您的购彩账户、提款即时到账，财务专员人工审核保障您的账户安全。</p>
    </div>
</div>
    <!-- 相关文章部分end -->
</div>
<!--中间end-->
<!-- 历史号码对比层文件  -->
<!--对比历史开奖号弹窗begin -->
<div id="lfAlert2" class="contrast" style="display:none">
    <div class="result">
    	<div class="periods">
        	<div class="location">
                <span class="tit">选择验证期数：</span>
                <div style="z-index:2;" class="cllselect">
                    <div class="default">
	                    <a id="cllSelect" href="javascript:void(0);" class="">全部期次</a>
	                    <p id="select_Box" style="height: 300px; display: none; overflow-y: auto;">
		                    <a class="current" value="all" href="javascript:void(0);">全部期次</a>
		                    <a value="30" href="javascript:void(0);">最近30期</a>
		                    <a value="100" href="javascript:void(0);">最近100期</a>
		                    <a value="500" href="javascript:void(0);">最近500期</a>
	                    </p>
	                    <input type="hidden" value="no" id="category" name="category">
                    </div>
                </div>
            </div>
        </div>
        <dl style="height: 203px;" class="history_table">
          <dt><span class="co1">奖级</span><span class="co2">中奖次数</span><span class="co3">最新中奖</span><span class="co4">当期号码</span><span class="co5">查看</span></dt>
          <dt><span id="checkSpan"></span></dt>
        </dl>
        <div class="history_tip">
          <p>截至2015054期，该组号码历史上没有中出过一等奖或二等奖。</p>
          <span class="cllbtn"><a class="default" href="javascript:;"><i></i><em>确定</em></a></span>
        </div>
    </div>
</div>
<!--对比历史开奖号弹窗end -->

<!-- 历史号码对比层文件结束 -->

<!-- 奖金计算器层文件  -->
<!--奖金计算弹窗begin -->
<div id="bonusDIV" class="calculated" style="display:none">
    <div class="circle">
    	<div class="double">
            <div class="example">        	
                <div class="cllbasetab" id="cllBasetab">
                    <div class="head">
                        <ul>
                            <li id="ptli" class="current"><a href="javascript:;"><em>复式奖金计算</em></a></li>
                            <li id="dtli" class=""><a href="javascript:;"><em>胆拖奖金计算</em></a></li>
                        </ul>
                    </div>
                    <div class="body">
                        <div class="tabcon" style="display: block;">
                        	<ul class="adjust">
                            	<li>
                                	我选了
                                    <span>
                                        <select name="bankzone" id="redBallSelect" class="bankcard_list">
                                            <option value="6" selected="selected">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
                                        </select>
                                    </span>
                                    个红球号码，
                                    <span>
                                        <select name="bankzone" id="blueBallSelect" class="bankcard_list">
                                            <option value="1" selected="selected">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
                                        </select>
                                    </span>
                                    个篮球号码
                                </li>
                                <li><span id="pscheme" class="scheme">投注金额：1注，投注金额<span id="ptoshow">2</span>元</span></li>
                                <li>
                                	可能命中
                                    <span>
                                        <select name="bankzone" id="mredBallSelect" class="bankcard_list">
                                            <option value="0" selected="selected">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
                                        </select>
                                    </span>
                                    个红球号码，
                                    <span>
                                        <select name="bankzone" id="mblueBallSelect" class="bankcard_list">
                                            <option value="0" selected="selected">0</option>
											<option value="1">1</option>
                                        </select>
                                    </span>
                                    个篮球号码
                                </li>
                                <li><div class="confirm"><span class="cllbtn"><a href="javascript:calculator.calculate();" class="default"><i></i><em>计算</em></a></span></div></li>
                            </ul>
                        </div>
                        <div style="display: none;" class="tabcon">
                        	<ul class="adjust">
                            	<li>
                                	我选了，红球
                                    <span>
                                        <select name="bankzone" id="dredBallSelect" class="bankcard_list">
                                            <option value="1">1</option>
											<option value="2">2</option>
											<option value="3" selected="selected">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
                                        </select>
                                    </span>
                                    个胆码，
                                    <span>
                                        <select name="bankzone" id="tredBallSelect" class="bankcard_list">
                                            <option value="1">1</option>
											<option value="2">2</option>
											<option value="3"  selected="selected">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											<option value="32">32</option>
                                        </select>
                                    </span>
                                    个拖码，蓝球
                                    <span>
                                        <select name="bankzone" id="bluesBallSelect" class="bankcard_list">
                                            <option value="1" selected="selected">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>                                        </select>
                                    </span>
                                    个号码
                                </li>
                                <li><span id="dtscheme" class="scheme">投注金额：1注，投注金额<span id="dttoshow">2</span>元</span></li>
                                <li>
                                	可能命中，红球
                                    <span>
                                        <select name="bankzone" id="mdredBallSelect" class="bankcard_list">
                                            <option value="0" selected="selected" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
                                        </select>
                                    </span>
                                    个胆码，
                                    <span>
                                        <select name="bankzone" id="mtredBallSelect" class="bankcard_list">
                                            <option value="0" selected="selected" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
                                        </select>
                                    </span>
                                    个拖码，篮球
                                    <span>
                                        <select name="bankzone" id="mbluesBallSelect" class="bankcard_list">
                                            <option value="0">0</option>
											<option value="1">1</option>
                                        </select>
                                    </span>
                                    个号码
                                </li>
                                <li><div class="confirm"><span class="cllbtn"><a href="javascript:calculator.calculateDT();" class="default"><i></i><em>计算</em></a></span></div></li>
                            </ul>
                        </div>
                    </div>
                </div>           
            </div>
        </div>
        
        
        <div class="parsing">
        	<table width="100%" id="calTable" cellspacing="0" cellpadding="0" class="clldatalist">
            	<thead>
                	<tr>
                    	<th>奖金</th>
                        <th>中奖说明</th>
                        <th>中奖注数</th>
                        <th>单注奖金</th>
                        <th>分项奖金</th>
                    </tr>
                </thead>
                <tbody>
                	<tr>
                    	<td>一等奖</td>
                        <td>中6红+1蓝</td>
                        <td>0</td>
                        <td id="prize1">0元</td>
                        <td>0元</td>
                    </tr>
                    <tr>
                    	<td>二等奖</td>
                        <td>中6红+0蓝</td>
                        <td>0</td>
                        <td id="prize2">0元</td>
                        <td>0元</td>
                    </tr>
                    <tr>
                    	<td>三等奖</td>
                        <td>中5红+1蓝</td>
                        <td>0</td>
                        <td>3000元</td>
                        <td>0元</td>
                    </tr>
                    <tr>
                    	<td>四等奖</td>
                        <td>中5红+0蓝或中4红+1蓝</td>
                        <td>0</td>
                        <td>200元</td>
                        <td>0元</td>
                    </tr>
                    <tr>
                    	<td>五等奖</td>
                        <td>中4红+0蓝或中3红+1蓝</td>
                        <td>0</td>
                        <td>10元</td>
                        <td>0元</td>
                    </tr>
                    <tr>
                    	<td>六等奖</td>
                        <td>中0/1/2红+1蓝</td>
                        <td>0</td>
                        <td>5元</td>
                        <td>0元</td>
                    </tr>
                    <tr>
                    	<td colspan="5"><div class="budget">总奖金预估为：0元</div></td>
                    </tr>
                    <tr>
                    	<td colspan="5">注：一、二等为浮动奖，浮动奖单注奖金以上期开奖数据为准，计算结果仅供参考。</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!--奖金计算弹窗end -->
<!-- 奖金计算器层文件结束 -->

<!--脚部文件begin-->
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
<div style="display:none">
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fa12bd8605a9677fee2a5de6eed347e5c' type='text/javascript'%3E%3C/script%3E"));
</script>

</div>
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
<script src="http://www.cailele.com/js/search.js" type="text/javascript"></script>
<!--新用户注册50送70弹窗end--> 
 
<!--脚部文件end-->	
<script src="<%=request.getContextPath()%>/static/min/js/ssq/HistoryCheckBox.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/min/js/ssq/BonusCalculator.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/min/js/ssq/shrink.js" type="text/javascript"></script>
<script type="text/javascript">
tradeInit();
</script>
<form name="tradeForm" method="post">
    <input type="hidden" id="term" name="term" />
    <input type="hidden" id="amount" name="amount" />
    <input type="hidden" id="amounts" name="amounts" />
    <input type="hidden" id="content" name="content" />
    <input type="hidden" id="multiple" name="multiple" />
    <input type="hidden" id="lotType" name="lotType" />
    <input type="hidden" id="isDS" name="isDS" value="false"/>
    <input type="hidden" id="playType" name="playType" />
    <input type="hidden" id="addAttribute" name="addAttribute" />
    <input type="hidden" id="founderAmount" name="founderAmount" />
    <input type="hidden" id="founderBdAmount" name="founderBdAmount" />
    <input type="hidden" id="publicStatus" name="publicStatus"/>
    <input type="hidden" id="commision" name="commision" />
    <input type="hidden" id="other" name="other" />
    <input type="hidden" id="stopCondition" name="stopCondition" /><!--终止条件-->
    <input type="hidden" id="gainCondition" name="gainCondition" /><!-- 盈利条件 -->
    <input type="hidden" id="filePath" name="filePath" />
    <input type="hidden" id="ds" name="ds" value="false"/>
    <input name="submit1" type="submit" value="提交" style="display:none"/>
</form>
</body>
</html>