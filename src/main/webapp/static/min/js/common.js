var cllCommon = {};
/*--------------------------------jquery实锟斤拷锟斤拷-锟斤拷 begin------------------------------------*/
cllCommon.cllSelect = function(id){
	var newSelect = $(id);
	newSelect.click(function(e){
		if(this.className == "open"){
			closeSelect(this);
		}else{
			this.className = "open";
			var next=$(this).next();
			if(next.height() >= 300){
				next.height(300);
			}
			next.slideDown("fast",function(){
				$(this).css("overflow-y","auto","overflow-x","hidden");
			});
		}
		e.stopPropagation();
	});
	
	function closeSelect(obj){
		if(obj){
			$(obj).next().slideUp("fast",function(){
				obj.className = "";
			});
		}
	}
	$(document).bind("click", function() {
	  	closeSelect(newSelect[0]);
	});

	newSelect.next().click(function(e){
		var src = e.target;
		if(src.tagName == "A"){
			var PObj = src.parentNode;
			$(PObj).prev()[0].innerHTML = src.innerHTML;
			/*var aList = PObj.getElementsByTagName("a");
			for(var i=0;i<aList.length;i++){
				aList[i].className = "";
			}*/
			$(src).siblings().removeClass();
			src.className = "current";
			if(typeof(PObj)!="undefined"&&typeof(PObj)!= undefined&&PObj.nextSibling!=null && PObj != null&& typeof(PObj.nextSibling)!="undefined" ){
				PObj.nextSibling.value = src.getAttribute("value");
			}
		}
	});
}
/*--------------------------------jquery实锟斤拷锟斤拷-锟斤拷 end------------------------------------*/

/*--------------------------------jquery实锟街达拷直锟斤拷begin------------------------------------*/
cllCommon.cllScroll = function(id){
	var _wrap = $(id).find('.scroll');//锟斤拷锟斤拷锟斤拷锟斤拷锟?
	var _interval = 3000;//锟斤拷锟斤拷锟斤拷隙时锟斤拷
	var _moving;//锟斤拷要锟斤拷锟侥讹拷锟斤拷
	_wrap.hover(function(){
	clearInterval(_moving);//锟斤拷锟斤拷锟斤拷诠锟斤拷锟斤拷锟斤拷锟绞?停止锟斤拷
	},function(){
	_moving=setInterval(function(){
	var _field =_wrap.find('li:first');//锟剿憋拷锟斤拷锟缴凤拷锟斤拷锟节猴拷锟斤拷锟斤拷始锟斤拷,li:first取值锟角变化锟斤拷
	var _h=_field.height();//取锟斤拷每锟轿癸拷叨锟?
	_wrap.animate({top:-_h+'px'},1000,function(){//通锟斤拷取锟斤拷margin值,锟斤拷锟截碉拷一锟斤拷
				_wrap.css("top","0");
				_field.css("top","0").appendTo(_wrap);//锟斤拷锟截猴拷,锟斤拷锟斤拷锟叫碉拷margin值锟斤拷锟斤拷,锟斤拷锟斤拷锟诫到锟斤拷锟?实锟斤拷锟睫凤拷锟?
				})
	},_interval)//锟斤拷锟斤拷时锟斤拷取锟斤拷锟斤拷_interval
	}).trigger('mouseleave');//锟斤拷锟斤拷锟斤拷锟斤拷时,模锟斤拷执锟斤拷mouseleave,锟斤拷锟皆讹拷锟斤拷
}
/*--------------------------------jquery实锟街达拷直锟斤拷end------------------------------------*/

/***---------------------------------- 锟叫伙拷锟斤拷锟斤拷 begin ----------------------------------***/
cllCommon.generalTab = function(sid,mode){
	//mode锟侥诧拷锟斤拷锟轿猚lick,mouseover
	$('#' + sid + ' .head ul li').bind(mode,function(){
		var targetNum = $(this).index();
		$(this).parent().children().attr("class","");
		$(this).addClass('current');
		
		$('#' + sid + ' .body .tabcon').each(function(){
			$(this).hide();
		});
		$('#' + sid + ' .body .tabcon').eq(targetNum).show();
	});
}
/***---------------------------------- 锟叫伙拷锟斤拷锟斤拷 end ----------------------------------***/
