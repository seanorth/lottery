﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>双色球投注-福彩双色球机选-福利彩票双色球胆拖-大奖网</title>
    <meta name="keywords" content="双色球投注,福彩双色球机选,福利彩票双色球胆拖" />
    <meta name="description" content="大奖网数字彩频道提供双色球投注,还有更多福彩双色球机选和福利彩票双色球胆拖投注,网上购买双色球就上大奖网彩票网.【大奖网彩票网-专业、安全的网上购彩平台】" />
    <meta name="baidu-site-verification" content="G3yjx3dBmE" />
    <meta property="qc:admins" content="34400747776311226375" />
    <meta name="360-site-verification" content="5fc59d0c2b686ee3ea83e35da560e3de" />
        <link href="<%=request.getContextPath()%>/static/jiang/css/main.min.css?v=0120" rel="stylesheet" type="text/css" media="screen" />    
        <link href="<%=request.getContextPath()%>/static/jiang/css/szc.css?v=1209" rel="stylesheet" type="text/css" media="screen" />    
    <!--[if IE 7]> 
        <script src="<%=request.getContextPath()%>/static/share/js/json2.min.js" type="text/javascript"></script>    
    <![endif]-->
        <script src="<%=request.getContextPath()%>/static/share/js/share.min.js" type="text/javascript"></script>    
        <script src="<%=request.getContextPath()%>/static/jiang/js/user.min.js" type="text/javascript"></script>    
        <script src="<%=request.getContextPath()%>/static/jiang/js/nav.js" type="text/javascript"></script>    
        <script src="<%=request.getContextPath()%>/static/jiang/js/onlinePhone.js" type="text/javascript"></script>    
    
</head>
<body>
    <script type="text/javascript">
        var ires = "<%=request.getContextPath()%>/static/jiang/images/";
        var dres = "http://data.jiangkk.com/matchdata/";
    </script>
    <div class="header">
<div class="wrap-header">
    <div class="div_m">
        <div class="toptray-plus clearfix auto990">
            <div class="toptray-left fl">
                <span>hi，欢迎来到大奖网彩票</span>
            </div>
            <div class="toptray-right fr">
                <ul class="toptray clearfix" id="toptray_login" style="display: none">
                    <li><a id="toptray_username" href="javascript:void(0)"></a><a
                        class="ml14 color666" href="javascript:user.logOut(true);">退出</a></li>
                    <li class="m14">|</li>
                    <li class="header-show-money">
                        <div id="wallet_container">
                            <span style="font-family: Verdana,Arial;" class="span-login-rmb colorRed">￥</span>
                            <span class="colorRed" id="header_user_money" data-sh="0">*****</span><input type="hidden" value="" id="header_user_money_hidden"/>
                            <div style="display: none;" id="wallet_detail">
                                <p>
                                    奖金账户：<strong class="red">￥0.00</strong></p>
                                <p>
                                    充值账户：<strong class="red">￥0.00</strong></p>
                                <p>
                                    彩金账户：<strong class="red">￥0.00</strong></p>
                                <p>
                                    <a href="javascript:void(0)" class="account_detail">账户明细&gt;&gt;</a></p>
                                <div class="clear nospace">
                                    &nbsp;</div>
                            </div>
                        </div>
                        <a class="color666" id="header_show_money" href="javascript://">显示余额</a> <i class="img-login-refresh icon-i"
                            id="rbalc"></i></li>
                    <li id="mylottery" class="mylottery"><a class="my-lottery color666" target="_blank"
                        href="/member/safe"><i id="header_sign" class="nosign-hd"></i>我的彩票</a>  </li>
                    <li><a class="mr10 color666 mr" target="_blank" href="/member/pay">充值</a><a class="color666 mr10"
                        target="_blank" href="/member/fetch_bank">提款</a></li>
                </ul>
                <ul class="toptray-plus clearfix" id="toptray_not_login" style="display: block">
                    <li><a class="colorRed" id="loginbtn_new" href="javascript:void(0)">登录</a> &nbsp; <a
                        class="colorRed" href="/statichtml/register.html">注册</a> </li>
                    <li class="m14">|</li>
                    <li class="mylottery"><a class="my-lottery color666" href="javascript:void(0)" checklg="/member/safe">
                        我的彩票</a></li>
                    <li><a class="color666 mr10" href="javascript:void(0)" checklg="/member/pay">充值</a>
                        <a class="color666 mr10" href="javascript:void(0)" checklg="/member/fetch_bank">提款</a>
                    </li>
                </ul>
            </div>
        </div>
        <div style="clear: both;">
        </div>
    </div>
</div>

<div class="clearfix">
</div>
<div class="header_box_con" style="display: block;">
    <div class="header_box">
        <a title="大奖网" class="xg logo" href="/">大奖网</a>
       
         <ul class="customerService-plus">
            <li><i class="icon-i"></i>TEL:4000-939-958 &nbsp;</li>
            <li>
            <a class="link_kefu" href="javascript:void(0)" data="https://v88.live800.com/live800/chatClient/chatbox.jsp?companyID=739837&amp;configID=2918&amp;jid=6404484161&amp;s=1
" title="点击联系在线客服" style=" margin-right:10px;"></a></li>
          <li class="online_service"><a class="colorRed kf-top" target="_blank" href="/staticHtml/help/index.html" style=" color:#666">帮助中心</a>
                <a class="colorRed kf-top" target="_blank" href="/staticHtml/help/login.html"  style=" color:#666">如何注册</a> </li>
        </ul>
    </div>
    <div class="clearfix"></div>
</div>
<div class="hh-nav clearfix">
    <div class="nav">
        <!--竞彩-->
 
          <div class="nav_left">
              <div class="navtoptitle nav_hoverico">
                  全部彩种 （共30种）
              </div>
