<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>3D投注,福彩3d网上购买,福利彩票新3D平台 - 彩乐乐</title>
<meta name="Keywords" content="3d,新3d,福彩3D购买,3D投注" />
<meta name="Description" content="彩乐乐提供中国福利彩票3D开奖结果、走势图、分析以及网上投注、新3d合买服务，福彩3D出票为直联彩票中心无纸化投注，安全诚信请放心购买。" />
<!-- 全局contextPath变量 -->
<script type="text/javascript">var ctx='${pageContext.request.contextPath}';var ctx_jsonp=ctx+"/jsonp";var ctx_static_proxy=ctx+"/static/proxy";</script>

<!--css document-->
<!--说明：public.css与style.css是全站通用样式，lottery.css所有购彩页面公共样式，number.css是数字彩公共样式-->
<link href="<%=request.getContextPath()%>/static/min/css/public.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/static/min/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/static/min/css/lottery/lottery.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/static/min/css/lottery/number/number.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/static/min/css/lottery/number/3d.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/static/min/css/lottery/zhuihao.css" rel="stylesheet" type="text/css" />

<!--js document-->
<script src="<%=request.getContextPath()%>/static/min?f=/js/util/jquery.min.js,/lottery/css/showtab.js,/js/boot.js,/js/util/map.js,/js/util/set.js,/js/util/cll.js" type="text/javascript">
</script>
<script src="<%=request.getContextPath()%>/static/min/js/trade/helper.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/min/js/trade/term_beta.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/min/js/3d/trade1.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/min/js/3d/tradeInfo1.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/min/js/trade/dsUpload.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	startServerTime('currentTime');
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
                    <label id="lt_qlc"><a href="<%=request.getContextPath()%>/index/qlc/" target="_blank" class="disable">七乐彩<i></i></a></label>
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
	<!--===========彩种页面头部-->
    <!--
<div class="adbanner" style="margin:5px auto 0 auto;">
    <a href="/promotion/newYear.php" target="_blank"><img src="http://img.cailele.com/img_new/banner/201401/20140102_ssqzh_1000x80.jpg" /></a>
