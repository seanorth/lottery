<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!--ok-->


    <div class="logged">
    	<div class="loginedinfo">
            <span class="welcome">欢迎来到彩乐乐！</span>
        </div>
        <ul class="cllmenu menuaccount">
            <li class="menu myaccount" onmouseover="this.className='menu myaccount menu_hover'" onmouseout="this.className='menu myaccount'">
                <div class="menu_hd"><a href="http://www.cailele.com/uc/index.php" class="user">${user.username}</a><i class="arrow"><s class="s1"></s><s class="s2"></s></i></div>
                <div class="menu_bd meun_boxing">
                    <div class="menu_bd_panel">
                        <div class="accbox">
                        	<p class="operate"><a href="javascript:void(0);" onclick="load_CheckLogin(1);"><i class="iconfont">&#xe651;</i></a></p>
                        	<p class="surplus"><span class="label">帐户余额：</span><em class="count">${user.balance}</em>元</p>
                            <p class="freeze"><span class="label">冻结金额：</span><em class="count">0.0</em>元</p>
                            <p class="integral"><span class="label">可用积分：</span><em class="count">0</em>分</p>
                            <p class="gotouc"><a href="http://www.cailele.com/uc/index.php">进入个人中心</a></p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="finance">
        	<span class="cllbtn rech"><a href="http://www.cailele.com/uc/chargeInput.php" class="default" target="_blank"><i></i><em>充值</em></a></span>
            <span class="cllbtn draw"><a href="http://www.cailele.com/uc/drawing.php" class="default" target="_blank"><i></i><em>提款</em></a></span>
            <span class="cllbtn getpromo"><a href='http://www.cailele.com/uc/index.php' class="default" target="_blank"><i></i><em>领积分</em></a></span>
            
			
            <a href="javascript:void(0);" class="exit" onclick="logout();">[退出]</a>
            
            <input type="hidden" name="ceratePlayDate" id="ceratePlayDate" value=''/>
            <input type="hidden" name="playStatus" id="playStatus" value="0"/>
        </div>
    </div>
    <script type="text/javascript"></script>