<div class="lotterys">
    
    <div class="tips_bd">
        <ul class="lottery-list-box">
            <li style="padding-top: 16px;" class="mainGame">
                <a class="mainA" target="_blank" href="/jingcai"><i class="icon-i nav40-jczq"></i><span class="color333">竞彩足球</span></a>
                <a class="status-desc" target="_blank" href="/jingcai"><span>加奖10%</span></a>
            </li>
            <li class="mainGame">
                <a class="mainA" target="_blank" href="/jingcaibasket"><i class="icon-i nav40-jclq"></i><span class="color333">竞彩篮球</span></a>
                <a class="status-desc" target="_blank" href="/jingcaibasket"><span>加奖12%</span></a>
            </li>
            <li class="mainGame">
                <a class="mainA" target="_blank" href="<%=request.getContextPath()%>/szc/ssq"><i class="icon-i nav40-ssq"></i><span class="color333">双色球</span></a>
                <a class="status-desc" target="_blank" href="/szc/ssq"><span>猜双色 赢大奖</span></a>
            </li>
            <li class="mainGame">
                <a class="mainA" target="_blank" href="/szc/dlt"><i class="icon-i nav40-dlt"></i><span class="color333">大乐透</span></a>
                <a class="status-desc" target="_blank" href="/szc/dlt"><span>3元中1600万</span></a>
            </li>
            <li class="mainGame">
                <a class="mainA" target="_blank" href="/szc/cqssc"><i class="icon-i nav40-jxssc"></i><span class="color333">重庆时时彩</span></a>
                <a class="status-desc" target="_blank" href="/szc/cqssc"><span>加奖90%</span></a>
            </li>
            <li class="mainGame">
                <a class="mainA" target="_blank" href="/szc/jx11x5"><i class="icon-i nav40-sd11x5"></i><span class="color333">江西11选5</span></a>
                <a class="status-desc" target="_blank" href="/szc/jx11x5"><span>加奖55%</span></a>
            </li>
            <li class="mainGame">
                <a class="mainA" target="_blank" href="<%=request.getContextPath()%>/szc/fc3d"><i class="icon-i nav40-3D"></i><span class="color333">福彩3D</span></a>
                <a class="status-desc" target="_blank" href="/szc/fc3d"><span>天天开奖</span></a>
            </li>
                 
            <li data-type="1" class="allGames clearfix">
                <h3>
                    <span>数字</span></h3>
                <ul class="clearfix game-list">
                    <li><a target="_blank" href="<%=request.getContextPath()%>/szc/ssq">双色球</a></li>
                    <li><a target="_blank" href="/szc/dlt">大乐透</a></li>
                    <li><a target="_blank" href="<%=request.getContextPath()%>/szc/fc3d">福彩3D</a></li>
                    <li><a target="_blank" href="/szc/pl3">排列3</a></li>
                    
                </ul>
                
                <div class="line-fff" style="display: none;">
                </div>
                <div id="moreGames_1" style="display: none;" class="moreGames clearfix">
                    <div class="moreGames-box fl">
                        <div class="otherGames num-games">
                            <h3>
                                数字彩</h3>
                            <ol>
                                <li><a class="colorRed" target="_blank" href="<%=request.getContextPath()%>/szc/ssq">双色球</a></li>
                                <li><a target="_blank" href="/szc/dlt">大乐透</a></li>
                                <li><a target="_blank" href="<%=request.getContextPath()%>/szc/fc3d">福彩3D</a></li>
                                <li><a href="javascript:void(0)">七乐彩</a></li>
                                <li><a href="javascript:void(0)">排列5</a></li>
                                <li><a href="javascript:void(0)">东方6+1</a></li>
                                <li><a href="javascript:void(0)">七星彩</a></li>
                                <li><a href="/szc/pl3">排列3</a></li>
                                <li><a href="javascript:void(0)">15选5</a></li>
                                <li><a href="javascript:void(0)">好彩1</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </li>
            <li data-type="2" class="allGames">
                <h3>
                    <span>高频</span></h3>
                <ul class="clearfix game-list">
                    <li style=" width:75px;"><a target="_blank" href="/szc/cqssc" >重庆时时彩</a></li>
                    <li style=" width:75px;"><a target="_blank" href="/szc/jx11x5" >江西11选5</a></li>
                    
                </ul>
                
                <div class="line-fff" style="display: none;">
                </div>
                <div id="moreGames_2" style="display: none;" class="moreGames clearfix">
                    <div class="moreGames-box fl">
                        <div class="otherGames clearfix gp-games">
                            <h3>
                                高频彩</h3>
                            <ol>
                                <li><a target="_blank" href="/szc/cqssc">重庆时时彩</a></li>
                                <li><a href="javascript:void(0)">老快乐十分</a></li>
                                <li><a href="javascript:void(0)">PK拾</a></li>
                                <li><a target="_blank" href="/szc/jx11x5">江西11选5</a></li>
                                <li><a href="javascript:void(0)">新11选5</a></li>
                                <li><a href="javascript:void(0)">沪11选5</a></li>
                                <li><a href="javascript:void(0)">快乐8</a></li>
                                <li><a href="javascript:void(0)">快3</a></li>
                                <li><a href="javascript:void(0)">幸运赛车</a></li>
                                <li><a href="javascript:void(0)">新时时彩</a></li>
                                <li><a href="javascript:void(0)">群英会</a></li>
                                <li><a class="colorRed" href="javascript:void(0)">快乐扑克</a></li>
                                <li><a href="javascript:void(0)">快乐十分</a></li>
                                <li><a href="javascript:void(0)">老11选5</a></li>
                                <li><a href="javascript:void(0)">欢11选5</a></li>
                                <li><a href="javascript:void(0)">老快3</a></li>
                                <li><a href="javascript:void(0)">新快3</a></li>
                                <li><a href="javascript:void(0)">幸运农场</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </li>
            <li data-type="3" class="allGames clearfix">
                <h3>
                    <span>竞技</span></h3>
                <ul class="clearfix game-list">
                    <li><a class="colorRed" target="_blank" href="/jingcai">竞彩混合</a></li>
                    <li><a class="colorRed" target="_blank" href="/jingcai/exy">二选一</a></li>
                    <li style="margin-right: 0"><a class="colorRed" target="_blank" href="/toto">胜负彩</a></li>
                    <li><a target="_blank" href="/danchang">北京单场</a></li>
                    <li style="width: 54px; margin-right: 4px;"><a target="_blank" href="/danchang/sxds">
                        上下单双</a></li>
                    <li style="margin-right: 0"><a target="_blank" href="/danchang/bf">比分</a></li>
                </ul>
                <i id="open-btn-3" class="icon-i"></i>
                <div class="line-fff">
                </div>
                <div id="moreGames_3" style="display: none" class="moreGames clearfix">
                    <div class="moreGames-box fl">
                        <div class="otherGames jj-games">
                            <h3>
                                竞技彩</h3>
                            <div class="sportsBox">
                                <div class="jczq-box clearfix">
                                    <h4>
                                        竞彩足球 &gt;
                                    </h4>
                                    <ol>
                                        <li><a class="colorRed" target="_blank" href="/jingcai">混合过关</a></li>
                                        <li><a target="_blank" href="/jingcai/zjq">总进球</a></li>
                                        <li><a target="_blank" href="/jingcai/bqc">半全场</a></li>
                                        <li><a target="_blank" href="/jingcai/bf">比分</a></li>
                                        <li><a target="_blank" href="/jingcai/exy">主客二选一</a></li>
                                        <li><a target="_blank" href="/jingcai/rqspf?oddstype=3">单式上传</a></li>
                                    </ol>
                                </div>
                                <div class="jclq-box clearfix">
                                    <h4>
                                        竞彩篮球 &gt;
                                    </h4>
                                    <ol>
                                        <li><a class="colorRed" target="_blank" href="/jingcaibasket">混合过关</a></li>
                                        <li><a target="_blank" href="/jingcaibasket/sf">胜负</a></li>
                                        <li><a target="_blank" href="/jingcaibasket/rfsf">让分胜负</a></li>
                                        <li><a target="_blank" href="/jingcaibasket/sfc">胜分差</a></li>
                                        <li><a target="_blank" href="/jingcaibasket/dxf">大小分</a></li>
                                    </ol>
                                </div>
                                <div class="bjdc-box clearfix">
                                    <h4>
                                        北京单场 &gt;
                                    </h4>
                                    <ol>
                                        <li><a class="colorRed" target="_blank" href="/danchang">胜平负</a></li>
                                        <li><a target="_blank" href="/danchang/zjq">进球数</a></li>
                                        <li><a target="_blank" href="/danchang/sxds">上下单双</a></li>
                                        <li><a target="_blank" href="/danchang/bf">比分</a></li>
                                        <li><a target="_blank" href="/danchang/bqc">半全场</a></li>
                                    </ol>
                                </div>
                                <div class="sfc-box clearfix">
                                    <h4>
                                        足彩胜负 &gt;
                                    </h4>
                                    <ol>
                                        <li><a target="_blank" href="/toto">14场胜平负</a></li>
                                        <li><a target="_blank" href="/toto/tr9">任选9场</a></li>
                                        <li><a target="_blank" href="/toto/t6bqc">6场半全场</a></li>
                                        <li><a target="_blank" href="/toto/t4cjq">4场进球</a></li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    $(".lottery_box li.show").hover(function () {
        $(this).addClass("menu_hover");
    }, function () {
        $(this).removeClass("menu_hover");
    });