</div>
-->
<div class="hd_lottery">
    <div class="hd_lottery_in">
        <ul class="clearfix base_area">
            <li class="logo_box">
                <div class="lottery_hc1_logo"><img src="http://img.cailele.com/img_new/lottery/logo/icon_3d_new.gif" class="logo" /></div>
                <span id="logo"></span>
            </li>
            <li class="info_box">
                <div class="t_area"><h1 class="tit">福彩3D</h1><!--<span class="info">每注2元，最高奖金<span style="color:#2d374b">1000</span>万</span>--></div>
                <div class="divHint_new"><p class="readme"><i class="ico ico_clock"></i>开奖频率：每天一期</p></div>
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
                    <dd><a href="http://zs.cailele.com/3d/chuhaoTrend.php" target="_blank">出号走势图</a></dd>
                    <dd><a href="http://zs.cailele.com/3d/hzTrend.php" target="_blank">和值走势图</a></dd>
                    <dd><a href="http://zs.cailele.com/3d/kdTrend.php" target="_blank">跨度走势图</a></dd>
                    <dd><a href="http://tool.cailele.com/zs/1_7.htm" target="_blank">012路分析图</a></dd>
                    <dd><a href="http://tool.cailele.com/zs/1_65.htm" target="_blank">质合走势图</a></dd>
                </dl>
            </li>
        </ul>
        <div class="clearfix action_area">
            <ul class="clearfix base_tab">
                <!--说明：下面a标签样式award为加奖，new为最新，hot为热门-->
                <li class="betting"><a href="/lottery/3d/"><span>选号投注<i class="ico"></i></span></a></li>
                <li class="join_hm"><a href="http://www.cailele.com/hm/findEntryName.php?lotType=102" target="_blank"><span>参与合买<i class="ico"></i></span></a></li>
                <li class="small lucky"><a href="yutou.shtml" target="_blank"><span>预投合买<i class="ico"></i></span></a></li>
                <!--<li class="small lucky"><a href="http://www.cailele.com/digitalnews/digitalNewsAction.php" target="_blank"><span>数字彩报<i class="ico"></i></span></a></li>-->
                <li class="small yilou"><a href="http://yl.cailele.com/3d/dsMiss.php" target="_blank" ><span>遗漏数据<i class="ico"></i></span></a></li>
                <li class="small yutou"><a href="/shahao/3d/index.shtml" class="hot" target="_blank"><span>专家杀号<i class="ico"></i></span></a></li>
                <li class="small yutou"><a href="http://zs.cailele.com/3d/bdwFollow.php" target="_blank" class="new"><span>出号分析<i class="ico"></i></span></a></li>
                
                <!--<li class="small shrink"><a href="http://tool.cailele.com/tool/ssq_ss.aspx" target="_blank"><span>在线缩水<i class="ico"></i></span></a></li>-->
                <!--<li class="small shahao"><a href="http://www.cailele.com/shahao/ssq/index.shtml" target="_blank"><span>专家杀号<i class="ico"></i></span></a></li>-->
                <!--<li class="small shahao"><a href="/promotion/newYear.php" target="_blank" class="hot"><span>除夕套餐<i class="ico"></i></span></a></li>-->
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

    <!--===========购彩页面主要部分-->
  	<div class="clearfix lottery_main">
    	<!--左右布局页面begin-->
    	<div class="clearfix column_wapper">
    	<!--购彩页面左边部分begin-->
    	<div class="lo_mainer">
        	<!--切换菜单begin-->
        	<div class="lot_tab_box2 prevent">
                <ul class="clearfix lot_tab">
                	<!--说明：下面a标签样式award为加奖，two_award为奖上奖，new为最新，hot为热门-->
                    <li id="zx_menu" class="on" onclick="changeMenu('zx');"><a href="javascript:;"><span class="tit">直选<i class="ico"></i></span></a></li>
                    <li id="zs_menu" onclick="changeMenu('zs');"><a href="javascript:;"><span class="tit">组三<i class="ico"></i></span></a></li>
                    <li id="zl_menu" onclick="changeMenu('zl');"><a href="javascript:;"><span class="tit">组六<i class="ico"></i></span></a></li>
                    <li id="Done_menu" onclick="changeMenu('Done');"><a href="javascript:;"><span class="tit">1D<i class="ico"></i></span></a></li>
                    <li id="Dtwo_menu" onclick="changeMenu('Dtwo');"><a href="javascript:;"><span class="tit">2D<i class="ico"></i></span></a></li>
                    <li id="hs_menu" onclick="changeMenu('hs');"><a href="javascript:;"><span class="tit">和数<i class="ico"></i></span></a></li>
                    <li id="tx_menu" onclick="changeMenu('tx');"><a href="javascript:;"><span class="tit">通选<i class="ico"></i></span></a></li>
                    <li id="bx_menu" onclick="changeMenu('bx');"><a href="javascript:;"><span class="tit">包选<i class="ico"></i></span></a></li>
                    <li id="dx_menu" onclick="changeMenu('dx');"><a href="javascript:;"><span class="tit">大小<i class="ico"></i></span></a></li>
                    <li id="jiou_menu" onclick="changeMenu('jiou');"><a href="javascript:;"><span class="tit">奇偶<i class="ico"></i></span></a></li>
                    <li id="c3t_menu" onclick="changeMenu('c3t');"><a href="javascript:;"><span class="tit">猜三同<i class="ico"></i></span></a></li>
                    <li id="tlj_menu" onclick="changeMenu('tlj');"><a href="javascript:;"><span class="tit">拖拉机<i class="ico"></i></span></a></li>
                    <li id="sg_menu" onclick="changeMenu('sg');"><a href="javascript:;"><span class="tit">手工录入<i class="ico"></i></span></a></li>
					<li id="upload_menu" onclick="changeMenu('upload');"><a href="javascript:;"><span class="tit">单式上传<i class="ico"></i></span></a></li>
					
                   <!-- <li><span class="tit"><strong><a href="yutou.shtml" target="_blank">预投合买</a></strong></span></li>
                    <li ><span class="tit"><strong><a href="/news/list-10001660-1.html" target="_blank">遗漏投注提点</a></strong></span></li>
                    <li >
                    <div style="position:relative; z-index:1002;">
                          <div style="position:absolute; top:-7px; right:10px; z-index:1003;"><img src="http://img.cailele.com/img_new/common/hot_4.gif" /></div>
                    </div>
                     <span class="tit">
                        <strong><a href="/shahao/3d/index.shtml" target="_blank" style="color:#F00;">专家杀号</a></strong>
                     </span>
                    </li>-->
                </ul>
            </div>
            <!--切换菜单end-->
            <div class="lot_step_area">
            	<!--===========不同玩法的切换-->
            	<!--玩法:直选开始 -->
                <div id="zx_Div" >
            	<div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="zxRad" class="lo_radio" name="zx_ra"  checked="checked"   onclick="setPlayType('zx');"/><label for="zxRad" class="txt">标准选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>三位各选1个或多个号码，与开奖全部一致，即中奖1040元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zx_label" style="display:none;"></div>
                                    </div>
                                </div>
                                <input type="radio" id="zxDtRad" class="lo_radio"  name="zx_ra" onclick="setPlayType('zxDt');"/><label for="zxDtRad" class="txt">胆拖投注</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>选1-2个胆码，多个拖码，胆码对，剩下的开奖数字全部包含在拖码中，即中奖1040元，胆拖投注不包含组三和豹子。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zxDt_label" style="display:none;"></div>
                                    </div>
                                </div>
                                <input type="radio" id="zxKdRad" class="lo_radio" name="zx_ra" onclick="setPlayType('zxKd');"/><label for="zxKdRad" class="txt">跨度选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>所选和值与开奖号码和值一致，即中奖1040元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zxKd_label" style="display:none;"></div>
                                    </div>
                                </div>
                                <input type="radio" id="zxHzRad" class="lo_radio" name="zx_ra" onclick="setPlayType('zxHz');" /><label for="zxHzRad" class="txt">和值选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>所选和值与开奖号码和值一致，即中奖1040元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zxHz_label" style="display:none;"></div>
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
                                 <!--===========直选标准选号 begin===========-->
                                 <div id="zx_playTypeDiv" >
                                	<dl class="ball_box"  >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">百位</h6>
                                                <ul id="zx1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('1','clear');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zx_miss_1" class="omit">
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
                                                <div id="qsZx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">11</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">12</div>
                                                    <div class="yl1" >13</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">2</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">5</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">十位</h6>
                                                <ul id="zx2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('2','all');">全</li>
                                                    <li class="ass" onclick="selectRow('2','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('2','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('2','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('2','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('2','clear');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zx_miss_2" class="omit">
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
                                                <div id="qsZx_zxlr_2" class="omit"  style="display: none">
                                                    <div class="yl1">11</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">12</div>
                                                    <div class="yl1" >13</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">2</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">5</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">个位</h6>
                                                <ul id="zx3" class="balls">
                                                    <li class="li2" onclick="selectNum(this,3,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('3','all');">全</li>
                                                    <li class="ass" onclick="selectRow('3','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('3','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('3','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('3','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('3','clear');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zx_miss_3" class="omit">
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
                                                <div id="qsZx_zxlr_3" class="omit" style="display: none">
                                                    <div class="yl1">11</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">12</div>
                                                    <div class="yl1" >13</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">2</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">5</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                  <!--===========直选标准选号 end===========-->

                                  <!--===========直选和值选号 begin===========-->
                                  <div id="zxHz_playTypeDiv" style="display:none">
                                	<dl class="ball_box">
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">和值数</h6>
                                                <ul id="zxHz1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'10')"><i>10</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'11')"><i>11</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'12')"><i>12</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'13')"><i>13</i></li>
                                                </ul>
                                                
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	当前遗漏
                                                    </span>
                                                </h6>
                                                <div id="zxHz_miss_1" class="omit">
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
                                                 <div id="qeZx_zxlr_1" class="omit" style="display: none" >
                                                    <div class="yl1">12</div>
                                                    <div class="yl1">13</div>
                                                    <div class="yl1">11</div>
                                                    <div class="yl1" >10</div>
                                                    <div class="yl1">01</div>
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">6</div>
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">7</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">和值数</h6>
                                                <ul id="zxHz2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'14')"><i>14</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'15')"><i>15</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'16')"><i>16</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'17')"><i>17</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'18')"><i>18</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'19')"><i>19</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'20')"><i>20</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'21')"><i>21</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'22')"><i>22</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'23')"><i>23</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'24')"><i>24</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'25')"><i>25</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'26')"><i>26</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'27')"><i>27</i></li>
                                                </ul>
                                            
                                            </div>
                                             <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	当前遗漏
                                                    </span>
                                                </h6>
                                                <div id="zxHz_miss_2" class="omit">
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
                                                 <div id="qeZx_zxlr_1" class="omit" style="display: none" >
                                                    <div class="yl1">12</div>
                                                    <div class="yl1">13</div>
                                                    <div class="yl1">11</div>
                                                    <div class="yl1" >10</div>
                                                    <div class="yl1">01</div>
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">6</div>
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">7</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl> 
                                    </div>     
                                 <!--===========直选和值选号end===========-->
                                 
                                 <!--直选胆拖开始 -->
                                 <div id="zxDt_playTypeDiv" style="display:none">
                                   <dl class="ball_box">
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">胆 码</h6>
                                                <ul id="zxDt1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>

                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zxDt_miss_1" class="omit">
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
                                                <div id="qsZx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                       
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">拖 码</h6>
                                                <ul id="zxDt1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>

                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class=" drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zxDt_miss_2" class="omit">
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
                                                <div id="qsZx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                        </dd>
                                     </dl>
                                     </div>
                                 <!--直选胆拖结束 --> 
                                               
                                 <!--直选跨度开始 --> 
                                 <div id="zxKd_playTypeDiv" style="display:none">
                                    <dl class="ball_box">
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">跨度</h6>
                                                <ul id="zxKd1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>

                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zxKd_miss_1" class="omit">
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
                                                <div id="qsZx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                         </dd>
                                        </dl>
                                  </div>
                                 <!--直选跨度结束 -->
                                
                              	</div>  
                            </div>
                        </div>
                    </div>
                </div>
              </div>
              <!--===========玩法:直选结束===========-->
                
                
                
               <!--===========玩法:组 三开始===========-->
                <div id="zs_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="zhuxuanRad" class="lo_radio" name="zs_ra" checked="checked" onclick="setPlayType('zhuxuan');"/><label for="zhuxuanRad" class="txt">标准选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>3个数字有两个数字相同，与中奖号码相同即中奖，奖金346元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zhuxuan_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                <input type="radio" id="zsRad" name="zs_ra" class="lo_radio" onclick="setPlayType('zs');" /><label for="zsRad" class="txt">包号选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>3个数字有两个数字相同，与中奖号码相同即中奖，奖金346元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zs_label" style="display:none;"></div>
                                    </div>
                                </div>
                                <input type="radio" id="zsHzRad" name="zs_ra" class="lo_radio" onclick="setPlayType('zsHz');" /><label for="zsHzRad" class="txt">和值选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>请从1－26中选择组选三和值，单注奖金346元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zsHz_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                            </div>
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
                                
                                	<!--===========组三标准选号 begin===========-->
                                	<div id="zhuxuan_playTypeDiv" style="display:none;">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">百位</h6>
                                                <ul id="zhuxuan1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('1','clear');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zhuxuan_miss_1" class="omit">
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
                                                <div id="qsZx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">十位</h6>
                                                <ul id="zhuxuan2" class="balls">
                                                    <li class="li2" ><i>0</i></li>
                                                    <li class="li2" ><i>1</i></li>
                                                    <li class="li2" ><i>2</i></li>
                                                    <li class="li2" ><i>3</i></li>
                                                    <li class="li2" ><i>4</i></li>
                                                    <li class="li2" ><i>5</i></li>
                                                    <li class="li2" ><i>6</i></li>
                                                    <li class="li2" ><i>7</i></li>
                                                    <li class="li2" ><i>8</i></li>
                                                    <li class="li2" ><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',5);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('1','clear');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zhuxuan_miss_2" class="omit">
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
                                                <div id="qsZx_zxlr_2" class="omit"  style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">个位</h6>
                                                <ul id="zhuxuan3" class="balls">
                                                    <li class="li2" onclick="selectNum(this,3,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('3','all');">全</li>
                                                    <li class="ass" onclick="selectRow('3','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('3','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('3','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('3','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('3','clear');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zhuxuan_miss_3" class="omit">
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
                                                <div id="qsZx_zxlr_3" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========组三标准选号 end===========-->
                                    
                                    <!--===========组三包号选号 begin===========-->
                                    <div id="zs_playTypeDiv" style="display:none">
                                      <dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">号码</h6>
                                                <ul id="zs1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>

                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zs_miss_1" class="omit">
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
                                                <div id="zs_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                         </dd>
                                        </dl>
                                        </div>
                                    <!--===========组三包号选号 end===========-->
                                    
                                    <!--===========组三和值选号 begin===========-->  
                                    <div  id="zsHz_playTypeDiv" style="display:none">  
								     	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">和值数</h6>
                                                <ul id="zsHz1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'10')"><i>10</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'11')"><i>11</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'12')"><i>12</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'13')"><i>13</i></li>
                                                </ul>
                                                
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	当前遗漏
                                                    </span>
                                                </h6>
                                                <div id="zusHz_miss_1" class="omit">
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
                                                 <div id="qeZx_zxlr_1" class="omit" style="display: none" >
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1" >9</div>
                                                    <div class="yl1">2</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">11</div>
                                                    <div class="yl1">02</div>
                                                    <div class="yl1">15</div>
                                                    <div class="yl1">47</div>
                                                    <div class="yl1">01</div>
                                                    <div class="yl1">8</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">和值数</h6>
                                                <ul id="zsHz2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'14')"><i>14</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'15')"><i>15</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'16')"><i>16</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'17')"><i>17</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'18')"><i>18</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'19')"><i>19</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'20')"><i>20</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'21')"><i>21</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'22')"><i>22</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'23')"><i>23</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'24')"><i>24</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'25')"><i>25</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'26')"><i>26</i></li>
                                                </ul>
                                            
                                            </div>
                                             <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	当前遗漏
                                                    </span>
                                                </h6>
                                                <div id="zusHz_miss_2" class="omit">
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
                                                 <div id="qeZx_zxlr_1" class="omit" style="display: none" >
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1" >9</div>
                                                    <div class="yl1">2</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">11</div>
                                                    <div class="yl1">02</div>
                                                    <div class="yl1">15</div>
                                                    <div class="yl1">47</div>
                                                    <div class="yl1">01</div>
                                                    <div class="yl1">8</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>  
                                    </div>    
                                    <!--===========组三和值选号 end===========--> 
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:组 三结束===========-->

               <!--===========玩法:组 六开始===========-->
                <div id="zl_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="zlRad" class="lo_radio" name="zl_ra" checked="checked" onclick="setPlayType('zl');"/><label for="zlRad" class="txt">包号选号</label>    
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>3个数字各不相同，与中奖号码相同即中奖，奖金173元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zl_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                <input type="radio" id="zlHzRad" class="lo_radio" name="zl_ra"  onclick="setPlayType('zlHz');"/><label for="zlHzRad" class="txt">和值选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>请从3－24中选择组选六和值，单注奖金173元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zlHz_label" style="display:none;"></div>
                                    </div>
                                </div>
                                <input type="radio" id="zlDtRad" class="lo_radio" name="zl_ra" onclick="setPlayType('zlDt');" /><label for="zlDtRad" class="txt">胆拖选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>选1-2个胆码，多个拖码，开奖号码为组六，胆码对，剩下的开奖数字全部包含在拖码中，即中奖173元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zlDt_label" style="display:none;"></div>
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
                        	<div class="clearfix lot_ball">
                            	<div class="lot_ball_in">
                                
                                	<!--===========组六包号选号 begin===========-->
                                	 <dl id="zl_playTypeDiv" class="ball_box" style="display:none;"  >
                                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">号码</h6>
                                                <ul id="zl1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>

                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zl_miss_1" class="omit">
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
                                                <div id="qsZx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1" >12</div>
                                                    <div class="yl1">48</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">9</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">1</div>
                                                </div>
                                            </div>
                                         </dd>
                                        </dl>
                                    <!--===========组六包号选号 end===========-->
                                    
                                    
                                    <!--===========组六和值选号 begin===========-->
                                     <dl id="zlHz_playTypeDiv" class="ball_box" style="display:none;" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">和值数</h6>
                                                <ul id="zlHz1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'10')"><i>10</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'11')"><i>11</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'12')"><i>12</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'13')"><i>13</i></li>
                                                </ul>
                                                
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	当前遗漏
                                                    </span>
                                                </h6>
                                                <div id="zulHz_miss_1" class="omit">
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
                                                 <div id="qeZx_zxlr_1" class="omit" style="display: none" >
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1" >12</div>
                                                    <div class="yl1">48</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">9</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">1</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">和值数</h6>
                                                <ul id="zlHz2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'14')"><i>14</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'15')"><i>15</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'16')"><i>16</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'17')"><i>17</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'18')"><i>18</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'19')"><i>19</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'20')"><i>20</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'21')"><i>21</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'22')"><i>22</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'23')"><i>23</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'24')"><i>24</i></li>
                                                </ul>
                                            
                                            </div>
                                             <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	当前遗漏
                                                    </span>
                                                </h6>
                                                <div id="zulHz_miss_2" class="omit">
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
                                                 <div id="qeZx_zxlr_1" class="omit" style="display: none" >
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >8</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">2</div>
                                                    <div class="yl1">2</div>
                                                    <div class="yl1">0</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>      
                                    <!--===========组六和值选号 end===========-->
                                    
                                    
                                    <!--===========组六胆拖选号 begin===========-->
                                     <dl id="zlDt_playTypeDiv" class="ball_box" style="display:none;" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">胆 码</h6>
                                                <ul id="zlDt1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>

                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zlDt_miss_1" class="omit">
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
                                                <div id="qsZx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">55</div>
                                                    <div class="yl1" >41</div>
                                                    <div class="yl1">78</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">9</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">6</div>
                                                </div>
                                            </div>
                                       
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">拖 码</h6>
                                                <ul id="zlDt2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>

                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class=" drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zlDt_miss_2" class="omit">
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
                                                <div id="qsZx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">55</div>
                                                    <div class="yl1" >41</div>
                                                    <div class="yl1">78</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1">9</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">6</div>
                                                </div>
                                            </div>
                                        </dd>
                                     </dl>
                                    <!--===========组六胆拖选号 end===========-->
                                   
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--玩法:组 六结束 -->


               <!--===========玩法:1D开始===========-->
                <div id="Done_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="d1Rad" class="lo_radio" name="1d_ra" checked="checked" onclick="setPlayType('1d');"/><label for="d1Rad" class="txt">1D投注</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>投注号码与开奖号码中对应位置的号码相同即中奖，单注奖金：10元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="1d_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                <input type="radio" id="c1dRad" name="1d_ra" class="lo_radio" onclick="setPlayType('c1d');" /><label for="c1dRad" class="txt">猜1D投注</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>投注号码与任意一个位置号码相同中2元；与任意两个位置号码相同中12元；与全部三个位置号码相同则中230元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="c1d_label" style="display:none;"></div>
                                    </div>
                                </div>

                            </div>
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
                                
                                	<!--===========1D投注选号begin===========-->
                                	<div id="1d_playTypeDiv" style="display:none">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">百位</h6>
                                                <ul id="1d1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow2('1','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="1d_miss_1" class="omit">
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
                                                <div id="1d_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">十位</h6>
                                                <ul id="1d2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('2','all');">全</li>
                                                    <li class="ass" onclick="selectRow('2','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('2','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('2','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('2','even');">偶</li>
                                                    <li class="ass" onclick="selectRow2('2','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="1d_miss_2" class="omit">
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
                                                <div id="1d_zxlr_2" class="omit"  style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">个位</h6>
                                                <ul id="1d3" class="balls">
                                                    <li class="li2" onclick="selectNum(this,3,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('3','all');">全</li>
                                                    <li class="ass" onclick="selectRow('3','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('3','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('3','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('3','even');">偶</li>
                                                    <li class="ass" onclick="selectRow2('3','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="1d_miss_3" class="omit">
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
                                                <div id="1d_zxlr_3" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========1D投注选号 end===========-->
                                    
                                    <!--===========猜1D投注选号 begin===========-->
                                    <div id="c1d_playTypeDiv" style="display:none">
                                      <dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">号码</h6>
                                                <ul id="c1d1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
												<ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('1','clear');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="c1d_miss_1" class="omit">
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
                                                <div id="c1d_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                         </dd>
                                        </dl>
                                        </div>
                                    <!--===========猜1D投注选号end===========-->  
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:1D结束===========-->

               <!--===========玩法:2D开始===========-->
                <div id="Dtwo_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="2dRad" class="lo_radio" name="2d_ra" checked="checked" onclick="setPlayType('2d');"/><label for="2dRad" class="txt">2D投注</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>投注号码与开奖号码中对应两个位置的号码按位相同，即中奖，单注奖金：104元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="2d_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                <input type="radio" id="c2dRad" name="2d_ra" class="lo_radio" onclick="setPlayType('c2d');" /><label for="c2dRad" class="txt">猜2D</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>投注号码为两个相同的号码，若开奖号码中包含投注的两个相同号码，即中奖，单注奖金：37元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                    						   投注号码为两个不同的号码，若开奖号码中包含投注的两个不同号码(顺序不限)，即中奖，单注奖金19元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="c2d_label" style="display:none;"></div>
                                    </div>
                                </div>
                                <!-- 
                                <input type="radio" id="c2dtRad" name="2d_ra" class="lo_radio" onclick="setPlayType('2d');" /><label for="c2dtRad" class="txt">猜2D两不同号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>投注号码为两个不同的号码，若开奖号码中包含投注的两个不同号码(顺序不限)，即中奖，单注奖金19元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="2dbth_label" style="display:none;"></div>
                                    </div>
                                </div>
                                 -->
                            </div>
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
                                
                                	<!--===========2D标准选号 begin===========-->
                                	<div id="2d_playTypeDiv" style="display:none;">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">百位</h6>
                                                <ul id="2d1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow2('1','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="2d_miss_1" class="omit">
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
                                                <div id="2d_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">十位</h6>
                                                <ul id="2d2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('2','all');">全</li>
                                                    <li class="ass" onclick="selectRow('2','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('2','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('2','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('2','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('2','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="2d_miss_2" class="omit">
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
                                                <div id="2d_zxlr_2" class="omit"  style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">个位</h6>
                                                <ul id="2d3" class="balls">
                                                    <li class="li2" onclick="selectNum(this,3,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('3','all');">全</li>
                                                    <li class="ass" onclick="selectRow('3','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('3','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('3','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('3','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('3','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="2d_miss_3" class="omit">
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
                                                <div id="2d_zxlr_3" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========2D标准选号 end===========-->
                                    
                                    <!--===========2D同号选号 begin===========-->
                                    <div id="c2d_playTypeDiv" style="display:none">
                                      <dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">号码1</h6>
                                                <ul id="c2d1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
												<ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('1','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="c2d_miss_1" class="omit">
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
                                                <div id="c2d_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">号码2</h6>
                                                <ul id="c2d2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>
												<ul class="assist">
                                                    <li class="ass" onclick="selectRow('2','all');">全</li>
                                                    <li class="ass" onclick="selectRow('2','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('2','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('2','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('2','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('2','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="c2d_miss_2" class="omit">
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
                                                <div id="c2d_zxlr_2" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                         </dd>
                                        </dl>
                                     </div>
                                    <!--===========2D同号选号 end===========-->
                                    
                                    <!--===========2D不同选号 begin=========== 
                                    <div  id="2dbth_playTypeDiv">  
								     	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">两不同号</h6>
                                                <ul id="qeZx1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'01')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'02')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'03')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'04')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'05')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'06')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'07')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'08')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'09')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'10')"><i>9</i></li>
                                                </ul>
                                                
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">遗漏</span>
                                                </h6>
                                                <div id="qeZx_miss_1" class="omit">
                                                    <div class="yl1">4</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1">8</div>
                                                    <div class="yl1" >9</div>
                                                    <div class="yl1">2</div>
                                                    <div class="yl1">1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">11</div>
                                                    <div class="yl1">02</div>
                                                    <div class="yl1">15</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>  
                                    </div>    
                                    ===========2D不同选号 end===========--> 
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:2D结束===========-->
                
               <!--===========玩法:和值开始===========-->
                <div id="hs_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="hsRad" class="lo_radio" name="hz_ra" checked="checked" onclick="setPlayType('hs');"/><label for="hsRad" class="txt">标注选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>指对三个号码相加之和进行投注，若开奖号码和值与投注和值一致即中奖，获得对应的奖金。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="hs_label" style="display:none;"></div>
                                    </div>
                                </div>

                            </div>
                            <!--<table class="probability">
                                    <thead>
                                        <tr>
                                            <th>和值</th>
                                            <th>0或27</th>
                                            <th>1或26</th>
                                            <th>2或25</th>
                                            <th>3或24</th>
                                            <th>4或23</th>
                                            <th>5或22</th>
                                            <th>6或21</th>
                                            <th>7或20</th>
                                            <th>8或19</th>
                                            <th>9或18</th>
                                            <th>10或17</th>
                                            <th>11或16</th>
                                            <th>12或15</th>
                                            <th>13或14</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>奖金</th>
                                            <td>1040</td>
                                            <td>345</td>
                                            <td>172</td>
                                            <td>104</td>
                                            <td>69</td>
                                            <td>49</td>
                                            <td>37</td>
                                            <td>29</td>
                                            <td>23</td>
                                            <td>19</td>
                                            <td>16</td>
                                            <td>15</td>
                                            <td>15</td>
                                            <td>14</td>
                                        </tr>
                                    </tbody>
                              </table>-->
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
                                    
                                    <!--===========和值标注选号 begin===========-->  
                                    <div  id="zsHz_playTypeDiv">  
								     	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">和值数</h6>
                                                <ul id="hz1" class="balls">
                                                	<li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'10')"><i>10</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'11')"><i>11</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'12')"><i>12</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'13')"><i>13</i></li>
                                                </ul>
                                                
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	当前遗漏
                                                    </span>
                                                </h6>
                                                <div id="hs_miss_1" class="omit">
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
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	固定奖金
                                                    </span>
                                                </h6>
                                                <div id="hs_award_1" class="omit">
                                                    <div class="yl1">1040</div>
                                                    <div class="yl1">345</div>
                                                    <div class="yl1">172</div>
                                                    <div class="yl1">104</div>
                                                    <div class="yl1">69</div>
                                                    <div class="yl1">49</div>
                                                    <div class="yl1">37</div>
                                                    <div class="yl1">29</div>
                                                    <div class="yl1">23</div>
                                                    <div class="yl1">19</div>
                                                    <div class="yl1">16</div>
                                                    <div class="yl1">15</div>
                                                    <div class="yl1">15</div>
                                                    <div class="yl1">14</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">和值数</h6>
                                                <ul id="hs2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'14')"><i>14</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'15')"><i>15</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'16')"><i>16</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'17')"><i>17</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'18')"><i>18</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'19')"><i>19</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'20')"><i>20</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'21')"><i>21</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'22')"><i>22</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'23')"><i>23</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'24')"><i>24</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'25')"><i>25</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'26')"><i>26</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'27')"><i>27</i></li>
                                                </ul>
                                            
                                            </div>
                                             <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	当前遗漏
                                                    </span>
                                                </h6>
                                                <div id="hs_miss_2" class="omit">
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
                                             <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	固定奖金
                                                    </span>
                                                </h6>
                                                <div id="hs_award_2" class="omit">
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">15</div>
                                                    <div class="yl1">15</div>
                                                    <div class="yl1">16</div>
                                                    <div class="yl1">19</div>
                                                    <div class="yl1">23</div>
                                                    <div class="yl1">29</div>
                                                    <div class="yl1">37</div>
                                                    <div class="yl1">49</div>
                                                    <div class="yl1">69</div>
                                                    <div class="yl1">104</div>
                                                    <div class="yl1">172</div>
                                                    <div class="yl1">345</div>
                                                    <div class="yl1">1040</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>  
                                    </div>    
                                    <!--===========和值标准选号 end===========--> 
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:和值结束===========-->                

               <!--===========玩法:通选开始===========-->
                <div id="tx_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="tongxuanRad" class="lo_radio" name="tx_ra" checked="checked" onclick="setPlayType('tx');"/><label for="tongxuanRad" class="txt">标注选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>投注号码与开奖号码按位全部相同，中奖470元；如只有两个位置号码按位相同，则中奖21元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="tx_label" style="display:none;"></div>
                                    </div>
                                </div>

                            </div>
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
                                    
                                	<!--===========通选标准选号 begin===========-->
                                	<div id="zhuxuan_playTypeDiv">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">百位</h6>
                                                <ul id="tx1" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('1','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="tx_miss_1" class="omit">
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
                                                <div id="tx_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">十位</h6>
                                                <ul id="tx2" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('2','all');">全</li>
                                                    <li class="ass" onclick="selectRow('2','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('2','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('2','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('2','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('2','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="tx_miss_2" class="omit">
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
                                                <div id="tx_zxlr_2" class="omit"  style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">个位</h6>
                                                <ul id="tx3" class="balls">
                                                    <li class="li2" onclick="selectNum(this,3,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('3','all');">全</li>
                                                    <li class="ass" onclick="selectRow('3','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('3','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('3','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('3','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('3','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="tx_miss_3" class="omit">
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
                                                <div id="tx_zxlr_3" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========通选标准选号 end===========---> 
                                                                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:通选结束===========-->                    

               <!--===========玩法:包选开始===========-->
                <div id="bx_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="bx3Rad" class="lo_radio" name="bx_ra" checked="checked" onclick="setPlayType('bx3');"/><label for="bx3Rad" class="txt">包选三</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>如开奖号有两个号码相同且投注的号码按位全中，即中奖693元；若投注号与开奖号相同但顺序不同，则中奖173元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="bx3_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                <input type="radio" id="bx6Rad" name="bx_ra" class="lo_radio" onclick="setPlayType('bx6');" /><label for="bx6Rad" class="txt">包选六</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>如三个开奖号各不相同且投注的号码按位全中，即中奖606元；若投注号与开奖号相同但顺序不同，则中奖86元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="bx6_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                            </div>
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
                                
                                	<!--===========包选组三begin===========-->
                                	<div id="bx3_playTypeDiv">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">百位</h6>
                                                <ul id="bx31" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('1','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="bx3_miss_1" class="omit">
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
                                                <div id="bx3_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">十位</h6>
                                                <ul id="bx32" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('2','all');">全</li>
                                                    <li class="ass" onclick="selectRow('2','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('2','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('2','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('2','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('2','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="bx3_miss_2" class="omit">
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
                                                <div id="bx3_zxlr_2" class="omit"  style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">个位</h6>
                                                <ul id="bx33" class="balls">
                                                    <li class="li2" onclick="selectNum(this,3,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('3','all');">全</li>
                                                    <li class="ass" onclick="selectRow('3','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('3','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('3','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('3','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('3','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="bx3_miss_3" class="omit">
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
                                                <div id="bx3_zxlr_3" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========包选组三选号 end===========-->
                                    
                                	<!--===========包选组六选号begin===========-->
                                	<div id="bx6_playTypeDiv" style="display:none;">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">百位</h6>
                                                <ul id="bx61" class="balls">
                                                    <li class="li2" onclick="selectNum(this,1,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('1','all');">全</li>
                                                    <li class="ass" onclick="selectRow('1','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('1','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('1','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('1','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('1','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="bx6_miss_1" class="omit">
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
                                                <div id="bx6_zxlr_1" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">十位</h6>
                                                <ul id="bx62" class="balls">
                                                    <li class="li2" onclick="selectNum(this,2,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,1,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,2,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('2','all');">全</li>
                                                    <li class="ass" onclick="selectRow('2','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('2','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('2','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('2','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('2','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="bx6_miss_2" class="omit">
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
                                                <div id="bx6_zxlr_2" class="omit"  style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                            <div class="regional ball_regional">
                                            	<h6 class="tit">个位</h6>
                                                <ul id="bx63" class="balls">
                                                    <li class="li2" onclick="selectNum(this,3,'0')"><i>0</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'1')"><i>1</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'2')"><i>2</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'3')"><i>3</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'4')"><i>4</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'5')"><i>5</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'6')"><i>6</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'7')"><i>7</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'8')"><i>8</i></li>
                                                    <li class="li2" onclick="selectNum(this,3,'9')"><i>9</i></li>
                                                </ul>
                                                <ul class="assist">
                                                    <li class="ass" onclick="selectRow('3','all');">全</li>
                                                    <li class="ass" onclick="selectRow('3','big',5);">大</li>
                                                    <li class="ass" onclick="selectRow('3','small',4);">小</li>
                                                    <li class="ass" onclick="selectRow('3','odd');">奇</li>
                                                    <li class="ass" onclick="selectRow('3','even');">偶</li>
                                                    <li class="ass" onclick="selectRow('3','clear',0,0,'li');">清</li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="bx6_miss_3" class="omit">
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
                                                <div id="bx6_zxlr_3" class="omit" style="display: none">
                                                    <div class="yl1">04</div>
                                                    <div class="yl1">5</div>
                                                    <div class="yl1">7</div>
                                                    <div class="yl1" >1</div>
                                                    <div class="yl1">0</div>
                                                    <div class="yl1">3</div>
                                                    <div class="yl1">44</div>
                                                    <div class="yl1">10</div>
                                                    <div class="yl1">14</div>
                                                    <div class="yl1">05</div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========包选组六选 end===========-->                                  
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:包选结束===========-->

               <!--===========玩法:大小开始===========-->
                <div id="dx_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="dxRad" class="lo_radio" name="dx_ra" checked="checked" onclick="setPlayType('dx');"/><label for="dxRad" class="txt">标准选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>投注号码与当期开奖号码的三个号码相加之和的大、小性质相同，即中奖，单注奖金6元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="dx_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                
                            </div>
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
                                
                                	<!--===========大小投注样式begin===========-->
                                	<div id="dx_playTypeDiv">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                                <ul id="dx" class="card">
                                                    <li class="li2" onclick="selectNum(this,1,'大')">
                                                    	<p class="animal">大</p>
                                                        <p class="yl2">（和值19-27）</p>
                                                       
                                                        <p>
                                                            <span class="mission">遗漏：</span>
                                                            <span id="zhdx_miss1"></span>
                                                        </p>
                                                    </li>
                                                    <li class="li2" onclick="selectNum(this,1,'小')">
                                                    	<p class="animal">小</p>
                                                        <p class="yl2">（和值0-8）</p>
                                                        
                                                        <p>
                                                            <span class="mission">遗漏：</span>
                                                            <span id="zhdx_miss2"></span>
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========大小投注样式end===========--> 
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:大小结束===========-->

               <!--===========玩法:奇偶开始===========-->
                <div id="jiou_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="jiouRad" class="lo_radio" name="jiou_ra" checked="checked" onclick="setPlayType('jiou');"/><label for="jiouRad" class="txt">标准选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>当期开奖号码的三个号码全部为奇数或偶数，且投注号码与开奖号的奇数、偶数性质相同，即中奖，单注奖金：8元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="jiou_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                
                            </div>
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
                                
                                	<!--===========奇偶投注样式begin===========-->
                                	<div id="jiou_playTypeDiv">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                                <ul id="joZx1" class="card">
                                                    <li class="li2" onclick="selectNum(this,1,'奇')">
                                                    	<p class="animal">奇</p>
                                                        <p class="yl2">（开奖号全为奇数）</p>
                                                        <p>
                                                            <span class="mission">遗漏：</span>
                                                            <span id="zhjo_miss1"></span>
                                                        </p>
                                                    </li>
                                                    <li class="li2" onclick="selectNum(this,1,'偶')">
                                                    	<p class="animal">偶</p>
                                                        <p class="yl2">（开奖号全为偶数）</p>
                                                        <p>
                                                            <span class="mission">遗漏：</span>
                                                            <span id="zhjo_miss2"></span>
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========奇偶投注样式end===========--> 
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:奇偶结束===========-->                
 
               <!--===========玩法:三同号开始===========-->
                <div id="c3t_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="c3tRad" class="lo_radio" name="c3t_ra" checked="checked" onclick="setPlayType('c3t');"/><label for="zhuxuanRad" class="txt">标准选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>只要当期开奖号码为三个相同的号码，即中奖，单注奖金：104元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="c3t_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                
                            </div>
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
                                
                                	<!--===========三同号投注样式begin===========-->
                                	<div id="zhuxuan_playTypeDiv">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">同号</h6>
                                                <ul id="c3tZx1" class="hyphen">
                                                    <li class="li2" onclick="selectNum(this,1,'猜三同')">
                                                    	<p>（000，111，222，333，444，555，666，777，888，999）</p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div id="zhsth_miss1"  style="text-align: center ;width: 596px " class="omit">                                        
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========三同号投注样式end===========--> 
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:三同号结束===========--> 

               <!--===========玩法:拖拉机开始===========-->
                <div id="tlj_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="tljRad" class="lo_radio" name="tlj_ra" checked="checked" onclick="setPlayType('tlj');"/><label for="tljRad" class="txt">标准选号</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>要当期开奖号码的三个号码为以升序或降序连续排列的号码(890、098、901、109除外)，即中奖单注奖金：65元。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="tlj_label" style="display:none;"></div>
                                    </div>
                                </div>   
                            </div>
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
                                
                                	<!--===========拖拉机投注样式begin===========-->
                                	<div id="tlj_playTypeDiv">
                                	<dl class="ball_box" >
                                        <dd class="bd">
                                        	<div class="regional ball_regional">
                                            	<h6 class="tit">号码</h6>
                                                <ul id="tljZx1" class="hyphen">
                                                    <li class="li2" onclick="selectNum(this,1,'拖拉机')">
                                                    	<p>（012，123，234，345，456，567，678，789）</p>
                                                        <p>（987，876，765，654，543，432，321，210）</p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="regional ball_omit">
                                            	<h6 class="tit"> 
                                                	<span class="drop_downn">
                                                    	遗漏
                                                    </span>
                                                </h6>
                                                <div  class="omit">
                                                    <div id="zhtlj_miss1" style="text-align: center"></div>                                                
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    </div>
                                    <!--===========拖拉机投注样式end===========--> 
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--===========玩法:拖拉机结束===========-->
                
   
                <!--===========玩法:手工录入开始===========-->
                <div id="sg_Div" style="display:none;" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="sgRad" class="lo_radio" name="sg_ra" checked="checked"  onclick="setPlayType('glzx');"/><label for="sgRad" class="txt">直选单式</label>    
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>用软件做单方案格式要与下面一致，可用text里面的替换功能使格式与本站格式一致。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="glzx_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                <input type="radio" id="sgzxRad" class="lo_radio"  name="sg_ra"   onclick="setPlayType('glzhux');"/><label for="sgzxRad" class="txt">组选单式</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>用软件做单方案格式要与下面一致，可用text里面的替换功能使格式与本站格式一致。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="glzhux_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                
               <div id="sg_playTypeDiv" class="step_box step_select">
                	<div class="step_tit">
                    	<h5 class="tit">第二步</h5>
                        <span class="info">选择号码</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="clearfix lot_ball dt_style">
                            	<div class="lot_ball_in">
                                	<!--===========手工录入直选单式 begin===========-->
                                	<div  id="glzx_playTypeDiv" class="clearfix handwork martop"  style="display:none;"  >
                                        <div class="hw_right marright">
                                            <textarea id="glzx_cText" name="cText" rows="7" cols="50" onblur="showSelectInfo();"></textarea>
                                        </div>
                                        <div class="remind">
                                            <p>请将文件的内容粘贴到</p>
                                            <p>文本框里,号码格式为：</p>
                                            <p>668</p>
                                            <p>123</p>
                                            <p>111</p>
                                        </div>
        
                                    </div>
                                    <!--===========手工录入直选单式 end===========-->
                                    
                                    
                                    <!--===========手工录入组选单式 begin===========-->
                                	<div  id="glzhux_playTypeDiv" class="clearfix handwork martop"  style="display:none;" >
                                        <div class="hw_right marright">
                                            <textarea id="glzhux_cText" name="cText" rows="7" cols="50" onblur="showSelectInfo();"></textarea>
                                        </div>
                                        <div class="remind">
                                            <p>请将文件的内容粘贴到</p>
                                            <p>文本框里,号码格式为：</p>
                                            <p>668</p>
                                            <p>123</p>
                                            <p>112</p>
                                            <p>(不可包含豹子如：000)</p>
                                        </div>
                                    </div>
                                    <!--===========手工录入组选单式 end===========-->
                                    

                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--玩法:手工录入结束 -->
                
               <!--===========玩法:单式上传开始===========-->
                <div id="upload_Div" style="display:none" >
                <div class="step_box step_mode">
                	<div class="step_tit">
                    	<h5 class="tit">第一步</h5>
                        <!--<span class="info">选择投注方式</span>-->
                    </div>
                   <div class="step_main">
                    	<div class="step_main_in">
                            <div class="sel_play">
                                <input type="radio" id="fzhixRad" class="lo_radio"  name="ds_ra" checked="checked" onclick="setPlayType('zhixdsUpload');"/><label for="fzhixRad" class="txt">直选单式</label>    
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>用软件做单方案格式要与下面一致，可用text里面的替换功能使格式与本站格式一致。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zhixdsUpload_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
                                <input type="radio" id="fzuxRad" class="lo_radio" name="ds_ra" onclick="setPlayType('zuxdsUpload');"/><label for="fzuxRad" class="txt">组选单式</label>
                                <div class="summary" onmouseover="this.className='summary s_hover'" onmouseout="this.className='summary s_def'">
                                	<a href="javascript:;" class="sel"><i></i></a>
                                    <div class="present_box">
                                    	<div class="t_top_line"><span class="t_top"></span></div>
                                        <div class="intro_line">
                                    		<em>[玩法介绍]：</em>用软件做单方案格式要与下面一致，可用text里面的替换功能使格式与本站格式一致。<a href="/rule/rule12.shtml" class="li0" target="_blank">详细介绍</a>
                                        </div>
                                        <div id="zuxdsUpload_label" style="display:none;"></div>
                                    </div>
                                </div>
                                
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
                        	<div class="prompt">请严格参照<a href="/lottery/3d/dsUpload.txt" target="_blank">标准格式样式</a>上传方案，否则网站不保证为您做过关统计以及历史战绩统计！</div>
                        	<div class="clearfix handwork">
                                <dl class="upload_readme">
                                <dt><em>特别提醒:</em></dt>
                                <dd>
                                    <ul class="readme_list">
                                        <li>1、文件格式必须是文本的，文本文字须一行一注；</li>
                                        <li>2、每行3个号码，号码与号码之间不需要分隔符号，如123；</li>
                                        <li>3、注意不要有序号，若有不解，请参照<a href="/lottery/3d/dsUpload.txt" target="_blank">标准格式样本；</a></li>
                                        <li>4、由于上传的文件较大，会导致上传时间及在本页停留时间较长，请耐心等待。</li>
                                    </ul>
                                </dd>
                            	</dl>
	                            <div class="upload_area">
	                                <form action="/trade/dsUpload.php" method="post" enctype="multipart/form-data"  name="uploadForm" target="singleFrame" onsubmit="return checkUpload();">
	                                    <input type="hidden" name="lotteryType" value="102" />
	                                    <input type="hidden" name="playTypeDs" value="29006" id="playTypeDs"/>
	                                    
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
                <!--玩法:单式上传结 --> 
                <!--计算器begin-->
                <div id="indicator" class="indi_box">
                   <div class="indicator"><span id="cbgs">您选了<em class="blue" id="cbBlue">0</em>个号码，</span><span id="cbfs">共选择了</span><span id="cbds" style="display:none">共录入了</span><em id="cbCount" class="red">0</em>注，金额<em id="cbAmount" class="red">0</em>元<a href="javascript:;" class="abacus_clear" onclick="disSelect();">清空选择号码</a></div>
                    <div class="add_abacus">
                        <a href="javascript:;" class="abacus_config on" onclick="selectOk();"></a>
                        <!--<a href="javascript:;" class="abacus_clear" onclick="disSelect();"></a>-->
                    </div>
                </div>
                <!--计算器end-->
                <!--======================不同玩法的切换end======================-->
                <div class="step_box step_plan">
                	<div class="step_tit">
                    	<h5 class="tit">第三步</h5>
                        <span class="info">添加方案</span>
                    </div>
                    <!--<div class="step_main">
                    	<div class="step_main_in">
                        	<!--投注区域begin-->
                            <!--<div class="bet_basket">
                            	<div class="trade_area">
                                	<div id="tradeList" class="trade_list" style="width:368px;height:103px;"></div>
                                </div>
                                <div class="trade_relate_area">
                                	<div class="trade_oper">
                                    	<a href="javascript:;" class="key skin_def cl_num" onclick="clearOption(0,1);"><span><i class="icon"></i>清空选号区</span></a>
                                        机选：<a href="javascript:;" class="key skin_def rnd1" onclick="JSNEW(1);"><span>1注</span></a><a href="javascript:;" class="key skin_def rnd5" onclick="JSNEW(5);"><span>5注</span></a>
                                    </div>
                                    <div class="trade_count">
                                    	方案注数：您选择了<em id="inLineCount">0</em>注，<input name="multipleDG" id="multipleDG" value="1" type="text" class="inp_bei" onkeyup="onBuyMutipleChange(this,false);" onblur="onBuyMutipleChange(this,true);" onbeforepaste="BeforePaste()"/> 倍
                                    </div>
                                    <div class="trade_money"><span>共￥<em id="inLineAmount" >0</em></span>元<!--<input type="checkbox" id="zj" name="zj" value="" class="zj" onclick="zj();"><label for="zj" class="zj_txt">追加投注</label>-->
                                    
                                    <!--</div>
                                </div>
                            </div>
                            <!--投注区域end-->
                        <!--</div>
                    </div>-->
                    
                    <!--===新的投注区域 begin====-->
                    <div class="step_main">
                        <div class="step_main_in">
                        	<div class="betingbasket">
                                <div id="tradeList" class="betarea"></div>
                                <div class="betoper">
                                    <ul>
                                        <li><span class="cllbtn ran1"><a href="javascript:;" onclick="JSNEW(1);" class="default"><i></i><em>机选1注</em></a></span></li>
                                        <li><span class="cllbtn ran5"><a href="javascript:;" onclick="JSNEW(5);" class="default"><i></i><em>机选5注</em></a></span></li>
                                        <li><span class="cllbtn filtnum"><a href="javascript:;" onclick="filterBox.showFilterBox('福彩3D-过滤选号', 10)" class="default"><i></i><em>过滤选号</em></a></span><a href="http://www.cailele.com/static/info/201603/show_10419443.shtml" class="answers" target="_blank"><i class="iconfont">&#xe65f;</i></a></li>
                                        <li><span class="cllbtn checknum"><a href="javascript:;" onclick="filterBox.verifyBettingBox();" class="default"><i></i><em>号码验证</em></a></span><a href="http://www.cailele.com/static/info/201603/show_10419443.shtml" class="answers" target="_blank"><i class="iconfont">&#xe65f;</i></a></li>
                                        <li><span class="cllbtn removed"><a href="javascript:;" onclick="clearOption(0,1);" class="default"><i></i><em>清空</em></a></span></li> 
                                    </ul>
                                </div>
					<div class="trade_count">
							您选择了<em id="inLineCount">0</em>注，
								<span class="widget_multiple"><span class="minus"  onclick="onBuyMutipleChangeNew('minus');">-</span><span class="cllinput"><input name="multipleDG" id="multipleDG" value="1" type="text" class="disable" onkeyup="onBuyMutipleChange(this,false);" onblur="onBuyMutipleChange(this,true);" onbeforepaste="BeforePaste()"/></span><span class="add"  onclick="onBuyMutipleChangeNew('add')">+</span></span>
