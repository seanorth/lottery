<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<div class="crumb">
    <ul>
        <li class="a">您当前的位置：</li>
        <li><a href="/">首页</a>&nbsp;&gt; &nbsp;</li>
        <li><a target="_blank" href="/statichtml/buy/index.html">购彩大厅</a>&nbsp;&gt;&nbsp;</li>
        <li>福彩3D</li>
    </ul>
</div>
<div class="navi fc3d_banner">
    <div class="nav_logo">
    </div>
    <div class="nav_box">
        <h3>福彩3D</h3>
    </div>
    <div class="fl sale-time">
        <strong class="gameperiod">第<span id="top_curissuse">0000-000</span>期</strong>
        <div style="display: block" class="nav_time">
            福彩3D停售时间：<span id="project_endtime">0000-00-00 00:00:00</span></div>
    </div>
    <div class="nav-bottom">
        <p class="nav_links">
                <a href="/statichtml/lotterytrend/fc3d/zxzs30.html">福彩3D走势图</a>
            |<a target="_blank" href="/staticHtml/help/playRules/fc3d1.html">福彩3D玩法介绍</a></p>
    </div>
</div>
<div class="menus">
    <div class="nav_menu_a" style="width: 100%;">
        
        <a class="on" href="javascript:void 0" style="margin-left: 20px;">选号投注</a>
            <a href="/chipped/fc3d" style="margin-left:5px;">参与合买</a>
            <span style="display: block; float: right; height: 27px; line-height: 27px;">
                <img style="float: left;"  alt="加奖"/>
                <span style="float: left; font-size: 16px; color: Red; vertical-align: middle;">加奖50%</span>
            </span>
    </div>
    <div class="sub_nav">
        <div class="sub_nav_b">
            <div id="GameTypeList" class="sub_nav_in">
                    <a href="javascript:void(0)" url="FS_Group" val="FS"><span>直选</span></a>
    <a href="javascript:void(0)" url="ZX3_Group" val="ZX3"><span>组选三</span></a>
    <a href="javascript:void(0)" url="ZX6_Group" val="ZX6"><span>组选六</span></a>

                <span id="clockTime" class="sys_clock"><em>00</em>天<em>00</em>时<em>00</em>分<em>00</em>秒</span>
                <span id="clockText1" class="sub_span"><span id="clockIssuseText" style="color: #f00;">
                </span>期投注剩余时间:</span>
            </div>
        </div>
    </div>
</div>
<div class="lottery_wrap">
    <div class="ssq_main clear">
        <div class="buy_single fc3d">
            <div class="ball_area" id="GameBallsContanior">
<div id="FC3D_FS" style="display:none;">
<div class="bet_snav">
    <label><input type="radio" name="gametype" url="FS" value="FS"  data-t="FS"/>标准选号</label>
    
    <label><input type="radio" name="gametype" url="HZ" value="HZ" way="3" data-t="HZ" />和值</label>
    <label><input type="radio" name="gametype" url="FSSG" value="FS" way="4" data-t="FS" />手工录入</label>
</div>

<div id="FC3D_FS_FS" class="playtype">
<h1 class="playprompt">
    <em class="red">玩法提示：</em>每位至少选择一个号码，按位置全部命中开奖号码即中奖！奖金：
    <em class="fred">1040</em>元！
    <a href="javascript:" class="szc_notice">
        <strong class="sl">示例</strong>
        <span>选号：<b class="slnum">1</b> <b class="slnum">2</b> <b class="slnum">3</b> <br/>开奖：<strong class="red"><b class="slnum">1</b> <b class="slnum">2</b> <b class="slnum">3</b></strong><br>奖金：1000元。</span>
    </a> 
