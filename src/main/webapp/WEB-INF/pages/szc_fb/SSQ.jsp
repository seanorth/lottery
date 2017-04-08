<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<div class="crumb">
    <ul>
        <li class="a">您当前的位置：</li>
        <li><a href="/">首页</a>&nbsp;&gt; &nbsp;</li>
        <li><a target="_blank" href="/statichtml/buy/index.html">购彩大厅</a>&nbsp;&gt;&nbsp;</li>
        <li>双色球</li>
    </ul>
</div>
<div class="navi ssq_banner">
    <div class="nav_logo">
    </div>
    <div class="nav_box">
        <h3>双色球</h3>
    </div>
    <div class="fl sale-time">
        <strong class="gameperiod">第<span id="top_curissuse">0000-000</span>期</strong>
        <div style="display: block" class="nav_time">
            双色球停售时间：<span id="project_endtime">0000-00-00 00:00:00</span></div>
    </div>
    <div class="nav-bottom">
        <p class="nav_links">
                <a href="/statichtml/lotterytrend/ssq/jbzs30.html">双色球走势图</a>
            |<a target="_blank" href="/staticHtml/help/playRules/ssq1.html">双色球玩法介绍</a></p>
    </div>
</div>
<div class="menus">
    <div class="nav_menu_a" style="width: 100%;">
        
        <a class="on" href="javascript:void 0" style="margin-left: 20px;">选号投注</a>
            <a href="/chipped/ssq" style="margin-left:5px;">参与合买</a>
    </div>
    <div class="sub_nav">
        <div class="sub_nav_b">
            <div id="GameTypeList" class="sub_nav_in">
                    <a href="javascript:;" url="BZXH" val="DS" data-t="DS"><span>标准选号</span></a>
    <a href="javascript:;" url="TDTZ" val="DT" way="2" data-t="DT"><span>胆拖投注</span></a>
    <a href="javascript:;" url="SGSR" val="DS" way="4" data-t="DS"><span>手工输入</span></a>

                <span id="clockTime" class="sys_clock"><em>00</em>天<em>00</em>时<em>00</em>分<em>00</em>秒</span>
                <span id="clockText1" class="sub_span"><span id="clockIssuseText" style="color: #f00;">
                </span>期投注剩余时间:</span>
            </div>
        </div>
    </div>
</div>
<div class="lottery_wrap">
    <div class="ssq_main clear">
        <div class="buy_single ssq">
            <div class="ball_area" id="GameBallsContanior">
<div id="SSQ_BZXH" style="display:none;">
<h1 class="playprompt">
    <em>玩法提示：</em>
    由至少6个红球和1个篮球组成，单注奖金<b class="fred">500</b>万元。 
    <a href="javascript:" class="szc_notice ">
        <strong class="sl">示例</strong> 
        <span>选号：01 02 03 04 05 06+01<br />
            开奖：<strong class="red">
                    <b class="slnum">01</b> 
                    <b class="slnum">02</b> 
                    <b class="slnum">03</b> 
                    <b class="slnum">04</b> <b class="slnum">05</b> <b class="slnum">06</b>+<b
                                                                                                                                                                class="blnum">01</b>
                </strong><br />奖金：5000000元。</span> 
    </a>
</h1>
<!--  红球选择  -->
<div class="red_balls redrow">
    <div class="ssq_red">
        <strong>红球</strong> &nbsp;请选择6-20个红球
    </div>
    <div class="szc_num">
        <div class="szc_xuanhao">
            选号</div>
        
    </div>
    <ul class="clearfix ball">
        <li class="numbers"><b>01</b><span></span></li>
        <li class="numbers"><b>02</b><span></span></li>
        <li class="numbers"><b>03</b><span></span></li>
        <li class="numbers"><b>04</b><span></span></li>
        <li class="numbers"><b>05</b><span></span></li>
        <li class="numbers"><b>06</b><span></span></li>
        <li class="numbers"><b>07</b><span></span></li>
        <li class="numbers"><b>08</b><span></span></li>
        <li class="numbers"><b>09</b><span></span></li>
        <li class="numbers"><b>10</b><span></span></li>
        <li class="numbers"><b>11</b><span></span></li>
        <li class="numbers"><b>12</b><span></span></li>
        <li class="numbers"><b>13</b><span></span></li>
        <li class="numbers"><b>14</b><span></span></li>
        <li class="numbers"><b>15</b><span></span></li>
        <li class="numbers"><b>16</b><span></span></li>
        <li class="numbers"><b>17</b><span></span></li>
        <li class="numbers"><b>18</b><span></span></li>
        <li class="numbers"><b>19</b><span></span></li>
        <li class="numbers"><b>20</b><span></span></li>
        <li class="numbers"><b>21</b><span>6</span></li>
        <li class="numbers"><b>22</b><span></span></li>
        <li class="numbers"><b>23</b><span></span></li>
        <li class="numbers"><b>24</b><span></span></li>
        <li class="numbers"><b>25</b><span></span></li>
        <li class="numbers"><b>26</b><span></span></li>
        <li class="numbers"><b>27</b><span></span></li>
        <li class="numbers"><b>28</b><span></span></li>
        <li class="numbers"><b>29</b><span></span></li>
        <li class="numbers"><b>30</b><span></span></li>
        <li class="numbers"><b>31</b><span></span></li>
        <li class="numbers"><b>32</b><span></span></li>
        <li class="numbers"><b>33</b><span></span></li>
    </ul>
    <p class="random_selection">
        <select id="rand_sel_red">
            <option selected="selected" value="6">6</option>
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
        <a t="1" title="连续点击将获取不同的红球" href="javascript:ballBox.rand.red.rand();" class="random_btn red_random_btn">机选红球</a>
        <a title="清空所有已选红球" t="1" href="javascript:ballBox.rand.red.clean();" class="clearbtn">清空</a>
    </p>