倍,<span>共￥<em id="inLineAmount" >0</em></span>元
							</div>
                              </div>
                          </div>
                    </div>
                    <!--===新的投注区域 end====-->
                </div>
                
                <div class="step_box step_buy">
                	<div class="step_tit">
                    	<h5 class="tit">第四步</h5>
                        <span class="info">选购买方式</span>
                    </div>
                    <div class="step_main">
                    	<div class="step_main_in">
                        	<div class="mode">
                            	购买方式：<input name="buyType" id="buyTypeDg" type="radio" checked="checked" onclick="changeDg();"/><label for="buyTypeDg">代购</label><input name="buyType" id="buyTypeHm" type="radio" onclick="changeHm();"/><label for="buyTypeHm">合买</label><input name="buyType" id="buyTypeZh" type="radio" onclick="changeZh();"/><label for="buyTypeZh">追号</label><input name="buyType" id="buyTypeZz" type="radio" onclick="changeZz();"/><label for="buyTypeZh">智能追号</label><a href="/help/faq07.shtml" target="_blank">什么叫代购、合买、追号？</a>
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
				
                <div class="buy_confirm">
                	<div class="agree"><p><input type="checkbox" id="agree" checked="checked" onclick="agreeClick();" />我已经年满18岁并同意<br /><a href="/member/agreement.shtml" target="_blank">《彩乐乐网站服务协议》</a></p></div>
                    <div class="btn"><a href="javascript:void(0);" id="buyBtn" class="btnBuy-orange" onclick="tradeSubmit(1);"></a></div>
                    <!--保存方案begin-->
                    <div class="save"><span class="saveplan"><a href="javascript:;" onclick="freeSavePlan()">保存方案</a></span></div>
                    <!--保存方案end-->
                </div>
               	<!--投注记录begin-->
                <div class="re">
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

                </div>
                <!--投注记录end-->
            </div>
        </div>
        <!--购彩页面左边部分end-->
        <!--购彩页面右边部分begin-->
        <div class="lo_sider">
	<!--右侧广告begin-->
    <!--<div class="lot_sider_ad">
        <a href="http://www.cailele.com/subject/3dgifts" target="_blank"><img src="http://img.cailele.com/img_new/banner/201603/2016318_banner_270x100.jpg" width="260" /></a>
    </div>-->
    <!--右侧广告end-->
    
    <!--开奖公告begin-->
    <div class="module mod_sider sider_award">
        <div class="hd">
            <div class="hd_tlt"><h5 class="tit">福彩3D开奖公告</h5><a href="http://kjh.cailele.com/kj_3d.shtml" target="_blank" class="more">更多开奖</a></div>
        </div>
        <div class="bd">
            <div class="bd_in">
            	<div class="clearfix newest">
	<div class="open_term">
		<span class="a">福彩3D</span>
		<span class="b">2017064</span>
		<span id=class="c">期</span>
		<a href="http://kjh.cailele.com/kj_3d_sjh.shtml" target="_blank" class="trynum">试机号</a>	
	</div>
	<div class="open_time">
		<span>开奖时间：2017-03-12 20:30</span>
	</div>
	<div class="open_num">
		<ul class="clearfix open_num_list">
			<li class="blue_ball">1</li>
			<li class="blue_ball">5</li>
			<li class="blue_ball">8</li>
		</ul>
	</div>