</script>
        </div>
        <!--twonav_left-->
        <ul class="nav_right" id="home_menus">
            
            <li class="on"><a target="_blank" href="/" style="margin-left: 22px;"><i class="home_icon sy"></i> 首页</a></li>
            <li><a href="/staticHtml/baodan/index.html" >大奖神单</a></li>
            <li><a target="_blank" href="/chipped">合买大厅</a></li>
            <li><a href="/staticHtml/lottery/index.html">开奖结果</a></li>
            <li><a href="/staticHtml/bonus/index.html">中奖排行榜</a></li>
            <li class="dropdown-nav" data-cls="data-down">
                <a class="dropdown-desc" href="javascript://">数据图表<i class="icon-i"></i></a>
                <ul class="dropdown-ul" style=" display:none;">
                    <li><a class="live" href="/soccer">过关统计</a></li>
                    <li><a class="football" href="http://live.jiang.com/">比分直播</a></li>
                    <li><a class="baskeball" href="http://odds.jiang.com/">足球数据</a></li>
                    <li><a href="http://info.jiang.com/">联赛专题</a></li>
                    <li><a href="/staticHtml/lotterytrend/index.html">走势图</a></li>
                </ul>
            </li>
            <li><a target="_blank" href="/staticHtml/zixun/index.html">资讯</a></li>
        </ul>
        <ul class="nav-act">
            <li class="phone-click" style="position: relative">
                <a title="手机购彩" href="/staticHtml/phonebuy/index.html">手机购彩</a>
                <i style="display: none;" class="icon-i"></i>
                <div style="display: none;" class="mobile-box">
                    <div class="mobile-text">安全、便捷、随时随地购彩</div>
                    <div class="mobile-code-img code-icon-i"></div>
                    <!--<div class="send clearfix"><input type="text" placeholder="输入手机号获取链接" class="jc-put"/><span class="jc-btn">免费发送</span></div>-->
                </div>
            </li>
            <li>?</li>
            <li><a target="_blank" href="/huodong/huodong.html">活动</a></li>
            <li>?</li>
            <li><a title="会员中心" class="help-nav" target="_blank" href="/staticHtml/vip/index.html">会员</a></li>
        </ul>
        <!--nav_right-->
    </div>
