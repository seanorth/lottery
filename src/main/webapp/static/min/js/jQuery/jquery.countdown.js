/**
 * Plugin kkcountdown counts down to specific dates in the future.
 * $(".come-class").kkcountdown();
 * @type jQuery
 * @name countdown
 * @version 2.0
 * @Descript 自动校验倒计时插件
 */
(function($){
    $.fn.countdown = function(options) {
            var defaults = {
                daysText		 :   'days ',
                hoursText		 : 	 ':',
                minutesText		 :	 ':',
                secondsText		 :	 '',
                textAfterCount	 : 	 '----',
                deltaTime		 :   0,                    	//本地时间与服务器时间截差
                endTime			 :	 0,						//必填项截止时间
                oneDayClass		 :	 false,
                displayDays		 : 	 true,
                displayZeroDays	 :	 true,
                displayZerohours :	 true,
                addClass		 : 	 false,
                callback		 : 	 false,                 //倒计时结束后回调处理函数
                callbackTime	 : 	 false					//倒计时修改时间后回调函数
            };
                 
            var options =  $.extend(defaults, options);

           	var counter = 0;
       	 	var startTime = new Date().valueOf();//初始化开始时间
       	 	var normalelapse = 1000; 
			var nextelapse = normalelapse;
			var timer = null;
			var start = null;  
 
            this.each(function(){
            	var _this = $(this);
            	
		        var box = $(document.createElement('span')).addClass('kkcountdown-box');
		        var boxDni = $(document.createElement('span')).addClass('kkc-dni');
		        var boxGodz = $(document.createElement('span')).addClass('kkc-godz');
		        var boxMin = $(document.createElement('span')).addClass('kkc-min');
		        var boxSec = $(document.createElement('span')).addClass('kkc-sec');
		        var boxDniText = $(document.createElement('span')).addClass('kkc-dni-text');
		        var boxGodzText = $(document.createElement('span')).addClass('kkc-godz-text');
		        var boxMinText = $(document.createElement('span')).addClass('kkc-min-text');
		        var boxSecText = $(document.createElement('span')).addClass('kkc-sec-text');
 						        
		        if(options.addClass != false){
		        	box.addClass(options.addClass);
		        }
		        
		        boxMin.html("00");
		        boxSec.html("00");
	            boxMinText.html(options.minutesText);
	            boxSecText.html(options.secondsText);
	            
		        box.append(boxDni).append(boxDniText).append(boxGodz).append(boxGodzText).append(boxMin).append(boxMinText).append(boxSec).append(boxSecText);
		        _this.empty().append(box);
            	
            	if(countDownTime(_this)){
            		timer =  window.setInterval(function(){onTimer(_this);},nextelapse);
            	}
            	
            });
            
			function countDownTime(_this){
		       	var now = new Date();
		        now = Math.floor((now.getTime() - options.deltaTime) / 1000);    //与服务器时间同步
		        var event = Math.floor(options.endTime / 1000);
		        var count = event - now;
				if(count <= 0){
		            _this.html(options.textAfterCount);
		            if(options.callback){
		            	options.callback();
		            	return false;
		            }			
				}else{
				 	start = count; 
					kkCountDown(false, _this, count);
					return true;
				}
			}
			
			// 倒计时函数 
			function onTimer(obj)
			{ 
			    if (start == 0) 
			    { 
			        window.clearInterval(timer);
			       if(options.callback){
		            	options.callback();
		            }
			        return; 
			    } 
			    start -= 1; 
			    // 清除上一次的定时器 
			    window.clearInterval(timer); 
			    // 自校验系统时间得到时间差, 并由此得到下次所启动的新定时器的时间nextelapse 
			    counter++;
			    var counterSecs = counter * 1000; 
			    var elapseSecs = new Date().valueOf() - startTime; 
			    var diffSecs = counterSecs - elapseSecs;

				//否则认为客户端用户调整了系统时间，不再进行定时器误差调整,重新加载
				if (Math.abs(diffSecs) < 1000) {
					nextelapse = normalelapse + diffSecs;
				}else{//客户端修改时间
 					 nextelapse = normalelapse;
 					 if((diffSecs>-2000 && diffSecs < -1000) || diffSecs > normalelapse){//重新校验
 					  	 counter = 0;
	     	 			 startTime = new Date().valueOf();//初始化开始时间
						if(options.callbackTime){
							options.callbackTime(options);
						}		
 					 }
				}
				if(diffSecs < -1000)
					nextelapse = 0;
				else
					kkCountDown(false, obj, start);	
				
			    // 启动新的定时器 
			    timer = window.setInterval(function(){onTimer(obj);},nextelapse);
				
			}
            
            function kkCountDown(oneDay, obj, count){
           	var sekundy = naprawaCzasu(count % 60);
	            count = Math.floor(count/60);
	            var minuty = naprawaCzasu(count % 60);
	            count = Math.floor(count/60);
	            var godziny = naprawaCzasu(count % 24);
	            count = Math.floor(count/24);
	            var dni = count;
	            
				if(oneDay && options.oneDayClass != false){
		            obj.addClass(options.oneDayClass);
				}
				
				//天
				if(dni == 0 && !options.displayZeroDays){
	             	obj.find('.kkc-dni').hide();
	             	obj.find('.kkc-dni-text').hide();						
				}else {
	            	obj.find('.kkc-dni').html(dni);
	                obj.find('.kkc-dni-text').html(options.daysText);
	            }
	            
	            //时
	            if(godziny == '00' && !options.displayZeroHours){
	             	obj.find('.kkc-godz').hide();
	             	obj.find('.kkc-godz-text').hide();	
	            }else{
       	            obj.find('.kkc-godz').html(godziny);
             		obj.find('.kkc-godz-text').html(options.hoursText);
	            }
	            //分
	            obj.find('.kkc-min').html(minuty);
	            obj.find('.kkc-min-text').html(options.minutesText);
	            //秒
	            obj.find('.kkc-sec').html(sekundy);
	            obj.find('.kkc-sec-text').html(options.secondsText);
            }
            
            function naprawaCzasu(obj){
			    s = '';
			    if(obj < 10){
			        obj = '0' + obj;
			    }
			    return obj;
			}
      }
})(jQuery);