</div>
<div class="blue_balls bluerow">
    <div class="ssq_red ssq_blue">
        <strong>蓝球</strong> &nbsp;请选择1-16个蓝球</div>
    <ul class="clearfix ball">
        <li class="numbers"><b>01</b> <span>26</span> </li>
        <li class="numbers"><b>02</b> <span>3</span> </li>
        <li class="numbers"><b>03</b> <span>46</span> </li>
        <li class="numbers"><b>04</b> <span>27</span> </li>
        <li class="numbers"><b>05</b> <span>54</span> </li>
        <li class="numbers"><b>06</b> <span>7</span> </li>
        <li class="numbers"><b>07</b> <span>2</span> </li>
        <li class="numbers"><b>08</b> <span>21</span> </li>
        <li class="numbers"><b>09</b> <span>20</span> </li>
        <li class="numbers"><b>10</b> <span>1</span> </li>
        <li class="numbers"><b>11</b> <span>0</span> </li>
        <li class="numbers"><b>12</b> <span>8</span> </li>
        <li class="numbers"><b>13</b> <span>23</span> </li>
        <li class="numbers"><b>14</b> <span>11</span> </li>
        <li class="numbers"><b>15</b> <span>35</span> </li>
        <li class="numbers"><b>16</b> <span>10</span> </li>
    </ul>
    <p class="random_selection">
        <select id="rand_sel_blue">
            <option selected="selected" value="1">1</option>
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
        <a t="2" title="连续点击可获取不同的蓝球" href="javascript:ballBox.rand.blue.rand();" class="random_btn blue_random_btn">机选蓝球</a> 
        <a title="清空所有已选蓝球" t="2" href="javascript:ballBox.rand.blue.clean();" class="clearbtn">清空</a>
    </p>
</div>
</div>