</div>
<script type="text/javascript">
    setMenuClass3(".nav_right");
</script>
    </div>
    <div class="wrap">
        
<div id="szcpage">
</div>
<script type="text/javascript">

    $(function () {
        $("#szcpage").html("<div class=\"sk-three-bounce\">\<div class=\"sk-child sk-bounce1\"></div><div class=\"sk-child sk-bounce2\"></div><div class=\"sk-child sk-bounce3\"></div></div>");
        $("#szcpage").load("<%=request.getContextPath()%>/szc_fb/SSQ", function () { });
    });

</script>

    </div>
    <div class="clearfix">
    </div>
    <div class="footer">

<div class="bottom-nav">
    <div class="bnav">
        <ul>
            <li>战略合作伙伴:</li>
            <li><a href="http://www.baidu.com/" target="_blank">百度</a></li>
            <li><a href="http://www.sporttery.cn/" target="_blank">中国竞彩网</a></li>
            <li><a href="http://www.bfindex.com/" target="_blank">必发指数</a></li>
            <li><a href="http://sports.sina.com.cn/" target="_blank">新浪体育</a></li>
            <li><a href="http://http://www.cjcp.com.cn/" target="_blank">彩经网</a></li>
	    <li><a href="http://www.win007.com/" target="_blank">球探比分</a></li>
            <li><a href="http://www.dongqiudi.com/" target="_blank">懂球帝</a></li>
            <li><a href="http://www.qipai.org.cn/" target="_blank">中国棋牌网</a></li>
            <li><a href="http://www.hupu.com/" target="_blank">虎扑体育</a></li>
            <li><a href="https://1.163.com/" target="_blank">一元夺宝</a></li>    
 	    <li><a href="https://www.duba.com/" target="_blank">毒霸网址大全</a></li>        
        </ul>
    </div>
</div>
<div class="footer_nav">
    <div class="link">
        <a href="/staticHtml/help/about/Aboutsite1.html" target="_blank">关于我们</a>|
        <a href="/statichtml/register.html" target="_blank">用户注册</a>|
        <a href="/staticHtml/help/about/Join1.html" target="_blank">联系我们</a>|
        <a href="/staticHtml/help/about/Join1.html" target="_blank">合作伙伴</a>|
        <a href="/staticHtml/help/about/Recruitment.html" target="_blank">人才招聘</a>|
        <a href="/staticHtml/help/about/links1.html" target="_blank">友情链接</a>|
        <a href="/statichtml/help/about/websiteMap1.html" target="_blank">网站地图</a>|
        <a href="http://m.jiang.com" target="_blank">触屏版</a>
    </div>
    <div class="copyright">
        <p>? 2015-2017 <a href="http://www.jiang.com" title="大奖网">http://www.jiang.com</a> All Rights Reserved | ICP备案：<a href="http://www.miibeian.gov.cn/"  target="_blank" title="粤ICP备16016264号-1" >粤ICP备16016264号-1</a> | 免费客服热线：4000-939-958 (08:30-00:30)
</p>
        <p>提醒：购买彩票有风险，在线投注需谨慎，不向未满18周岁的青少年出售彩票及提供彩票代购服务</p>
    </div>
</div>
    </div>
<div class="hide">
<script src="http://127.0.0.1:8080/lottery/jsonp/static/z_stat.php?id=1261165287&web_id=1261165287" language="JavaScript"></script>
</div>