</h1>
<div class="bet_balls clear">
    <div class="dan_con"><strong>选号区</strong> &nbsp;每位至少选择<em class="c_ba1d21">1</em>个号码</div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">百位</b> <div class="szc_yilou pr">
        <cite title="指该号码自上次开出之后到当前期没有出现的次数" val="yl">遗漏</cite><em style="display: none;"><a title="指该号码自上次开出之后到当前期没有出现的次数" val="lr" href="#">冷热</a><a title="隐藏" val="hd" href="#">隐藏</a></em></div>
        </div>
        <div class="red_balls ball">
            <ul class="clearfix">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="help_div">
            <ul class="ballsfilter">
                <li style="cursor: pointer;"><a href="javascript:;" val="all">全</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="big">大</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="small">小</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="odd">奇</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="even">偶</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="clear">清</a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">十位</b></div>
        <div class="red_balls ball">
            <ul class="clearfix">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="help_div">
            <ul class="ballsfilter">
                <li style="cursor: pointer;"><a href="javascript:;" val="all">全</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="big">大</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="small">小</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="odd">奇</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="even">偶</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="clear">清</a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="balls_con">
           <div class="bet_text"><b class="c_ba1d21">个位</b></div>
           <div class="red_balls ball">
               <ul class="clearfix">
                   <li class="numbers"><b>0</b><span></span></li>
                   <li class="numbers"><b>1</b><span></span></li>
                   <li class="numbers"><b>2</b><span></span></li>
                   <li class="numbers"><b>3</b><span></span></li>
                   <li class="numbers"><b>4</b><span></span></li>
                   <li class="numbers"><b>5</b><span></span></li>
                   <li class="numbers"><b>6</b><span></span></li>
                   <li class="numbers"><b>7</b><span></span></li>
                   <li class="numbers"><b>8</b><span></span></li>
                   <li class="numbers"><b>9</b><span></span></li>
               </ul>
           </div>
           <div class="help_div">
               <ul class="ballsfilter">
                <li style="cursor: pointer;"><a href="javascript:;" val="all">全</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="big">大</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="small">小</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="odd">奇</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="even">偶</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="clear">清</a></li>
               </ul>
           </div>
       </div>
</div>
</div>

<div id="FC3D_FS_DT" class="playtype">
<h1 class="playprompt">
    <em class="red">单式：</em>所选号码与开奖号码相同（且顺序一致），奖金：
    <em class="fred">1040</em>元！
</h1>

<div class="bet_balls clear">
    <div class="dan_con"><strong>选号区</strong> &nbsp;每位至少选择<em class="c_ba1d21">1</em>个号码</div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">胆码</b> 
            
        </div>
        <div class="red_balls danma">
            <ul class="clearfix">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">拖码</b> 
        </div>
        <div class="red_balls tuoma">
            <ul class="clearfix">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</div>

<div id="FC3D_FS_HZ" class="playtype">

<h1 class="playprompt">
    <em class="red">玩法提示：</em>至少选择1个和值进行投注，所选和值与开奖号码和值一致即中奖，奖金：<em class="fred">1040</em>元！ <a href="javascript:" class="szc_notice"><strong class="sl">示例</strong><span>选号：6 <br>
                                                                                                                                                                                    开奖：<strong class="red"><b class="slnum">1</b> <b class="slnum">2</b> <b class="slnum">3</b></strong><br>奖金：1000元。</span></a>
