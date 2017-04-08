<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!--ok-->

    <div class="unlogin">
    	<div class="signinfo">
            <span class="welcome">您好，彩乐乐欢迎您的到来！</span>
            <a href="javascript:;" class="signin" onclick="openLoginWindow();">请登录</a><s>|</s>
            <a href="http://www.cailele.com/member/register.php" target="_blank" class="reg">免费注册</a><s id="loginSeparator">|</s>
            <a id="alipayunLogin" href="http://www.cailele.com/member/loginZFB.php?action=login" class="alipay"><i class="iconfont_hd">&#xe61c;</i>支付宝登录</a><s>|</s>
        </div>
        <ul id="unloginUL" class="cllmenu third_party">
            <li class="menu" onmouseover="this.className='menu third_party menu_hover'" onmouseout="this.className='menu third_party'">
                <div class="menu_hd"><a href="http://www.cailele.com/member/loginQQ.php?action=login"><i class="iconfont_hd">&#xe616;</i>QQ登录</a><i class="arrow"><s class="s1"></s><s class="s2"></s></i></div>
                <div class="menu_bd meun_list">
                    <div class="menu_bd_panel">
                        <a href="http://www.cailele.com/member/loginTianYa.php?action=login" class="tianya"><i class="iconfont_hd">&#xe61e;</i>天涯登录</a>
                        <a href="http://www.cailele.com/member/loginBaidu.php?action=login" class="baidu"><i class="iconfont_hd">&#xe612;</i>百度登录</a>
                        <a href="http://www.cailele.com/member/loginCFT.php?action=login" class="tenpay"><i class="iconfont_hd">&#xe61d;</i>财付通登录</a>
                        <a href="http://www.cailele.com/member/loginE189.php?action=login" class="tianyi"><i class="iconfont_hd">&#xe61f;</i>天翼登录</a>
                    </div>
                </div>
            </li>
        </ul>
    </div>