<div id="box_doc"  style="position: fixed; z-index: 5024; display: block; left: 50%; top: 10%; margin-top: -1000px; margin-left: -299.5px;">
     <table>
        <tr>
            <td class="itd-top-left"></td>
            <td class="itd-top-center"></td>
            <td class="itd-top-right"></td>
        </tr>
        <tr>
            <td class="itd-mid-left"></td>
            <td class="itd-mid-center">
                <div class="dialogContent">
      
    <h3 class="pop-comm-top">
       定制跟单
    </h3>
    <div class="pop-comm-middle " style="text-align:center; font-weight:normal;">
        <table width="560" border="1" bordercolor="#d3d3d3" cellpadding="3" cellspacing="1" bgcolor="#F8F8F8" style=" margin-left:10px;">
            <tr>
                <td width="168" height="22" align="right"  class="stys">发起人：</td>
                <td width="137"  style="padding-left: 5px"><span style="text-align: left">
                                                               <a id="lbApplicant" target="_blank" href="javascript:;"></a>
                                                           </span></td>
                <td width="103" align="right"  class="stys">彩种：</td>
                <td width="114"  style="padding-left: 5px"><span style="text-align: left">
                                                               <span id="lbLotType"></span>
                                                           </span></td>
            </tr>
            <tr>
                <td height="22" align="right"  class="stys">跟单类型：</td>
                <td  colspan="3" align="left">
                    <label>
                        <input type="radio" name="DocType" class="check" value="0" checked="checked" />金额</label>
                    <label>
                        <input type="radio" name="DocType" class="check" value="1"/>百分比</label></td>
            </tr>
            <tr>
                <td height="22" align="right"  class="stys">我每次认购：</td>
                <td bgcolor="#FFFFFF" colspan="3"><span style="float:left;padding-left:5px;">
                                                      <input name="txtBuyMoney" type="text" id="txtBuyMoney" class="number" onkeypress="if(event.keyCode&lt;48 ||event.keyCode&gt;57) event.returnValue=false;" size="5" value="1" />
                                                      元/百分比 <span style="color: #999">(最低1元/1%)</span></span></td>
            </tr>
            <tr>

                <td align="right"  class="stys">认购方案总数：</td>
                <td bgcolor="#FFFFFF" colspan="3"><span style="float:left;padding-left:5px;">
                                                      <input name="txtLotNum" type="text" id="txtLotNum" class="number" onkeypress="if(event.keyCode&lt;48 ||event.keyCode&gt;57) event.returnValue=false;" onfocus="if(this.value=='不限')this.value='';" onblur="if(this.value==''|| parseInt(this.value)==0) this.value='不限';" style="width: 30px;" value="不限">
                                                      <span style="vertical-align: bottom">个</span></span></td>
            </tr>
            <tr>
                <td height="22" align="right"  class="stys">发单人方案金额大小：</td>
                <td colspan="3" bgcolor="#FFFFFF" valign="bottom"><span style="float: left; padding-left: 5px; vertical-align: text-bottom;">最低&nbsp;
                                                                      <input name="txtMinMoney" type="text" id="txtMinMoney" style="vertical-align: bottom" class="number" size="4" value="不限" onkeypress="if(event.keyCode&lt;48 ||event.keyCode&gt;57) event.returnValue=false;" onfocus="if(this.value=='不限')this.value='';" onblur="if(this.value==''|| parseInt(this.value)==0) this.value='不限';">
                                                                      元 --
                                                                      最高&nbsp;
                                                                      <input name="txtMaxMoney" type="text" id="txtMaxMoney" style="vertical-align: bottom" class="number" size="3" value="不限" onkeypress="if(event.keyCode&lt;48 ||event.keyCode&gt;57) event.returnValue=false;" onfocus="if(this.value=='不限')this.value='';" onblur="if(this.value==''|| parseInt(this.value)==0) this.value='不限';">
                                                                      元</span></td>
            </tr>
            <tr>

                <td align="right"  class="stys">用户余额不足：</td>
                <td bgcolor="#FFFFFF" colspan="3"><span style="float:left;padding-left:5px;">
                                                      <input name="txtLotNum" type="text" id="txtMinBalance" class="number" onkeypress="if(event.keyCode&lt;48 ||event.keyCode&gt;57) event.returnValue=false;" onfocus="if(this.value=='不限')this.value='';" onblur="if(this.value==''|| parseInt(this.value)==0) this.value='不限';" size="5" value="不限">
                                                      <span style="vertical-align: bottom">元 时停止跟单</span></span></td>
            </tr>
            <tr>
                <td height="22" align="right"  class="stys">方案剩余金额不足定制金额时：</td>
                <td height="22" colspan="3" bgcolor="#FFFFFF" style=""><span style="float: left;">
                                                                           <span id="rdListMoneyNotEns" class="jg">
                                                                               <label>
                                                                                   <input value="true" name="rdListMoneyNotEn" type="radio" class="check">认购</label>
                                                                               <label>
                                                                                   <input value="false" name="rdListMoneyNotEn" type="radio" class="check" checked="checked">不认购</label></span>
                                                                       </span></td>
            </tr>
            <tr>
                <td height="22" align="right"  class="stys" style="padding-left: 10px">是否启用：</td>
                <td height="22" colspan="3" bgcolor="#FFFFFF" style=""><span style="float: left;">
                                                                           <span id="Span1" class="jg">
                                                                               <label>
                                                                                   <input value="true" name="rdLis" type="radio" class="check" checked="checked">启 用</label>
                                                                               <label>
                                                                                   <input value="false" name="rdLis" type="radio" class="check">停 用</label></span>
                                                                       </span></td>
            </tr>
            <tr style=" display:none;">
                <td height="28" colspan="4" align="left" bgcolor="#FFFFFF" style="padding-left: 150px;">
                    <input id="chkBoxNoInCome" type="checkbox" name="chkBoxNoInCome" class="check" onclick="docBox.changeStopStatus();">若连续
                    <input name="txtNoInCome" type="text" id="txtNoInCome" value="10" disabled="disabled" class="number" onkeypress="if(event.keyCode&lt;48 ||event.keyCode&gt;57) event.returnValue=false;" style="background-color: #CCCCCC; width: 30px;">
                    个方案均无盈利，则自动取消定制</td>
            </tr>
            
        </table>
   
        <div class="buttonrow">
            <input type="button" class="btn_ok dialogBtn" value="确定" onclick="docBox.submitDoc();" />
            <input type="button" class="dialogBtn focusBtn" value="取消" onclick="docBox.closeDocBox();" />
        </div>
    </div>
                </div>
            </td>
            <td class="itd-mid-right"></td> 
        </tr>
        <tr>
            <td class="itd-bot-left"></td>
            <td class="itd-bot-center"></td>
            <td class="itd-bot-right"></td>
        </tr>
    </table>
   
  