</div>	

                <table class="open_history_tb">
                    <thead>
                       <tr>
                            <td style="width:50px;" >期数</td>
                            <td style="width:130px;">时间</td>
                            <td style="width:70px;">开奖号码</td>
                       </tr>
                    </thead>
                    <tbody id="openPanel">
						<tr><td>2017064</td><td>03-12 20:30</td><td>1,5,8</td></tr><tr><td>2017063</td><td>03-11 20:30</td><td>8,6,4</td></tr><tr><td>2017062</td><td>03-10 20:30</td><td>9,7,5</td></tr><tr><td>2017061</td><td>03-09 20:30</td><td>4,5,4</td></tr><tr><td>2017060</td><td>03-08 20:30</td><td>8,6,8</td></tr><tr><td>2017059</td><td>03-07 20:30</td><td>1,4,3</td></tr><tr><td>2017058</td><td>03-06 20:30</td><td>2,6,2</td></tr><tr><td>2017057</td><td>03-05 20:30</td><td>2,4,2</td></tr><tr><td>2017056</td><td>03-04 20:30</td><td>1,0,2</td></tr><tr><td>2017055</td><td>03-03 20:30</td><td>2,7,6</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--开奖公告end-->
    
    <!--冷热分析begin-->
    <div class="module mod_sider number_analysis">
        <div class="hd">
            <div class="hd_tlt"><h5 class="tit">福彩3D号码冷热分析</h5></div>
        </div>
        <div class="bd">
            <div class="bd_in">
		        <table width="256" border="0" cellspacing="0" cellpadding="0" style="border-bottom:1px #FDE2CC solid;">
			              <tr>
			                <td bgcolor="#FDE2CC" id="1_1" onmouseover="showtab(1,1,3)" style="cursor:pointer;"><a id="td_1_1">百位</a></td>
			                <td id="1_2" onmouseover="showtab(1,2,3)" style="cursor:pointer;"><a id="td_1_2">十位</a></td>
			                <td id="1_3" onmouseover="showtab(1,3,3)" style="cursor:pointer;"><a id="td_1_3">个位</a></td>
			              </tr>
			    </table>
		     	<!--百位开始 -->
	            <table id="tab_1_1" width="256" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:1px;">
	               <tr>
	                <td class="tdbd" bgcolor="#f8f8f8">状态</td>
	                <td class="tdbd" bgcolor="#f8f8f8">号码</td>
	                <td class="tdbd" bgcolor="#f8f8f8">遗漏</td>
	                <td class="tdbd" bgcolor="#f8f8f8">次数</td>
	                <td class="tdbd" bgcolor="#f8f8f8">欲出几率</td>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
	              </tr>
				  <tbody id="tab_lrfx_1_1">
						     <tr>
	   	  	<td rowspan="3" class="tdbd hot" bgcolor="#f8f8f8">热号</td>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">6</td>
		    <td class="tdbd3 tdpad hot">11</td>
		    <td class="tdbd3 tdpad hot">474</td>
		    <td class="tdbd3 tdpad hot">1.22</td>
         </tr>
	     <tr>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">3</td>
		    <td class="tdbd3 tdpad hot">25</td>
		    <td class="tdbd3 tdpad hot">474</td>
		    <td class="tdbd3 tdpad hot">2.78</td>
         </tr>
	     <tr>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">8</td>
		    <td class="tdbd3 tdpad hot">1</td>
		    <td class="tdbd3 tdpad hot">456</td>
		    <td class="tdbd3 tdpad hot">0.11</td>
         </tr>
         <tr>
	   		<td rowspan="4" class="tdbd" bgcolor="#f8f8f8">常态</td>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">4</td>
		    <td class="tdbd3 tdpad">3</td>
		    <td class="tdbd3 tdpad">452</td>
		    <td class="tdbd3 tdpad">0.33</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">7</td>
		    <td class="tdbd3 tdpad">10</td>
		    <td class="tdbd3 tdpad">444</td>
		    <td class="tdbd3 tdpad">1.11</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">1</td>
		    <td class="tdbd3 tdpad">0</td>
		    <td class="tdbd3 tdpad">442</td>
		    <td class="tdbd3 tdpad">0.0</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">0</td>
		    <td class="tdbd3 tdpad">15</td>
		    <td class="tdbd3 tdpad">429</td>
		    <td class="tdbd3 tdpad">1.5</td>
		  </tr>   
	     <tr>
	   		<td rowspan="3" class="tdbd cool" bgcolor="#f8f8f8">冷号</td>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">2</td>
		    <td class="tdbd3 tdpad cool">6</td>
		    <td class="tdbd3 tdpad cool">427</td>
		    <td class="tdbd3 tdpad cool">0.6</td>
		  </tr>  
	     <tr>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">9</td>
		    <td class="tdbd3 tdpad cool">2</td>
		    <td class="tdbd3 tdpad cool">426</td>
		    <td class="tdbd3 tdpad cool">0.2</td>
		  </tr>  
	     <tr>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">5</td>
		    <td class="tdbd3 tdpad cool">16</td>
		    <td class="tdbd3 tdpad cool">411</td>
		    <td class="tdbd3 tdpad cool">1.6</td>
		  </tr>  

				  </tbody>
	            </table>
	            <!--百位结束 -->
	            <!--十位开始 -->
	            <table id="tab_1_2" width="256" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:1px; display:none;">
	               <tr>
	                <td class="tdbd" bgcolor="#f8f8f8">状态</td>
	                <td class="tdbd" bgcolor="#f8f8f8">号码</td>
	                <td class="tdbd" bgcolor="#f8f8f8">遗漏</td>
	                <td class="tdbd" bgcolor="#f8f8f8">次数</td>
	                <td class="tdbd" bgcolor="#f8f8f8">欲出几率</td>
	              </tr>
				   <tbody id="tab_lrfx_1_2">
						     <tr>
	   	  	<td rowspan="3" class="tdbd hot" bgcolor="#f8f8f8">热号</td>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">4</td>
		    <td class="tdbd3 tdpad hot">5</td>
		    <td class="tdbd3 tdpad hot">476</td>
		    <td class="tdbd3 tdpad hot">0.56</td>
         </tr>
	     <tr>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">6</td>
		    <td class="tdbd3 tdpad hot">1</td>
		    <td class="tdbd3 tdpad hot">473</td>
		    <td class="tdbd3 tdpad hot">0.11</td>
         </tr>
	     <tr>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">1</td>
		    <td class="tdbd3 tdpad hot">31</td>
		    <td class="tdbd3 tdpad hot">469</td>
		    <td class="tdbd3 tdpad hot">3.44</td>
         </tr>
         <tr>
	   		<td rowspan="4" class="tdbd" bgcolor="#f8f8f8">常态</td>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">0</td>
		    <td class="tdbd3 tdpad">8</td>
		    <td class="tdbd3 tdpad">462</td>
		    <td class="tdbd3 tdpad">0.89</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">9</td>
		    <td class="tdbd3 tdpad">24</td>
		    <td class="tdbd3 tdpad">446</td>
		    <td class="tdbd3 tdpad">2.67</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">5</td>
		    <td class="tdbd3 tdpad">0</td>
		    <td class="tdbd3 tdpad">439</td>
		    <td class="tdbd3 tdpad">0.0</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">3</td>
		    <td class="tdbd3 tdpad">12</td>
		    <td class="tdbd3 tdpad">429</td>
		    <td class="tdbd3 tdpad">1.2</td>
		  </tr>   
	     <tr>
	   		<td rowspan="3" class="tdbd cool" bgcolor="#f8f8f8">冷号</td>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">7</td>
		    <td class="tdbd3 tdpad cool">2</td>
		    <td class="tdbd3 tdpad cool">428</td>
		    <td class="tdbd3 tdpad cool">0.2</td>
		  </tr>  
	     <tr>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">8</td>
		    <td class="tdbd3 tdpad cool">23</td>
		    <td class="tdbd3 tdpad cool">418</td>
		    <td class="tdbd3 tdpad cool">2.3</td>
		  </tr>  
	     <tr>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">2</td>
		    <td class="tdbd3 tdpad cool">29</td>
		    <td class="tdbd3 tdpad cool">395</td>
		    <td class="tdbd3 tdpad cool">2.64</td>
		  </tr>  

				   </tbody>
	            </table>
	            <!--十位结束 -->
	            <!--个位开始 -->
	            <table id="tab_1_3" width="256" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:1px; display:none;">
	               <tr>
	                <td class="tdbd" bgcolor="#f8f8f8">状态</td>
	                <td class="tdbd" bgcolor="#f8f8f8">号码</td>
	                <td class="tdbd" bgcolor="#f8f8f8">遗漏</td>
	                <td class="tdbd" bgcolor="#f8f8f8">次数</td>
	                <td class="tdbd" bgcolor="#f8f8f8">欲出几率</td>
	              </tr>
				   <tbody id="tab_lrfx_1_3">
						     <tr>
	   	  	<td rowspan="3" class="tdbd hot" bgcolor="#f8f8f8">热号</td>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">8</td>
		    <td class="tdbd3 tdpad hot">0</td>
		    <td class="tdbd3 tdpad hot">480</td>
		    <td class="tdbd3 tdpad hot">0.0</td>
         </tr>
	     <tr>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">9</td>
		    <td class="tdbd3 tdpad hot">19</td>
		    <td class="tdbd3 tdpad hot">477</td>
		    <td class="tdbd3 tdpad hot">2.11</td>
         </tr>
	     <tr>
		    <td class="tdbd3 tdpad hot" style="font-weight:bold;">0</td>
		    <td class="tdbd3 tdpad hot">18</td>
		    <td class="tdbd3 tdpad hot">463</td>
		    <td class="tdbd3 tdpad hot">2.0</td>
         </tr>
         <tr>
	   		<td rowspan="4" class="tdbd" bgcolor="#f8f8f8">常态</td>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">7</td>
		    <td class="tdbd3 tdpad">16</td>
		    <td class="tdbd3 tdpad">460</td>
		    <td class="tdbd3 tdpad">1.78</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">3</td>
		    <td class="tdbd3 tdpad">5</td>
		    <td class="tdbd3 tdpad">455</td>
		    <td class="tdbd3 tdpad">0.56</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">4</td>
		    <td class="tdbd3 tdpad">1</td>
		    <td class="tdbd3 tdpad">442</td>
		    <td class="tdbd3 tdpad">0.1</td>
		  </tr>   
	     <tr>
	        <td class="tdbd3 tdpad" style="font-weight:bold;">5</td>
		    <td class="tdbd3 tdpad">2</td>
		    <td class="tdbd3 tdpad">426</td>
		    <td class="tdbd3 tdpad">0.2</td>
		  </tr>   
	     <tr>
	   		<td rowspan="3" class="tdbd cool" bgcolor="#f8f8f8">冷号</td>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">1</td>
		    <td class="tdbd3 tdpad cool">12</td>
		    <td class="tdbd3 tdpad cool">423</td>
		    <td class="tdbd3 tdpad cool">1.2</td>
		  </tr>  
	     <tr>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">2</td>
		    <td class="tdbd3 tdpad cool">6</td>
		    <td class="tdbd3 tdpad cool">418</td>
		    <td class="tdbd3 tdpad cool">0.6</td>
		  </tr>  
	     <tr>
		    <td class="tdbd3 tdpad cool" style="font-weight:bold;">6</td>
		    <td class="tdbd3 tdpad cool">9</td>
		    <td class="tdbd3 tdpad cool">391</td>
		    <td class="tdbd3 tdpad cool">0.82</td>
		  </tr>  

				   </tbody>
	            </table>
	            <!--个位结束 -->
            </div>
        </div>    
    </div>
    <!--冷热分析end-->

    <!--专家推荐begin-->
    <div class="module mod_sider experts">
        <div class="hd">
            <div class="hd_tlt"><h5 class="tit">福彩3D专家推荐</h5><a href="/news/list-10000200-1.html" target="_blank" class="more">更多推荐</a></div>
        </div>
        <div class="bd">
            <div class="bd_in_new">
         		<dl class="s-zj-box"><dt><a title='陌陌' target='_blank' href='/static/info/201703/show_10511702.shtml' ><img src='<%=request.getContextPath()%>/jsonp/static/news/expert/20111129103150SHR.png' style='width:59px; height:61px;'/> 陌陌</a></dt><dd><a title='福彩3D2017065期专家预测' target='_blank' href='/static/info/201703/show_10511702.shtml' ><h4 class='red' >福彩3D2017065期专家预测</h4></a><p><P>胆码：4、3</P>