<div id="SSQ_TDTZ" style="display:none;">
<h1 class="playprompt">
                    <em>玩法提示：</em> 选择1-5个你认为必出的红球号码（胆码），2个以上你认为可能会出的红球号码（拖码），至少一个蓝球号码组合进行投注！单注奖金 
                    <b class="fred">500</b>万元！ 
                    <a href="javascript:" class="szc_notice ">
                        <strong class="sl">示例</strong>
                        <span>选号：[胆]01[拖]02 03 04 05 06 07+01<br />
                            开奖：<strong class="red"><b class="slnum">01</b> <b class="slnum">02</b> 
                                   <b class="slnum">03</b> <b class="slnum">04</b> <b class="slnum">05</b> <b class="slnum">06</b>+
                                   <b class="blnum">01</b></strong><br />
                            奖金：5000000元。</span> 
                    </a>
                </h1>
                <div class="danma clear">
                    <div style="top: 95px; *top: 102px;" class="szc_num">
                        <div class="szc_xuanhao">
                            选号</div>
                        <div class="szc_yilou">
                            <cite title="指该号码自上次开出之后到当前期没有出现的次数" val="yl">遗漏</cite>
                            <em>
                                <a title="指该号码自上次开出之后到当前期没有出现的次数" val="lr" href="#">冷热</a>
                                <a title="隐藏" val="hd" href="#">隐藏</a>
                            </em>
                        </div>
                    </div>
                    <div class="dan_con">
                        <strong>胆码区</strong> &nbsp;您认为<em class="c_ba1d21">必出</em>的号码
                    </div>
                    <div class="red_balls danma">
                        <p class="dantuo_title"><strong class="c_ba1d21">红球</strong>至少选择1个，最多5个</p>
                        <ul class="clearfix ball">
                            <li class="numbers"><b>01</b><span></span></li>
                            <li class="numbers"><b>02</b><span></span></li>
                            <li class="numbers"><b>03</b><span></span></li>
                            <li class="numbers"><b>04</b><span></span></li>
                            <li class="numbers"><b>05</b><span></span></li>
                            <li class="numbers"><b>06</b><span></span></li>
                            <li class="numbers"><b>07</b><span></span></li>
                            <li class="numbers"><b>08</b><span></span></li>
                            <li class="numbers"><b>09</b><span></span></li>
                            <li class="numbers"><b>10</b><span></span></li>
                            <li class="numbers"><b>11</b><span></span></li>
                            <li class="numbers"><b>12</b><span></span></li>
                            <li class="numbers"><b>13</b><span></span></li>
                            <li class="numbers"><b>14</b><span></span></li>
                            <li class="numbers"><b>15</b><span></span></li>
                            <li class="numbers"><b>16</b><span></span></li>
                            <li class="numbers"><b>17</b><span></span></li>
                            <li class="numbers"><b>18</b><span></span></li>
                            <li class="numbers"><b>19</b><span></span></li>
                            <li class="numbers"><b>20</b><span></span></li>
                            <li class="numbers"><b>21</b><span></span></li>
                            <li class="numbers"><b>22</b><span></span></li>
                            <li class="numbers"><b>23</b><span></span></li>
                            <li class="numbers"><b>24</b><span></span></li>
                            <li class="numbers"><b>25</b><span></span></li>
                            <li class="numbers"><b>26</b><span></span></li>
                            <li class="numbers"><b>27</b><span></span></li>
                            <li class="numbers"><b>28</b><span></span></li>
                            <li class="numbers"><b>29</b><span></span></li>
                            <li class="numbers"><b>30</b><span></span></li>
                            <li class="numbers"><b>31</b><span></span></li>
                            <li class="numbers"><b>32</b><span></span></li>
                            <li class="numbers"><b>33</b><span></span></li>
                        </ul>
                    </div>
                </div>
                <div class="clear">
                    <div class="tuo_con">
                        <strong>拖码区</strong> &nbsp;您认为<em class="c_ba1d21">可能出</em>的号码
                    </div>
                    <div class="red_balls tuoma">
                        <p class="dantuo_title"><strong class="c_ba1d21">红球</strong>至少选择2个</p>
                        <ul class="clearfix ball">
                            <li class="numbers"><b>01</b><span></span></li>
                            <li class="numbers"><b>02</b><span></span></li>
                            <li class="numbers"><b>03</b><span></span></li>
                            <li class="numbers"><b>04</b><span></span></li>
                            <li class="numbers"><b>05</b><span></span></li>
                            <li class="numbers"><b>06</b><span></span></li>
                            <li class="numbers"><b>07</b><span></span></li>
                            <li class="numbers"><b>08</b><span></span></li>
                            <li class="numbers"><b>09</b><span></span></li>
                            <li class="numbers"><b>10</b><span></span></li>
                            <li class="numbers"><b>11</b><span></span></li>
                            <li class="numbers"><b>12</b><span></span></li>
                            <li class="numbers"><b>13</b><span></span></li>
                            <li class="numbers"><b>14</b><span></span></li>
                            <li class="numbers"><b>15</b><span></span></li>
                            <li class="numbers"><b>16</b><span></span></li>
                            <li class="numbers"><b>17</b><span></span></li>
                            <li class="numbers"><b>18</b><span></span></li>
                            <li class="numbers"><b>19</b><span></span></li>
                            <li class="numbers"><b>20</b><span></span></li>
                            <li class="numbers"><b>21</b><span></span></li>
                            <li class="numbers"><b>22</b><span></span></li>
                            <li class="numbers"><b>23</b><span></span></li>
                            <li class="numbers"><b>24</b><span></span></li>
                            <li class="numbers"><b>25</b><span></span></li>
                            <li class="numbers"><b>26</b><span></span></li>
                            <li class="numbers"><b>27</b><span></span></li>
                            <li class="numbers"><b>28</b><span></span></li>
                            <li class="numbers"><b>29</b><span></span></li>
                            <li class="numbers"><b>30</b><span></span></li>
                            <li class="numbers"><b>31</b><span></span></li>
                            <li class="numbers"><b>32</b><span></span></li>
                            <li class="numbers"><b>33</b><span></span></li>
                        </ul>
                    </div>
                    <div class="blue_balls bluerow" id="ssq_dantuo_blue">
                        <div class="dantuo_title"><strong class="c_2042a2">蓝球</strong> &nbsp;至少选择1个</div>
                        <ul class="clearfix">
                            <li class="numbers"><b>01</b> <span>-</span> </li>
                            <li class="numbers"><b>02</b> <span>-</span> </li>
                            <li class="numbers"><b>03</b> <span>-</span> </li>
                            <li class="numbers"><b>04</b> <span>-</span> </li>
                            <li class="numbers"><b>05</b> <span>-</span> </li>
                            <li class="numbers"><b>06</b> <span>-</span> </li>
                            <li class="numbers"><b>07</b> <span>-</span> </li>
                            <li class="numbers"><b>08</b> <span>-</span> </li>
                            <li class="numbers"><b>09</b> <span>-</span> </li>
                            <li class="numbers"><b>10</b> <span>-</span> </li>
                            <li class="numbers"><b>11</b> <span>-</span> </li>
                            <li class="numbers"><b>12</b> <span>-</span> </li>
                            <li class="numbers"><b>13</b> <span>-</span> </li>
                            <li class="numbers"><b>14</b> <span>-</span> </li>
                            <li class="numbers"><b>15</b> <span>-</span> </li>
                            <li class="numbers"><b>16</b> <span>-</span> </li>
                        </ul>
                    </div>
                </div>