</div>
<script type="text/javascript">
    var docBox = {
        //当前定制信息
        options: {
            userName: "",
            userId: "",
            gameCode: "",
            gameName: "",
            gameType: "",
            docType: "0",
            buyCount: 1,
            allBuy: "不限",
            minMoney: "不限",
            maxMoney: "不限",
            isBuySchemeMoneyNot: false,
            isUsed: true,
            isAutoStop: false,
            autoStopCount: 10,
            minBalance: "不限"
        },
        //默认定制信息
        _default: {
            userName: "",
            userId: "",
            gameCode: "",
            gameName: "",
            gameType: "",
            docType: "0",
            buyCount: 1,
            allBuy: "不限",
            minMoney: "不限",
            maxMoney: "不限",
            isBuySchemeMoneyNot: false,
            isUsed: true,
            isAutoStop: false,
            autoStopCount: 10,
            minBalance: "不限"
        },
        szcList: ["ssq", "dlt", "fc3d", "pl3"],
        //设置定制信息
        setDocBox: function () {
            document.getElementById("lbApplicant").innerHTML = this.options.userName;
            document.getElementById("lbApplicant").href = "/blog/standings/" + this.options.userId;
            document.getElementById("lbLotType").innerHTML = this.options.gameName;
            document.getElementsByName("DocType")[this.options.docType].checked = true;
            document.getElementById("txtBuyMoney").value = this.options.buyCount < 0 ? "不限" : this.options.buyCount;
            document.getElementById("txtLotNum").value = this.options.allBuy < 0 ? "不限" : this.options.allBuy;
            document.getElementById("txtMinMoney").value = this.options.minMoney < 0 ? "不限" : this.options.minMoney;
            document.getElementById("txtMaxMoney").value = this.options.maxMoney < 0 ? "不限" : this.options.maxMoney;
            document.getElementById("txtMinBalance").value = this.options.minBalance < 0 ? "不限" : this.options.minBalance;
            document.getElementsByName("rdListMoneyNotEn")[this.options.isBuySchemeMoneyNot ? 0 : 1].checked = true;
            document.getElementsByName("rdLis")[this.options.isUsed ? 0 : 1].checked = true;
            document.getElementById("chkBoxNoInCome").checked = this.options.isAutoStop;
            document.getElementById("txtNoInCome").disabled = !this.options.isAutoStop;
            document.getElementById("txtNoInCome").style.backgroundColor = this.options.isAutoStop ? "#ffffff" : "#cccccc";
            document.getElementById("txtNoInCome").value = this.options.autoStopCount < 0 ? 10 : this.options.autoStopCount;
        },
        //对话框拖动对象
        //drag: new Drag("box_doc", { Handle: "drag_box_doc", Limit: true }),
        intance: new LightBox("box_doc"),
        //初始化定制对话框
        init: function (options) {
            $.extend(this.options, options);
            if (this.szcList._indexOf(this.options.gameCode.toLowerCase()) >= 0) {
                this.options.gameType = "";
            }
            this.setDocBox();
            this.showLogin();
        },
        //关闭定制对话框
        closeDocBox: function () {
            $.extend(this.options, this._default);
            this.intance.Close();
            this.setDocBox();
        },
        //切换是否自动取消定制状态
        changeStopStatus: function () {
            var isCheck = document.getElementById("chkBoxNoInCome").checked;
            document.getElementById("txtNoInCome").disabled = !isCheck;
            document.getElementById("txtNoInCome").style.backgroundColor = isCheck ? "#ffffff" : "#cccccc";
            this.options.isAutoStop = isCheck;
        },
        //定制前判断是否登录
        showLogin: function () {
            //投注前判断登录状态
            user.isLogin(function (isLogin) {
                if (!isLogin) {
                    user.LoginCallBack = function () { docBox.intance.Show(); };
                    loginDialog.Show();
                    $("#userName").focus();
                    return false;
                }
                else {
                    docBox.intance.Show();
                }
            })
        },
        //提交定制
        submitDoc: function () {
            //跟单类型
            var docTypes = document.getElementsByName("DocType");
            for (var i = 0; i < docTypes.length; i++) {
                if (docTypes[i].checked) {
                    this.options.docType = docTypes[i].value;
                }
            }

            //每次认购数量
            this.options.buyCount = document.getElementById("txtBuyMoney").value;
            //认购方案总数
            this.options.allBuy = document.getElementById("txtLotNum").value;
            //方案金额限制
            this.options.minMoney = document.getElementById("txtMinMoney").value;
            this.options.maxMoney = document.getElementById("txtMaxMoney").value;
            //余额不足停止跟单
            this.options.minBalance = document.getElementById("txtMinBalance").value;

            //方案余额不足时是否认购
            var notS = document.getElementsByName("rdListMoneyNotEn");
            for (var i = 0; i < notS.length; i++) {
                if (notS[i].checked) {
                    this.options.isBuySchemeMoneyNot = notS[i].value;
                }
            }

            //是否停用
            var useds = document.getElementsByName("rdLis");
            for (var i = 0; i < useds.length; i++) {
                if (useds[i].checked) {
                    this.options.isUsed = useds[i].value;
                }
            }

            //方案无盈利自动取消定制
            this.options.autoStopCount = document.getElementById("txtNoInCome").value;

            var tagUrl = "/doc_setup";
            $.post(tagUrl, this.options, function(result) {
                if (result.IsSuccess) {
                    alertTip("操作成功", "ok");
                    $("#boxAlertOkButton").click(function() {
                        alertClose();
                        location.href = location.href;
                    });
                    //setTimeout(function () { location.href = location.href; }, 500)
                } else {
                    alertTip(result.Message, "err");
                    return false;
                }
            });

            this.closeDocBox();
        }
    }
</script>