<P>五码复式(组三)：12349</P>
<P>和值：8</P></p></dd></dl> <dl class="s-zj-box"><dt><a title='小马哥' target='_blank' href='/static/info/201703/show_10511682.shtml' ><img src='<%=request.getContextPath()%>/jsonp/static/news/expert/20131112093941SHR.png' style='width:59px; height:61px;'/> 小马哥</a></dt><dd><a title='福彩3D2017065专家预测' target='_blank' href='/static/info/201703/show_10511682.shtml' ><h4 class='red' >福彩3D2017065专家预测</h4></a><p><P>胆码：2、8</P>
<P>五码复式(组三)：12568</P>
<P>和值：15</P>
<P></P></p></dd></dl> 
        	</div>
        </div> 
    </div>
    <!--专家推荐end-->    
    
    <!--预测begin-->
    <div class="module mod_sider forecast">
        <div class="hd">
            <div class="hd_tlt"><h5 class="tit">福彩3D预测</h5><a href="/news/list-5-1.html" target="_blank" class="more">更多预测</a></div>
        </div>
        <div class="bd">
            <div class="bd_in_new">
            	<ul>
            	<li><a href='/static/info/201703/show_10511706.shtml' target='_blank' >[陌陌]福彩3D2017065期推荐</a><span class='dat'>13日</span></li><li><a href='/static/info/201703/show_10511683.shtml' target='_blank' >[小马哥]福彩3D2017065专家推荐</a><span class='dat'>13日</span></li><li><a href='/static/info/201703/show_10511648.shtml' target='_blank' >3D 2017065期杨大侠定位推荐</a><span class='dat'>13日</span></li><li><a href='/static/info/201703/show_10511643.shtml' target='_blank' >3D 2017065期貂蝉胆码推荐</a><span class='dat'>13日</span></li><li><a href='/static/info/201703/show_10511638.shtml' target='_blank' >3D 2017065期细雨复式推荐</a><span class='dat'>13日</span></li><li><a href='/static/info/201703/show_10511521.shtml' target='_blank' >[陌陌]福彩3D2017064专家推荐</a><span class='dat'>12日</span></li>
                </ul>
            </div>
        </div>
    </div>
    <!--预测end-->