</div>

<div id="SSQ_SGSR" style="display:none;">
<div class="game-ballsmain">
    
    <h1 class="playprompt"><em class="">手工录入：</em>至少选择6个红球和一个篮球，最高奖金<b class="red">1000万</b>元</h1>
        <div class="import_numberarea">
        <p class="tip2 gray">
            <i></i>请把已有号码复制(导入)文本框，每注号码用空格或换行符(回车)隔开，每个号码用"," "." "+"分开，也可不使用符号 [仅支持单式]
        </p>
        <textarea id="import_numberarea" class="upload_body"></textarea>
        <p class="rdesc gray">
            <b>号码格式：</b><br />
01,02,03,04,05,06|07<br />
01.02.03.04.05.06|07<br />
01+02+03+04+05+06|07<br />
010203040506|07<br />
        </p>
        <div class="clearfix">
        </div>
        <div class="import_buttonrow">
            <form method="post" action="/UploadNumber" enctype="multipart/form-data" id="importNumberForm">
            <input type="file" id="import_filepath" name="import_file" size="30" />
            </form>
            <input type="button" class="upbtn" value="导入" id="btn_importnumber" /><span class="yellow">
                [支持记事本，导入内容覆盖原有内容]</span>
            <div class="clear">
            </div>
        </div>
    </div>