<div id="loginLay" class="pop-comm login_pop" style="display: none;">
    <div class="iDialog_dlkuang">
        <div class="iDialogHead">
            <h1>
                账号登录</h1>
        </div>
        <a href="javascript:void(0)" onclick="loginDialog.Close();" id="DialogClose" hidefocus="true"
            class="iDialogClose"></a>
        <div class="iDialogBody">
            <div class="iDialogMain">
                <ul>
                    <li><span class="mcInputBoxUser">
                        <input type="text" name="u" id="lu" tabindex="1" placeholder="输入用户名或手机号" autocomplete="off"
                            class="loginInput" />
                    </span><a id="toRegster" href="/statichtml/register.html" target="_blank">免费注册</a>
                    </li>
                    <li><span class="mcInputBoxPass">
                        <input type="password" name="p" id="lp" tabindex="2" placeholder="密码" autocomplete="off"
                            class="loginInput" />
                    </span><a target="_blank" href="/user/forget">忘记密码</a> </li>
                    <li>
                        <div id="login_captcha">
                        </div>
                        <span id="verifycodeTip" class="onShow" style="display: none;"><b>请拖动验证滑块到正确位置!</b></span>
                        <br />
                    </li>
                    <li class="errAndSaveLi">
                        <div style="display: none;" id="error_tips" class="dl_tips">
                            您输入的账户名和密码不匹配，请重新输入。
                        </div>
                        <a id="link_go_activity" style="display: none;">去激活</a> </li>
                    <li class="leftLi"><a tabindex="3" id="floginbtn" class="iDialogBtn" href="javascript:void(0)">
                        <span>登 录</span></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    //login_getcaptcha();

    //new Drag("loginLay", { Handle: "drag_poplogin", Limit: true });
    var loginDialog = new LightBox("loginLay", { onShow: initLoginBox });

    function initLoginBox() {

        $("#error_tips").html("").hide();
        if ($.cookie("remember") == "true") {
            $("#remember").attr("checked", true);
            $("#lu").val($.cookie("userName"));
            $("#lp").val($.cookie("userPwd"));
        } else {
            $("#remember").removeAttr("checked");
            $("#lu").val("").focus();
            $("#lp").val("");
        }
    }

    function setLoginButton(isShow) {
        if (isShow) {
            document.getElementById("login_table").style.display = "";
            document.getElementById("login_progress").style.display = "none";
            document.getElementById("login_table").disabled = false;
        } else {
            $("#error_tips").html("").hide();
            document.getElementById("login_table").disabled = true;
            document.getElementById("login_table").style.display = "none";
            document.getElementById("login_progress").style.display = "block";
        }
    }
    function saveUserInfo() {
        if ($("#remember").is(":checked")) {
            var userName = $("#lu").val();
            var userPwd = $("#lp").val();
            $.cookie("remember", "true", { expires: 7 });
            $.cookie("userName", userName, { expires: 7 });
            $.cookie("userPwd", userPwd, { expires: 7 });
        } else {
            $.cookie("remember", "false", { expires: -1 });
            $.cookie("userName", '', { expires: -1 });
            $.cookie("userPwd", '', { expires: 7 });
        }
    }

    $("#floginbtn").live("click", function () {
        var userName = $("#lu").val();
        var passWord = $("#lp").val();

        if (!userName) {
            $("#error_tips").html("请输入您的登录账号").show();
            $("#lu").focus();
            return false;
        }
        if (!passWord) {
            $("#error_tips").html("请输入正确的密码").show();
            $("#lp").focus();
            return false;
        }
        //        if (!GT_status) {
        //            $("#error_tips").html("请拖动验证滑块到正确位置").show();
        //            $("#lp").focus();
        //            return false;
        //        }
        //        var geetest_challenge = $("[name='geetest_challenge']").val();
        //        if (!geetest_challenge && $("[name='geetest_challenge']").length == 2) {
        //            geetest_challenge = $("[name='geetest_challenge']")[1].value;
        //        }
        //        var geetest_validate = $("[name='geetest_validate']").val();
        //        if (!geetest_validate && $("[name='geetest_validate']").length == 2) {
        //            geetest_validate = $("[name='geetest_validate']")[1].value;
        //        }
        //        var geetest_seccode = $("[name='geetest_seccode']").val();
        //        if (!geetest_seccode && $("[name='geetest_seccode']").length == 2) {
        //            geetest_seccode = $("[name='geetest_seccode']")[1].value;
        //        }
        var url = "http://127.0.0.1:8080/lottery/user/loginuser123";
        //        var data = { userName: userName, passWord: passWord, geetest_challenge: geetest_challenge, geetest_validate: geetest_validate, geetest_seccode: geetest_seccode };
        var data = { userName: userName, passWord: passWord };
        var success = function (result) {
            if (result.IsSuccess) {
                //setLoginButton(true);
                loginDialog.Close();
                saveUserInfo();
                $("#lu").val("");
                $("#lp").val("");
                $("#error_tips").html("").hide();
                user.refresh(user.LoginCallBack);
                return false;
            } else {
                //setLoginButton(true);
                //$("#error_tips").html(result.Message).show();
                //                console.warn(result.UserId)
                //                if (result.UserId) {
                //                    $("#link_go_activity").attr("href", "/user/registervalidamobile?userid=" + result.UserId).show();
                //                }
                if (result.Message == "用户未激活") {
                     alert("您的账户存在异常行为，为了保障您的资金安全，暂停登录，请联系在线客服处理");
                    //alert("账户存在异常行为，请联系在线客服处理解封");
                }
                else {
                    $("#error_tips").html(result.Message).show();
                }
                return false;
            }
        };
        $.post(url, data, success);
        return false;
    });
    $("#floginreset").die().live("click", function () {
        $("#loginForm")[0].reset();
    });
    $("body").keydown(function (e) {
        if (e.which == 13) {
            if (!user.isLogin(function () { }) && $("#loginLay").is(":visible")) {
                $("#floginbtn").click();
            }
        }
    });
    //刷新验证码
    function refreshCode() {
        $("#yzmtext").val("").focus();
        $("#yzmimg").css("display", "inline-block").attr("src", "/user/createvalidatecode?r=" + Math.random().toFixed(5));
    }
</script>
<!--信息确认框 开始-->
<div id="bet_confirm">
  
     <table>
        <tr>
            <td class="itd-top-left"></td>
            <td class="itd-top-center"></td>
            <td class="itd-top-right"></td>
        </tr>
        <tr>
            <td class="itd-mid-left"></td>
            <td class="itd-mid-center">
                <div class="dialogContent">
      
    <h3 id="drag_confirm" class="pop-comm-top">
       投注内容
        <a class="close" id="btn_confirm_close">关闭</a>
    </h3>
    <div class="pop-comm-middle">
        <div id="bet_confirm_content">
        </div>
        <div class="buttonrow">
            <input type="button" id="btn_confirm_yes" value="确定" class="dialogBtn"/>
            <input type="button" id="btn_confirm_no" value="取消" class="dialogBtn focusBtn"/>
        </div>
    </div>
                </div>
            </td>
            <td class="itd-mid-right"></td> 
        </tr>
        <tr>
            <td class="itd-bot-left"></td>
            <td class="itd-bot-center"></td>
            <td class="itd-bot-right"></td>
        </tr>
    </table>