</h1>
<div class="bet_balls clear">
    <div class="dan_con"><strong>和值区</strong> &nbsp;至少选择<em class="c_ba1d21">1</em>个号码</div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">选择号码</b></div>
        <div style="width: 610px" class="red_balls ball">
            <ul class="clearfix">
                <li class="numbers"><b>0</b></li>
                <li class="numbers"><b>1</b></li>
                <li class="numbers"><b>2</b></li>
                <li class="numbers"><b>3</b></li>
                <li class="numbers"><b>4</b></li>
                <li class="numbers"><b>5</b></li>
                <li class="numbers"><b>6</b></li>
                <li class="numbers"><b>7</b></li>
                <li class="numbers"><b>8</b></li>
                <li class="numbers"><b>9</b></li>
                <li class="numbers"><b>10</b></li>
                <li class="numbers"><b>11</b></li>
                <li class="numbers"><b>12</b></li>
                <li class="numbers"><b>13</b></li>
                <li class="numbers"><b>14</b></li>
                <li class="numbers"><b>15</b></li>
                <li class="numbers"><b>16</b></li>
                <li class="numbers"><b>17</b></li>
                <li class="numbers"><b>18</b></li>
                <li class="numbers"><b>19</b></li>
                <li class="numbers"><b>20</b></li>
                <li class="numbers"><b>21</b></li>
                <li class="numbers"><b>22</b></li>
                <li class="numbers"><b>23</b></li>
                <li class="numbers"><b>24</b></li>
                <li class="numbers"><b>25</b></li>
                <li class="numbers"><b>26</b></li>
                <li class="numbers"><b>27</b></li>
            </ul>
        </div>
    </div>
</div>
</div>

<div id="FC3D_FS_FSSG" class="playtype">
<div class="game-ballsmain">
    <h1 class="playprompt"><b>复式：</b>所选号码与开奖号码相同（且顺序一致），奖金<b class="red">1040</b>元</h1>
        <div class="import_numberarea">
        <p class="tip2 gray">
            <i></i>请把已有号码复制(导入)文本框，每注号码用空格或换行符(回车)隔开，每个号码用"," "." "+"分开，也可不使用符号 [仅支持单式]
        </p>
        <textarea id="import_numberarea" class="upload_body"></textarea>
        <p class="rdesc gray">
            <b>号码格式：</b><br />
1,2,3 或 1.2.3 或 1+2+3 或 123<br />
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

<div id="FC3D_ZX3" style="display:none;">
<div class="bet_snav">
    <label><input type="radio" name="gametype" url="ZX3DS" value="ZX3DS"/>组三单式</label>
    <label><input type="radio" name="gametype" url="ZX3FS" value="ZX3FS" />组三复式</label>
    <label><input type="radio" name="gametype" url="ZX3HZ" value="ZX3DS" way="3"/>组三和值</label>
    <label><input type="radio" name="gametype" url="ZX3SG" value="ZX3DS" way="4" />手工录入</label>
</div>

<div id="FC3D_ZX3_ZX3DS" class="playtype">
<h1 class="playprompt">
    <em class="red">组选三：</em>所选号码与开奖号码相同（顺序不限）,且有任意两位相同，奖金：
    <em class="fred">346</em>元！
</h1>
<div class="bet_balls clear">
    <div class="dan_con"><strong>选号区</strong> &nbsp;每位至少选择<em class="c_ba1d21">1</em>个号码</div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">组三单式</b> 
            
        </div>
        <div class="red_balls">
            <ul class="clearfix ball">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">组三单式</b> 
        </div>
        <div class="red_balls">
            <ul class="clearfix ball">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">组三单式</b> 
        </div>
        <div class="red_balls">
            <ul class="clearfix ball">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</div>

<div id="FC3D_ZX3_ZX3FS" class="playtype">
<h1 class="playprompt">
    <em class="red">玩法提示：</em>
    每位各选1个或多个号码投注，命中全部开奖号码即中奖！奖金：<em class="fred">346</em>元！
    <a href="javascript:" class="szc_notice"><strong class="sl">示例</strong>
    <span>选号：1 1 2<br/>开奖：<strong class="red">1 2 1</strong><br/>
        奖金：320元。</span></a></h1>
<div class="bet_balls clear">
    <div class="dan_con"><strong>选号区</strong> &nbsp;请至少选择<em class="c_cb0505">2</em>个号码</div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">选择号码</b>
            
        </div>
        <div class="red_balls ball">
            <ul class="clearfix">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="help_div">
            <ul class="clearfix ballsfilter">
                <li style="cursor: pointer;"><a href="javascript:;" val="all">全</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="big">大</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="small">小</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="odd">奇</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="even">偶</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="clear">清</a></li>
            </ul>
        </div>
    </div>