</div>
</div>
            </div>
            <div class="select_result">
                <span id="betstatics">您当前选中了 共 <b id="items" class="fred">0</b> 注，共 <b id="sum" class="fred">
                    0</b> 元 </span>
            </div>
            <p class="sure">
                <input type="button" title="确认选号" class="addbtn disabled" id="addToListBtn" onclick="ballBox.betAdd();" />
                <a id="clearNumberBtn" href="javascript:ballBox.rand.cleanBall();">清空全部</a>
            </p>
            <div class="ssq_entry">
                <div class="selected_list">
                    <ul id="BetNumberListContanior">
                    </ul>
                </div>
                <label class="cite_title" for="jxBtn1">
                    <input type="button" id="jxBtn1" value="机选一注" class="del_all1" onclick="ballBox.rand.nrand(1);" />
                </label>
                <label class="cite_title" for="jxBtn5">
                    <input type="button" id="jxBtn5" value="机选五注" class="del_all1" onclick="ballBox.rand.nrand(5);" />
                </label>
                <input type="text" maxlength="3" class="jx_txt" id="jxBtnTxt" value="10注" onkeyup="this.value=this.value.replace(/[^\d]/g,'')"
                    onfocus="ballBox.jxBtnFocus(this);" onblur="ballBox.jxBtnBlur(this);" />
                <label class="cite_title" for="jxBtn">
                    <input type="button" id="jxBtn" value="机选" class="del_all2" oncontextmenu="return false;"
                        onclick="ballBox.rand.nrand(document.getElementById('jxBtnTxt').value);" />
                </label>
                <label for="removeAllBtn">
                    <input type="button" id="removeAllBtn" value="清空列表" class="del_all1 gray_but" name="Submit2"
                        onclick="bet.delAll();" />
                </label>
                <div class="user_account">
                    <span>共 <em id="totalItems">0</em> 注，</span> <span class="multiple_span" id="multipleInfo">
                        <span>我要买</span>
                        <input type="button" accesskey="-" id="beiDown" class="sub_btn sub_btn_des" />
                        <input type="text" class="muti_input" size="5" value="1" id="multiple" />
                        <input type="button" accesskey="=" id="beiUp" class="add_btn" />倍 <b class="gray">(最高限投99999倍)</b>，
                    </span><span>合计金额 <em id="totalSum">0</em> 元</span>
                </div>
                <div class="clear">
                </div>
                <div id="buyType" class="touzhu_modo">
                    <span>投注方式：</span>
                    <label hidefocus="true" for="b0">
                        <input type="radio" title="由购买人自行全额购买彩票" checked="checked" id="b0" value="buyDg"
                            name="btype" onclick="normal.normalClick(this);" />代购
                    </label>
                        <label hidefocus="true" for="b1">
                            <input type="radio" title="多人出资购买彩票，奖金按购买比例分享" id="b1" value="buyHm" name="btype"
                                onclick="hemai.init(this);" />发起合买
                        </label>
                    <label hidefocus="true" for="b2">
                        <input type="radio" title="连续多期购买同一个（组）号码" id="b2" value="buyChase" name="btype"
                            onclick="chase.init(this);" />我要追号
                    </label>
                    <span id="buyTypeTip" class="tip">由购买人自行全额购买彩票</span>
                </div>
                <div class="groupBox">
                        <!--我要合买-->
                        <div style="display: none; padding-top: 5px" id="buyHm" class="project_cont buyhm">
                            <dl>
                                <dt>截止时间：</dt><dd id="project_time" class="project_attr">0000-00-00 00:00:00</dd>
                                <dt style="display: none;"><em class="red">* </em>我要分为：</dt>
                                <dd style="display: none;">
                                    <label for="splitCount">
                                        <input type="text" name="splitCount" id="splitCount" size="3" disabled="disabled"
                                            onkeydown="number_check(this,event)" onchange="hemai.calInvestment()" class="in_text" />份
                                    </label>
                                    <span class="project_per">每份<em class="fred" id="splitCountPercent">0</em>元</span>
                                </dd>
                                <dt><em class="red">* </em>我要认购：</dt>
                                <dd>
                                    <label for="masterBuy">
                                        <input type="text" name="masterBuy" id="masterBuy" size="3" onkeydown="number_check(this,event)"
                                            onkeyup="hemai.calInvestment()" class="in_text" />元
                                    </label>
                                    <span>(<i class="fred" id="masterBuy_percent">0%</i>) </span><a style="color: Red;">
                                        认购的金额必须≥总金额的5%</a>
                                </dd>
                                <dt><em class="red">* </em>我要保底：</dt>
                                <dd>
                                    <label for="baodi">
                                        <input type="text" class="in_text" onkeyup="hemai.calInvestment()" onkeydown="number_check(this,event)"
                                            size="3" id="baodi" name="baodi" />元
                                    </label>
                                    <span>(<i class="fred" id="baodi_percent">0</i>%)</span>
                                    <input style="vertical-align: -2px;" type="checkbox" onclick="hemai.calInvestment();"
                                        class="check" value="all" id="baodiAll" name="baodiAll" />全额保底 <a class="notice bottom"
                                            href="javascript:void 0">
                                            <label style="display: none;">
                                                <code class="notice-inner">保底：合买保底发起时，系统将会先从发起人账户内扣除相应的金额，若合买失败，或者合买未全部认购满，则会使用设置的保底金额自动购买未满部分保证合买成功，若设置的保底金额还有剩余资金，将自动返回到发起人账户内。<br />
                                                    注：全额保底的方案不可撤单</code><i></i> <i class="i"></i>
                                            </label>
                                        </a>
                                </dd>
                                <dt>保密类型：</dt>
                                <dd>
                                    <p class="secrecy_lab">
                                        <label class="red" style="cursor: pointer">
                                            <input type="radio" class="check" onclick="hemai.SelectRadio('Secret', this);" checked="checked"
                                                value="1" name="Secret" />公开
                                        </label>
                                        <label style="cursor: pointer" class="">
                                            <input type="radio" class="check" onclick="hemai.SelectRadio('Secret', this);" value="2"
                                                name="Secret" />跟单公开
                                        </label>
                                        <label style="cursor: pointer" class="">
                                            <input type="radio" class="check" onclick="hemai.SelectRadio('Secret', this);" value="3"
                                                name="Secret" />截止公开
                                        </label>
                                        <label style="cursor: pointer" class="">
                                            <input type="radio" class="check" onclick="hemai.SelectRadio('Secret', this);" value="4"
                                                name="Secret" />永久保密
                                        </label>
                                    </p>
                                </dd>
                                <dt>中奖提成：</dt>
                                <dd>
                                    <label for="Deduct">
                                        <select class="p_deduct" id="Deduct">
                                            <option selected="selected" value="0">无提成</option>
                                            <option value="1">1%</option>
                                            <option value="2">2%</option>
                                            <option value="3">3%</option>
                                            <option value="4">4%</option>
                                            <option value="5">5%</option>
                                            <option value="6">6%</option>
                                            <option value="7">7%</option>
                                            <option value="8">8%</option>
                                            <option value="9">9%</option>
                                            <option value="10">10%</option>
                                        </select>
                                        %
                                    </label>
                                    <span class="project_cont_tip">盈利提成 = (税后奖金 - 方案金额) x 提成比例</span>
                                </dd>
                                <dt>招股对象：</dt>
                                <dd>
                                    <p class="secrecy_lab">
                                        <label class="red" style="cursor: pointer">
                                            <input type="radio" onclick="hemai.SelectRadio('zgdx', this); document.getElementById('Password').style.display = 'none';"
                                                checked="checked" value="1" name="zgdx" class="check" />所有人可认购
                                        </label>
                                        <label style="cursor: pointer" class="">
                                            <input type="radio" onclick="hemai.SelectRadio('zgdx', this); document.getElementById('Password').style.display = '';"
                                                value="2" class="check" name="zgdx" />凭密码认购
                                        </label>
                                        <input type="text" onkeyup="hemai.isPassWordBuy(this)" class="input_text" style="display: none;
                                            width: 45px;" maxlength="8" size="8" id="Password" name="Password" />
                                    </p>
                                </dd>
                                <dt>方案标题：</dt>
                                <dd>
                                    <input type="text" class="p_title" id="project_title" maxlength="20" onkeyup="hemai.leftword(this,'project_title_left',20)"
                                        title="" onblur="onblr(this)" />
                                    <span class="p_title_tip"><em id="project_title_left" class="num">7</em>个字</span>可以输入</dd>
                                <dt>合买宣言：</dt>
                                <dd>
                                    <textarea maxlength="150" title="一起玩，中大奖！" onblur="onblr(this)" onkeyup="hemai.leftword(this,'project_description_left',150)"
                                        class="p_description " id="project_description"></textarea><span class="p_description_tip"><em
                                            id="project_description_left">142</em>个字可以输入</span></dd>
                                <dt>付款金额：</dt>
                                <dd>
                                    <span>总共<em class="fred" id="needMoney">0</em>元</span> <span class="project_cont_tip">
                                        方案进度 + 保底 ≥ 95% ，即可出票</span>
                                </dd>
                            </dl>
                        </div>
                    <!--我要追号-->
                    <div style="display: none" id="buyChase" class="buychase">
                        <div class="chaseConditions">
                            <div class="con-left">
                                <label>
                                    <input type="radio" value="normal" name="chaseType" class="check" checked="checked" />普通追号</label>
                                <label class="red" title="高级追号更合理，更容易中奖。">
                                    <input type="radio" disabled="disabled" value="smart" name="chaseType" class="check" />高级追号<i
                                        class="ico-hot"></i></label>
                            </div>
                            <div class="con-right">
                                <label title="当追号计划中奖后，则停止该计划">
                                    <input type="checkbox" class="check" checked="checked" id="check_chasestop_bonus" />中奖后停止追号</label>
                                <label class="yellow hide">
                                    <input type="checkbox" class="check" id="check_chasestop_opennumber" />出号后放弃追号</label>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div class="chaseIssuseCondition" id="chaseCondi_normal" style="display: none;">
                            从
                            <select id="ChaseIssuseList" onchange="chase.updateChaseIssuse();" style="border: 1px solid #d3d3d3;
                                border-radius: 3px; padding: 2px; vertical-align: middle;">
                            </select>
                            购买<input type="text" value="1" class="txt-issusecount" maxlength="3" id="ChaseIssuseCount"
                                onchange="chase.reset();" />期(最多100期) <span class="quickIssuseNumber" id="QuickIssuse">
                                    快速追号：<b val="today">今天</b> <b val="5">5期</b> <b val="10">10期</b> <b val="15">15期</b>
                                    <b val="20">20期</b></span>
                        </div>
                        <ul class="multi-condition-containor" id="chaseCondi_smart" style="display: none;">
                            <li class="border red" id="multi_err" style="display: none;"></li>
                            <li class="border">从
                                <select id="MultipleChaseIssuseList" onchange="chase.updateChaseIssuse();">
                                </select>
                                购买
                                <input type="text" value="10" id="multibet_chaseissusecount" class="txt-issusecount"
                                    maxlength="3" />
                                期(最多100期) 起始倍数：<input type="text" value="1" class="txt-issusecount" maxlength="5"
                                    id="multibet_bs" /></li>
                            <li class="border">
                                <input type="radio" name="multicondition" value="1" class="radio" />全程利润率：<input
                                    type="text" value="50" class="conditioninput" maxlength="3" id="multibet_allmargins"
                                    disabled="disabled" />
                                % </li>
                            <li class="border">
                                <input type="radio" name="multicondition" value="2" class="radio" checked="checked" />前
                                <input type="text" value="5" class="conditioninput" maxlength="5" id="multibet_margins_beforeissuse" />
                                期利润率
                                <input type="text" value="50" class="conditioninput" maxlength="5" id="multibet_margins_before" />
                                %，之后利润率
                                <input type="text" value="100" class="conditioninput" maxlength="5" id="multibet_margins_behind" />
                                % </li>
                            <li class="border">
                                <input type="radio" name="multicondition" value="3" class="radio" />全程累计利润：<input
                                    type="text" value="100" class="conditioninput" maxlength="5" disabled="disabled"
                                    id="multibet_allprofit" />
                                元 </li>
                            <li class="border">
                                <input type="radio" name="multicondition" value="4" class="radio" />前
                                <input type="text" value="5" class="conditioninput" maxlength="3" disabled="disabled"
                                    id="multibet_profit_beforeissuse" />
                                期累计利润
                                <input type="text" value="100" class="conditioninput" maxlength="5" disabled="disabled"
                                    id="multibet_profit_before" />
                                元，之后累计利润
                                <input type="text" value="200" class="conditioninput" maxlength="5" disabled="disabled"
                                    id="multibet_profit_behind" /></li>
                            <li>
                                <input type="button" class="btn-generate hide" value="计算投注方案" onclick="chase.calMultiple();" /></li>
                        </ul>
                        <ul class="ssq_zhuhao_bt">
                            <li class="cm_w40">
                                <input type="checkbox" class="check" id="check_allissuse" checked="checked" /></li>
                            <li class="cm_w95">期数</li>
                            <li class="cm_w95">输入倍数</li>
                            <li class="cm_w95">当期投入</li>
                            <li class="cm_w95">累计投入</li>
                            <li class="cm_w95">当期奖金</li>
                            <li class="cm_w100">合计利润</li>
                        </ul>
                        <ul class="chaseList" id="IssuseListContanior">
                        </ul>
                        <span class="chaseListInfo" id="chaseListInfo">共 <b class="red">0</b> 注， 购买 <b class="red">
                            0</b> 期，合计 <b class="red">￥0</b> 元 </span>
                        <div class="chase_secrecy">
                            <span class="secrecy_span">保密类型：</span> <span id="secret_chase" class="secrecy_style">
                                <label for="rao110">
                                    <input type="radio" checked="checked" value="1" id="rao110" name="mychase" />公开</label>
                                <label for="rao112">
                                    <input type="radio" value="3" id="rao112" name="mychase" />截止后公开</label>
                                <label for="rao111">
                                    <input type="radio" value="4" id="rao111" name="mychase" />保密</label>
                            </span>
                        </div>
                    </div>
                    <!--我要代购-->
                    <div id="buyDg" class="buydg">
                        <span class="secrecy_span">保密类型：</span> <span id="secrecy_dg" class="secrecy_style">
                            <label for="rao0">
                                <input type="radio" checked="checked" value="1" id="rao0" name="secrecy_dg" />公开</label>
                            <label for="rao2">
                                <input type="radio" value="3" id="rao2" name="secrecy_dg" />截止后公开</label>
                            <label for="rao3">
                                <input type="radio" value="4" id="rao3" name="secrecy_dg" />保密</label>
                        </span>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
            </div>
            <div class="ssq_goumai_but">
                <div class="myaccount clear">
                    <em>账户信息：</em>
                    <div id="bet_user_account">
                            <div class="logininfo loginout">
                                您还没有登录，请先 <a onclick="betUserLogin.login()" style="color: #ff0000" href="javascript:void(-1)">
                                    登录</a> 后再购买</div>        
                    </div>
                </div>
                <p class="buyBtns">
                    <input type="button" accesskey="s" id="submitCaseBtn" class="dialogBtn" value="立即购买"
                        name="submitCaseBtn" onclick="bet.buyClick(this);" />
                </p>
                <p>
                    <input type="checkbox" checked="checked" id="agreement" value="1" name="checkbox" />
                    <label for="agreement">
                        我已阅读《<a target="_blank" href="/staticHtml/help/safety/betpact1.html">用户合买代购协议</a>》并同意其中条款。</label></p>
                <input type="checkbox" class="hide" checked="checked" id="agreement2" />
            </div>
        </div>
        <!--buy_single -->
        <div class="szc_right">
            <!--开奖信息-->