</div>
<script type="text/javascript">
    //new Drag("bet_confirm", { Handle: "drag_confirm", Limit: true });
    var confirmLightBox = new LightBox("bet_confirm");

    function confirmTip(message, func1, func2) {
        var confirm_yes_Event = function () {
            confirmLightBox.Close();
            func1();
            document.getElementById("bet_confirm_content").innerHTML = "";
        };
        var confirm_no_Event = function() {
            confirmLightBox.Close();
            func2();
            document.getElementById("bet_confirm_content").innerHTML = "";
        };
        document.getElementById("bet_confirm_content").innerHTML = message;
        document.getElementById("btn_confirm_yes").onclick = confirm_yes_Event;
        document.getElementById("btn_confirm_no").onclick = confirm_no_Event;
        document.getElementById("btn_confirm_close").onclick = confirm_no_Event;
        confirmLightBox.Show();
        $("#btn_confirm_yes").focus();
    } 
    function confirmTipx(message, func1, func2) {
        var confirm_yes_Event = function () {
            func1();
        };
        var confirm_no_Event = function () {
            confirmLightBox.Close();
            func2();
            document.getElementById("bet_confirm_content").innerHTML = "";
        };
        document.getElementById("bet_confirm_content").innerHTML = message;
        document.getElementById("btn_confirm_yes").onclick = confirm_yes_Event;
        document.getElementById("btn_confirm_no").onclick = confirm_no_Event;
        document.getElementById("btn_confirm_close").onclick = confirm_no_Event;
        confirmLightBox.Show();
        $("#btn_confirm_yes").focus();
    }
</script>
<!--信息确认框 结束-->
<!--进度提示框 开始-->
<div id="bet_progress" style="display: none;">
        <table>
        <tr>
            <td class="itd-top-left"></td>
            <td class="itd-top-center"></td>
            <td class="itd-top-right"></td>
        </tr>
        <tr>
            <td class="itd-mid-left"></td>
            <td class="itd-mid-center">
                <div class="dialogContent">
      <h3 class="pop-comm-top">操作进度提示</h3>
    <div class="pop-comm-middle">
        <i class="icon-loading"></i>
        <span id="bet_progress_message" class="message" style="float: none;font-size: 14px;"></span>
    </div>
                </div>
            </td>
            <td class="itd-mid-right"></td> 
        </tr>
        <tr>
            <td class="itd-bot-left"></td>
            <td class="itd-bot-center"></td>
            <td class="itd-bot-right"></td>
        </tr>
    </table>
   
</div>
<script type="text/javascript">
    var progressLightBox = new LightBox("bet_progress");

    //执行进度函数
    var progress = function(message) {
        $("#bet_progress_message").text(message);
        progressLightBox.Show();
    };
    //关闭进度提示
    function endprogress() {
        progressLightBox.Close();
    }
</script>
<!--进度提示框 结束-->
<div id="alertBoxDiv" style="display:none;"   >
    <table>
        <tr>
            <td class="itd-top-left"></td>
            <td class="itd-top-center"></td>
            <td class="itd-top-right"></td>
        </tr>
        <tr>
            <td class="itd-mid-left"></td>
            <td class="itd-mid-center">
                <div class="dialogContent">
                       <h3 id="drag_alert" class="pop-comm-top" style="width: 442px;">
                          大奖网提醒您
                             <a class="close" onclick="alertClose();">关闭</a>
    </h3>
    <div class="pop-comm-middle">
        <div class="msg-content">
            <i class="dialogStatus ok"></i>
            <span id="alert_message" class="message" style="width: 331px; display: block; float: left;  padding-left: 6px;font:15px/1.5 arial,'宋体',tahoma,helvetica; position:relative;top: 5px;white-space:normal;word-break: break-all;word-wrap: break-word"></span>
        </div>
        <div class="buttonrow">
            <input type="button" id="boxAlertOkButton" value="知道了" class="dialogBtn" onclick="alertClose();"/>
        </div>
    </div>
                </div>
            </td>
            <td class="itd-mid-right"></td> 
        </tr>
        <tr>
            <td class="itd-bot-left"></td>
            <td class="itd-bot-center"></td>
            <td class="itd-bot-right"></td>
        </tr>
    </table>
 
  
    

    
</div>
<script type="text/javascript">
    new Drag("alertBoxDiv", { Handle: "drag_alert", Limit: true });
    var alertBox = new LightBox("alertBoxDiv", { onShow: function () { document.getElementById("boxAlertOkButton").focus(); }, onClose: function () { document.getElementById("boxAlertOkButton").blur(); } });
    //重写系统alert函数
    //var alert = function (message, icon) {
    //    if (null != icon) {
    //        var cs = "icon-err";
    //        if (icon == "err") { cs = "icon-err"; }
    //        $("#alertBoxDiv i").attr("class", cs);
    //    }
    //    $("#alert_message").html(message);
    //    alertBox.Show();
    //}

    var $titleSp = $("#drag_alert span");
    function alertCom(title, message) {
        $titleSp.html(title);
        $("#alert_message").prev().hide().end().html(message);
        alertBox.Show();
    }

    function alertTip(message, icon) {
        if (null != icon) {
            $("#alertBoxDiv i").addClass(icon);
        }
        $("#alert_message").html(message);
        alertBox.Show();
    }

    function alertClose() {
        alertBox.Close();
        $("#alertBoxDiv i").attr("class", "dialogStatus");
        //location.href = location.href;
    }
</script>

</body>
</html>