</div>
</div>

<div id="FC3D_ZX3_ZX3HZ" class="playtype">
<h1 class="playprompt">
    <em class="red">组选三：</em>所选号码与开奖号码相同（顺序不限）,且有任意两位相同，奖金：<em class="fred">346</em>元！ 
</h1>
<div class="bet_balls clear">
    <div class="dan_con"><strong>和值区</strong> &nbsp;至少选择<em class="c_ba1d21">1</em>个号码</div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">选择号码</b></div>
        <div style="width: 610px" class="red_balls ball">
            <ul class="clearfix">
                <li class="numbers"><b count="1">1</b></li>
                <li class="numbers"><b count="2">2</b></li>
                <li class="numbers"><b count="1">3</b></li>
                <li class="numbers"><b count="3">4</b></li>
                <li class="numbers"><b count="3">5</b></li>
                <li class="numbers"><b count="3">6</b></li>
                <li class="numbers"><b count="4">7</b></li>
                <li class="numbers"><b count="5">8</b></li>
                <li class="numbers"><b count="4">9</b></li>
                <li class="numbers"><b count="5">10</b></li>
                <li class="numbers"><b count="5">11</b></li>
                <li class="numbers"><b count="4">12</b></li>
                <li class="numbers"><b count="5">13</b></li>
                <li class="numbers"><b count="5">14</b></li>
                <li class="numbers"><b count="4">15</b></li>
                <li class="numbers"><b count="5">16</b></li>
                <li class="numbers"><b count="5">17</b></li>
                <li class="numbers"><b count="4">18</b></li>
                <li class="numbers"><b count="5">19</b></li>
                <li class="numbers"><b count="4">20</b></li>
                <li class="numbers"><b count="3">21</b></li>
                <li class="numbers"><b count="3">22</b></li>
                <li class="numbers"><b count="3">23</b></li>
                <li class="numbers"><b count="1">24</b></li>
                <li class="numbers"><b count="2">25</b></li>
                <li class="numbers"><b count="1">26</b></li>
            </ul>
        </div>
    </div>
</div>
</div>

<div id="FC3D_ZX3_ZX3SG" class="playtype">
<div class="game-ballsmain">
    <h1 class="playprompt"><b>组选三：</b>所选号码与开奖号码相同（顺序不限）,且有任意两位相同，奖金<b class="red">346</b>元</h1>
        <div class="import_numberarea">
        <p class="tip2 gray">
            <i></i>请把已有号码复制(导入)文本框，每注号码用空格或换行符(回车)隔开，每个号码用"," "." "+"分开，也可不使用符号 [仅支持单式]
        </p>
        <textarea id="import_numberarea" class="upload_body"></textarea>
        <p class="rdesc gray">
            <b>号码格式：</b><br />
1,2,2 或 1.2.2 或 1+2+2 或 122<br />
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

<div id="FC3D_ZX6" style="display:none;">
<div class="bet_snav">
    <label><input type="radio" name="gametype" url="ZX6" value="ZX6"/>常规选号</label>
    <label><input type="radio" name="gametype" url="ZX6HZ" value="ZX6" way="3"/>组六和值</label>
    <label><input type="radio" name="gametype" url="ZX6SG" value="ZX6" way="4" />手工录入</label>
</div>

<div id="FC3D_ZX6_ZX6" class="playtype">
<h1 class="playprompt">
    <em class="red">组选六：</em>所选号码与开奖号码相同（顺序不限）,奖金：
    <em class="fred">173</em>元！