</div>      
        <!--购彩页面右边部分end-->
     </div>
     <!--左右布局页面end-->
    </div>
</div>
<!--中间end-->
<!--中间end-->
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
<script src="<%=request.getContextPath()%>/static/min/js/search.js" type="text/javascript"></script>
<!--新用户注册50送70弹窗end--> 
 
<!--脚部文件end-->	
<!-- 过滤选号层文件  -->
<!--过滤选号begin-->
<div id="msgDiv" class="lot_filter_box ssc_lot_filter">
    <div class="lot_filter_box_in">
    	<!--过滤选号左侧begin-->
        <div class="lot_filter_main">
        	<div class="lot_filter_main_in">
            	<!--切换菜单begin-->
                <div class="filter_tab_box">
                    <ul class="clearfix lot_tab">
                        <li id="zx_fmenu"><a href="javascript:;" onclick="filterBox.selectPlayType('zx');"><span class="tit">直选</span></a></li>
                        <li id="zux_fmenu"><a href="javascript:;" onclick="filterBox.selectPlayType('zux');"><span class="tit">组选</span></a></li>
                    </ul>
                </div>
                <!--切换菜单end-->
                <!-- 直选 begin -->
                <div id="zx_ftable" class="gltjselect ssc_zuxuan" style="display:none;">
                    <div class="regional ball_regional">
	                    <h6 class="tit">百位</h6>
	                    <div class="con">
	                        <div class="ballmode"><span class="cllradio"><a href="javascript:;" class="default" value="0"><i></i><em>胆</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>杀</em></a></span></div>
	                        <ul class="balls">
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'0')" num="0"><i>0</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'1')" num="1"><i>1</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'2')" num="2"><i>2</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'3')" num="3"><i>3</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'4')" num="4"><i>4</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'5')" num="5"><i>5</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'6')" num="6"><i>6</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'7')" num="7"><i>7</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'8')" num="8"><i>8</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'9')" num="9"><i>9</i></li>
	                        </ul>
	                        <ul class="assist">
	                            <li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('0','1','2','3','4','5','6','7','8','9'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('5','7','9'));">大单</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('6','8'));">大双</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('1','3'));">小单</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('0','2','4'));">小双</li>
								<li class="ass" onclick="filterBox.selectRow(0,'',1,new Array('0','3','6','9'));">0路</li>
								<li class="ass" onclick="filterBox.selectRow(0,'',1,new Array('1','4','7'));">1路</li>
								<li class="ass" onclick="filterBox.selectRow(0,'',1,new Array('2','5','8'));">2路</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional ball_regional">
	                    <h6 class="tit">十位</h6>
	                    <div class="con">
	                        <div class="ballmode"><span class="cllradio"><a href="javascript:;" class="default" value="0"><i></i><em>胆</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>杀</em></a></span></div>
	                        <ul class="balls">
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'0')" num="0"><i>0</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'1')" num="1"><i>1</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'2')" num="2"><i>2</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'3')" num="3"><i>3</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'4')" num="4"><i>4</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'5')" num="5"><i>5</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'6')" num="6"><i>6</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'7')" num="7"><i>7</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'8')" num="8"><i>8</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'9')" num="9"><i>9</i></li>
	                        </ul>
	                        <ul class="assist">
	                            <li class="ass" onclick="filterBox.selectRow(1,'all',0,new Array('0','1','2','3','4','5','6','7','8','9'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('5','7','9'));">大单</li>
								<li class="ass" onclick="filterBox.selectRow(1,'big',5,new Array('6','8'));">大双</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('1','3'));">小单</li>
								<li class="ass" onclick="filterBox.selectRow(1,'small',4,new Array('0','2','4'));">小双</li>
								<li class="ass" onclick="filterBox.selectRow(1,'',1,new Array('0','3','6','9'));">0路</li>
								<li class="ass" onclick="filterBox.selectRow(1,'',1,new Array('1','4','7'));">1路</li>
								<li class="ass" onclick="filterBox.selectRow(1,'',1,new Array('2','5','8'));">2路</li>
								<li class="ass" onclick="filterBox.selectRow(1,'clear',0,new Array());">清</li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional ball_regional">
	                    <h6 class="tit">个位</h6>
	                    <div class="con">
	                        <div class="ballmode"><span class="cllradio"><a href="javascript:;" class="default" value="0"><i></i><em>胆</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>杀</em></a></span></div>
	                        <ul class="balls">
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'0')" num="0"><i>0</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'1')" num="1"><i>1</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'2')" num="2"><i>2</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'3')" num="3"><i>3</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'4')" num="4"><i>4</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'5')" num="5"><i>5</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'6')" num="6"><i>6</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'7')" num="7"><i>7</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'8')" num="8"><i>8</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'9')" num="9"><i>9</i></li>
	                        </ul>
	                        <ul class="assist">
	                            <li class="ass" onclick="filterBox.selectRow(2,'all',0,new Array('0','1','2','3','4','5','6','7','8','9'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(2,'big',5,new Array('5','7','9'));">大单</li>
								<li class="ass" onclick="filterBox.selectRow(2,'big',5,new Array('6','8'));">大双</li>
								<li class="ass" onclick="filterBox.selectRow(2,'small',4,new Array('1','3'));">小单</li>
								<li class="ass" onclick="filterBox.selectRow(2,'small',4,new Array('0','2','4'));">小双</li>
								<li class="ass" onclick="filterBox.selectRow(2,'',1,new Array('0','3','6','9'));">0路</li>
								<li class="ass" onclick="filterBox.selectRow(2,'',1,new Array('1','4','7'));">1路</li>
								<li class="ass" onclick="filterBox.selectRow(2,'',1,new Array('2','5','8'));">2路</li>
								<li class="ass" onclick="filterBox.selectRow(2,'clear',0,new Array());">清</li>
	                        </ul>
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
	                <div class="regional opt_area">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="all" /><span>全选</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
								<label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
								<label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="20" /><span>20</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="21" /><span>21</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="22" /><span>22</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="23" /><span>23</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="24" /><span>24</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="25" /><span>25</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="26" /><span>26</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="27" /><span>27</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值范围</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">跨度</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="0" /><span>0</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
								<label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="kuaDu" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
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
                <!-- 直选 end -->
                <!-- 组选 begin -->
                <div id="zux_ftable" class="gltjselect ssc_zhixuan" style="display:none;">
                    <div class="regional ball_regional">
	                    <h6 class="tit">号码</h6>
	                    <div class="con">
	                        <ul class="balls">
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'0')" num="0"><i>0</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'1')" num="1"><i>1</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'2')" num="2"><i>2</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'3')" num="3"><i>3</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'4')" num="4"><i>4</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'5')" num="5"><i>5</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'6')" num="6"><i>6</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'7')" num="7"><i>7</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'8')" num="8"><i>8</i></li>
	                            <li class="li2" name="numCode" onclick="filterBox.selectNum(this,'9')" num="9"><i>9</i></li>
	                        </ul>
	                        <ul class="assist">
	                            <li class="ass" onclick="filterBox.selectRow(0,'all',0,new Array('0','1','2','3','4','5','6','7','8','9'));">全</li>
								<li class="ass" onclick="filterBox.selectRow(0,'big',5,new Array('5','6','7','8','9'));">大</li>
								<li class="ass" onclick="filterBox.selectRow(0,'small',4,new Array('0','1','2','3','4'));">小</li>
								<li class="ass" onclick="filterBox.selectRow(0,'odd',1,new Array('1','3','5','7','9'));">奇</li>
								<li class="ass" onclick="filterBox.selectRow(0,'even',1,new Array('0','2','4','6','8'));">偶</li>
								<li class="ass" onclick="filterBox.selectRow(0,'clear',0,new Array());">清</li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional set_dan">
	                    <h6 class="tit">设胆</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="0" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="1" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="2" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="3" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="4" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="5" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="6" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="7" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="8" /></li>
	                            <li class="dan_opt"><input name="danMa" type="checkbox" onclick="filterBox.setGuts(this);" class="cb" value="9" /></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional killball">
	                    <h6 class="tit">杀号</h6>
	                    <div class="con">
	                        <ul class="dan_list">
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="0"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="1"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="2"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="3"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="4"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="5"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="6"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="7"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="8"/></li>
	                            <li class="dan_opt"><input name="killNum" type="checkbox" onclick="filterBox.setKills(this);" class="cb" value="9"/></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="regional grouping">
	                    <h6 class="tit">分组过滤</h6>
	                    <div class="con">
	                        <div class="isgroup"><span class="cllradio"><a href="javascript:;" class="select" value="0"><i></i><em>不分组</em></a></span><span class="cllradio"><a href="javascript:;" class="default" value="1"><i></i><em>分组过滤<span class="remind">(仅限组六)</span></em></a></span></div>
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
	                            <label><input name="coldNum" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3"/><span>3</span></label>
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
	                <div class="regional opt_area">
	                    <h6 class="tit">和值</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="all" /><span>全选</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="1" /><span>1</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="2" /><span>2</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="3" /><span>3</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="4" /><span>4</span></label>
								<label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="5" /><span>5</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="6" /><span>6</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="7" /><span>7</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="8" /><span>8</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="9" /><span>9</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="10" /><span>10</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="11" /><span>11</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="12" /><span>12</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="13" /><span>13</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="14" /><span>14</span></label>
								<label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="15" /><span>15</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="16" /><span>16</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="17" /><span>17</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="18" /><span>18</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="19" /><span>19</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="20" /><span>20</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="21" /><span>21</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="22" /><span>22</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="23" /><span>23</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="24" /><span>24</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="25" /><span>25</span></label>
	                            <label><input name="heZhi" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="26" /><span>26</span></label>
	                        </div>
	                    </div>
	                </div>
	                <div class="regional opt_area">
	                    <h6 class="tit">和值范围</h6>
	                    <div class="con">
	                        <div class="opt_box">
								<input name="startHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/> - <input name="endHzScope" type="text" class="ipt" onblur="filterBox.hzScopeKeyup(this)"/>
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
	                <div class="regional opt_area">
	                    <h6 class="tit">形态</h6>
	                    <div class="con">
	                        <div class="opt_box">
	                            <label><input name="playType" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="all"/><span>全选</span></label>
	                            <label><input name="playType" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="zhuxuan"/><span>组三</span></label>
	                            <label><input name="playType" type="checkbox" onclick="filterBox.conditionClick(this);" class="cb" value="zl"/><span>组六</span></label>
	                        </div>
	                    </div>
	                </div>
                </div>
                <!-- 组选 end -->
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
                        <tbody id="filterResult"></tbody>
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
    	<iframe src="about:blank" frameborder="0"></iframe>
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
                        <tbody id="verifyArea"></tbody>
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
                    <tbody id="verifyArea2"></tbody>
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
</script>
<!--过滤选号层文件结束 -->

<script src="<%=request.getContextPath()%>/static/min/js/ssq/shrink.js" type="text/javascript"></script>
<script type="text/javascript">
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
    <input type="hidden" id="addAttribute" name="addAttribute" />
    <input type="hidden" id="founderAmount" name="founderAmount" />
    <input type="hidden" id="founderBdAmount" name="founderBdAmount" />
    <input type="hidden" id="publicStatus" name="publicStatus"/>
    <input type="hidden" id="commision" name="commision" />
    <input type="hidden" id="other" name="other" />
    <input type="hidden" id="stopCondition" name="stopCondition" /><!--终止条件-->
    <input type="hidden" id="filePath" name="filePath" />
    <input type="hidden" id="ds" name="ds" value="false"/>
    <input name="submit1" type="submit" value="提交" style="display:none"/>
</form>
</body>
</html>