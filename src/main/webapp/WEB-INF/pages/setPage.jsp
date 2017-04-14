<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>setPage</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
	<!-- 全局contextPath变量 -->
	<script type="text/javascript">var ctx='${pageContext.request.contextPath}';</script>

    <script type="text/javascript">
    //附加码校验函数
    function num_validate(value){
        //定义正则表达式部分
        var reg = /^\d{8}$/;
        var re=false;
        if( value.constructor === String ){
         re = value.match( reg );
        return re;
        }
        return re;
    }
	//流水号校验函数
	function seq_validate(value){
		 //定义正则表达式部分
        var reg = /^\d{1,3}$/;
        var re=false;
        if( value.constructor === String ){
         re = value.match( reg );
        return re;
        }
        return re;
	}
	//提交商铺
    function submitShop() {
        
        var i=$('input[type="radio"]:checked').val();
        $.ajax({
	    	type: "GET",
	    	async:false,
	        url: ctx+"/setParam/shopId",
	        data: {"shopId":i},
	        success: function(data){
	        	alert("商铺设置成功！");
	        },
	        error: function(data){
	        	alert("商铺设置失败！");
        	},
    });
    }
    //提交附加码
    function submitExtra(){
    	var sn=new Array();
        for(var i=1;i<4;i++){
            if(!num_validate($("#in"+i).val())){
                alert("数据不合法");
                return;
            }
            sn.push($("#in"+i).val());
        }
        var ss;
        if (sn.length!=0) {
        	ss=sn.join(",");
	    	$.ajax({
		    	type: "GET",
		    	async:false,
		        url: ctx+"/setParam/extracode",
		        data: {"extracodes":ss},
		        success: function(data){
		        	alert("附加码设置成功！");
		        },
		        error: function(data){
		        	alert("附加码设置失败！");
	        	},
	    	});
        }
        
    }
    //提交流水号
    function submitSeque(){
    	var sn=new Array();
        for(var i=1;i<4;i++){
            if(!seq_validate($("#inp"+i).val())){
                alert("数据不合法");
                return;
            }
            sn.push($("#inp"+i).val());
        }
        var ss;
        if (sn.length!=0) {
        	ss=sn.join(",");
	    	$.ajax({
		    	type: "GET",
		    	async:false,
		        url: ctx+"/setParam/sequenceNum",
		        data: {"sequenceNums":ss},
		        success: function(data){
		        	alert("流水号设置成功！");
		        },
		        error: function(data){
		        	alert("流水号设置失败！");
	        	},
	    	});
		}
    }
    </script>
</head>
<body>
    <div class="table-d">
        <table width="500" border="0" cellspacing="1" cellpadding="0">
            <tr>
                <td width="105"><label><input name="shop" type="radio" value="1" checked="checked"/>东马家都</label></td>
                <td width="181"><label><input name="shop" type="radio" value="2" />澳柯玛</label></td>
                <td width="112"><label><input name="shop" type="radio" value="3" />庆祥路</label></td>
                <td width="99"><button onclick="submitShop()"/>提交商铺</button></td>
            </tr>
            <tr>
                <td><input  id="in1"></td>
                <td><input  id="in2"></td>
                <td><input  id="in3"></td>
                <td><button onclick="submitExtra()"/>提交附加码</button></td>
            </tr>
            <tr>
                <td><input  id="inp1"></td>
                <td><input  id="inp2"></td>
                <td><input  id="inp3"></td>
                <td><button onclick="submitSeque()"/>提交流水号</button></td>
            </tr>
        </table>
    </div>
</body>
</html>