</h1>
<div class="bet_balls clear">
    <div class="dan_con"><strong>选号区</strong> &nbsp;每位至少选择<em class="c_ba1d21">3</em>个号码</div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">个位</b> 
            
        </div>
        <div class="red_balls ball">
            <ul class="clearfix">
                <li class="numbers"><b>0</b><span></span></li>
                <li class="numbers"><b>1</b><span></span></li>
                <li class="numbers"><b>2</b><span></span></li>
                <li class="numbers"><b>3</b><span></span></li>
                <li class="numbers"><b>4</b><span></span></li>
                <li class="numbers"><b>5</b><span></span></li>
                <li class="numbers"><b>6</b><span></span></li>
                <li class="numbers"><b>7</b><span></span></li>
                <li class="numbers"><b>8</b><span></span></li>
                <li class="numbers"><b>9</b><span></span></li>
            </ul>
        </div>
        <div class="help_div">
            <ul class="clearfix ballsfilter">
                <li style="cursor: pointer;"><a href="javascript:;" val="all">全</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="big">大</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="small">小</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="odd">奇</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="even">偶</a></li>
                <li style="cursor: pointer;"><a href="javascript:;" val="clear">清</a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</div>

<div id="FC3D_ZX6_ZX6HZ" class="playtype">
<h1 class="playprompt">
    <em class="red">组选三：</em>所选号码与开奖号码相同（顺序不限）,且有任意两位相同，奖金：<em class="fred">173</em>元！ 
</h1>
<div class="bet_balls clear">
    <div class="dan_con"><strong>和值区</strong> &nbsp;至少选择<em class="c_ba1d21">1</em>个号码</div>
    <div class="balls_con">
        <div class="bet_text"><b class="c_ba1d21">和值</b></div>
        <div style="width: 610px" class="red_balls ball">
            <ul class="clearfix">
                <li class="numbers"><b count="10">3</b></li>
                <li class="numbers"><b count="1">4</b></li>
                <li class="numbers"><b count="2">5</b></li>
                <li class="numbers"><b count="3">6</b></li>
                <li class="numbers"><b count="4">7</b></li>
                <li class="numbers"><b count="5">8</b></li>
                <li class="numbers"><b count="7">9</b></li>
                <li class="numbers"><b count="8">10</b></li>
                <li class="numbers"><b count="9">11</b></li>
                <li class="numbers"><b count="10">12</b></li>
                <li class="numbers"><b count="10">13</b></li>
                <li class="numbers"><b count="10">14</b></li>
                <li class="numbers"><b count="10">15</b></li>
                <li class="numbers"><b count="9">16</b></li>
                <li class="numbers"><b count="8">17</b></li>
                <li class="numbers"><b count="7">18</b></li>
                <li class="numbers"><b count="5">19</b></li>
                <li class="numbers"><b count="4">20</b></li>
                <li class="numbers"><b count="3">21</b></li>
                <li class="numbers"><b count="2">22</b></li>
                <li class="numbers"><b count="1">23</b></li>
                <li class="numbers"><b count="1">24</b></li>
            </ul>
        </div>
    </div>
</div>
</div>

<div id="FC3D_ZX6_ZX6SG" class="playtype">
<div class="game-ballsmain">
    <h1 class="playprompt"><b>组选六：</b>所选号码与开奖号码相同（顺序不限），奖金<b class="red">173</b>元</h1>
        <div class="import_numberarea">
        <p class="tip2 gray">
            <i></i>请把已有号码复制(导入)文本框，每注号码用空格或换行符(回车)隔开，每个号码用"," "." "+"分开，也可不使用符号 [仅支持单式]
        </p>
        <textarea id="import_numberarea" class="upload_body"></textarea>
        <p class="rdesc gray">
            <b>号码格式：</b><br />