<div class="content_pub web_news">
    <div class="cp_slide_nav">
        <label class="cp_slide_tip">
            双色球开奖信息</label>
        <a target="_blank" href="/staticHtml/lottery/index.html" class="more">更多&gt;&gt;</a>
    </div>
    <div id="prizeInfo" class="cp_slide_body">
        <p class="rb_p1">
            <strong>双色球</strong>第<em class="red" id="GameInfo_PreIssuse">0000-000</em>期 &lt; 
            <a href="javascript:lottery.getPrizeNumber(true);">上期</a> | 
            <a href="javascript:lottery.getPrizeNumber(false);">下期</a> &gt;
        </p>
        <p class="rb_p2">开奖时间：<span id="award_time">0000-00-00 00:00:00</span></p>
        <p class="rb_p3" id="GameInfo_AwardNumberList">
                    <i isopen="n">--</i>
                    <i isopen="n">--</i>
                    <i isopen="n">--</i>
                    <i isopen="n">--</i>
                    <i isopen="n">--</i>
                    <i isopen="n">--</i>
                    <i isopen="n" class="blueball">--</i>
        </p>
        <dl>
            <dt>
                <span class="kjxx_jx">奖项</span>
                <span class="kjxx_zs">注数</span>
                <span class="kjxx_jj">每注奖金(元)</span>
                <span class="kjxx_zjtj">中奖条件</span>
            </dt>
            <dd grade="1">
                <span class="kjxx_jx">一等奖</span>
                <span class="kjxx_zs red">-</span>
                <span class="kjxx_jj">-</span>
                <span class="kjxx_zjtj"><em class="red">6</em>+<em class="blue">1</em></span>
            </dd>
            <dd grade="2" class="gray">
                <span class="kjxx_jx">二等奖</span>
                <span class="kjxx_zs red">-</span>
                <span class="kjxx_jj">-</span>
                <span class="kjxx_zjtj"><em class="red">6</em>+<em class="blue">0</em></span>
            </dd>
            <dd grade="3">
                <span class="kjxx_jx">三等奖</span>
                <span class="kjxx_zs red">-</span>
                <span class="kjxx_jj">-</span>
                <span class="kjxx_zjtj"><em class="red">5</em>+<em class="blue">1</em></span>
            </dd>
            <dd grade="4" class="gray">
                <span class="kjxx_jx">四等奖</span>
                <span class="kjxx_zs red">-</span>
                <span class="kjxx_jj">-</span>
                <span class="kjxx_zjtj"><em class="red">5</em>+<em class="blue">0</em>/<em class="red">4</em>+<em class="blue">1</em></span>
            </dd>
            <dd grade="5">
                <span class="kjxx_jx">五等奖</span>
                <span class="kjxx_zs red">-</span>
                <span class="kjxx_jj">-</span>
                <span  class="kjxx_zjtj"><em class="red">3</em>+<em class="blue">1</em>/<em class="red">4</em>+<em class="blue">0</em></span>
            </dd>
            <dd grade="6" class="gray">
                <span class="kjxx_jx">六等奖</span>
                <span class="kjxx_zs red">-</span>
                <span class="kjxx_jj">-</span>
                <span class="kjxx_zjtj"><em class="red">2</em>+<em class="blue">1</em>/<em class="red">1</em>+<em class="blue">1</em>/<em class="red">0</em>+<em class="blue">1</em></span>
            </dd>
        </dl>
    </div>
    <div class="cp_slide_banner">
        <s></s><span id="openPrizeDetail" class="cp_slide_close" onclick="lottery.expandPrize(this)">展开</span></div>
</div>            <!--近10期开奖号码-->
            <div class="content_pub prize_number">
                <div class="cp_slide_nav">
                    <label class="cp_slide_tip">
                        近10期双色球开奖号码</label>
                    <a href="/staticHtml/lottery/history_ssq.html" target="_blank" class="more">
                        更多&gt;&gt;</a>
                </div>
                <p>
                    <span class="r_border">期号</span><span class="qihao">开奖号码</span></p>
                <div class="prize_number_list" id="winnumber_list">
                </div>
            </div>
            <!--走势图表-->
            <div class="content_pub tool_links">
                <div class="cp_slide_nav">
                    <label class="cp_slide_tip">走势图表</label>
                    <a href="/staticHtml/lotterytrend/index.html" class="more">更多&gt;&gt;</a>
                </div>
                    <a href="/statichtml/lotterytrend/ssq/jbzs30.html" target="_blank">双色球基本走势图</a>
    <a href="/statichtml/lotterytrend/ssq/daxiao30.html" target="_blank">双色球大小走势图</a>
    <a href="/statichtml/lotterytrend/ssq/jiou30.html" target="_blank">双色球奇偶走势图</a>
    <a href="/statichtml/lotterytrend/ssq/kuadu_sw30.html" target="_blank">双色球首尾跨度走势图</a>
    <a href="/statichtml/lotterytrend/ssq/kuadu_1230.html" target="_blank">双色球一二跨度走势</a>
    <a href="/statichtml/lotterytrend/ssq/kuadu_2330.html" target="_blank">双色球二三跨度走势</a>
    <a href="/statichtml/lotterytrend/ssq/kuadu_3430.html" target="_blank">双色球三四跨度走势</a>
    <a href="/statichtml/lotterytrend/ssq/kuadu_4530.html" target="_blank">双色球四五跨度走势</a>
    <a href="/statichtml/lotterytrend/ssq/kuadu_5630.html" target="_blank">双色球五六跨度走势</a>
    <a href="/statichtml/lotterytrend/ssq/chu330.html" target="_blank">双色球除3走势图</a>
    <a href="/statichtml/lotterytrend/ssq/hezhi30.html" target="_blank">双色球和值走势图</a>
    <a href="/statichtml/lotterytrend/ssq/zhihe30.html" target="_blank">双色球质和走势图</a>

            </div>
        </div>
    </div>
</div>
<div class="clearfix">
</div>
<script type="text/javascript">
    var gameCode = "SSQ";
    var gameName = "双色球";
</script>
    <script src="<%=request.getContextPath()%>/static/jiang/js/bet.min.js" type="text/javascript"></script>    