1,2,3 或 1.2.3 或 1+2+3 或 123<br />
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
</div>            </div>
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
                            <div class="logininfo">
                                <strong class="logininfo_name"><b>“</b>lotteryismine<b>”</b>
                                </strong>，您的账户余额<span id="useralid_money" class="fred">0.00</span>
                                元 <a target="_blank" class="user_ico" href="/member/pay">[<b>账户充值1</b>]</a> <a href="javascript:user.logOut();"
                                    class="loginout">[退出]</a>
                            </div>
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
                <div class="content_pub1 drawNotice">
                    <div class="cp_slide_nav">
                        <label class="cp_slide_tip">
                            最新开奖</label>
                    </div>
                    
                    <div id="GameInfo_AwardNumberList">
                            <p>
                                福彩3D 第 <strong id="newIssuse" style="color: Red;">-</strong> 期 开奖</p>
                            <p class="currenAward">
                                <i isopen="n" class="awardBall">--</i> <i isopen="n" class="awardBall">--</i> <i
                                    isopen="n" class="awardBall">--</i>
                            </p>
                            <p>
                                今日已售 <span id="pastIssuse">-</span> 期，还剩 <strong id="leftIssuse" style="color: Red;">
                                    -</strong> 期</p> 
                    </div>
                </div>
            <!--近10期开奖号码-->
            <div class="content_pub prize_number">
                <div class="cp_slide_nav">
                    <label class="cp_slide_tip">
                        近10期开奖号码</label>
                    <a href="/staticHtml/lottery/history_fc3d.html" target="_blank" class="more">
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
                    <a href="/statichtml/lotterytrend/fc3d/zxzs30.html" target="_blank">福彩3D直选走势</a>
    <a href="/statichtml/lotterytrend/fc3d/chu3130.html" target="_blank">福彩3D除3余数走势一</a>
    <a href="/statichtml/lotterytrend/fc3d/chu3230.html" target="_blank">福彩3D除3余数走势二</a>
    <a href="/statichtml/lotterytrend/fc3d/chu3330.html" target="_blank">福彩3D除3余数走势三</a>
    <a href="/statichtml/lotterytrend/fc3d/dxhm30.html" target="_blank">福彩3D大小号码分布</a>
    <a href="/statichtml/lotterytrend/fc3d/dxxt30.html" target="_blank">福彩3D大小形态分布</a>
    <a href="/statichtml/lotterytrend/fc3d/hwzs30.html" target="_blank">福彩3D和尾走势</a>
    <a href="/statichtml/lotterytrend/fc3d/hzfb30.html" target="_blank">福彩3D和值分布</a>
    <a href="/statichtml/lotterytrend/fc3d/hztz30.html" target="_blank">福彩3D和值特征</a>
    <a href="/statichtml/lotterytrend/fc3d/johm30.html" target="_blank">福彩3D奇偶号码分布</a>
    <a href="/statichtml/lotterytrend/fc3d/joxt30.html" target="_blank">福彩3D奇偶形态分布</a>
    <a href="/statichtml/lotterytrend/fc3d/kuadu30.html" target="_blank">福彩3D总跨度</a>
    <a href="/statichtml/lotterytrend/fc3d/kuadu1230.html" target="_blank">福彩3D百十跨度</a>
    <a href="/statichtml/lotterytrend/fc3d/kuadu1330.html" target="_blank">福彩3D百个跨度</a>
    <a href="/statichtml/lotterytrend/fc3d/kuadu2330.html" target="_blank">福彩3D十个跨度</a>
    <a href="/statichtml/lotterytrend/fc3d/zhhm30.html" target="_blank">福彩3D质合号码分布</a>
    <a href="/statichtml/lotterytrend/fc3d/zhxt30.html" target="_blank">福彩3D质合形态分布</a>
    <a href="/statichtml/lotterytrend/fc3d/zuxzs30.html" target="_blank">福彩3D组选走势</a>

            </div>
        </div>
    </div>
</div>
<div class="clearfix">
</div>
<script type="text/javascript">
    var gameCode = "FC3D";
    var gameName = "福彩3D";
</script>
    <script src="<%=request.getContextPath()%>/static/jiang/js/bet.min.js" type="text/javascript"></script>    

