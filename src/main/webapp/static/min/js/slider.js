//大图片路径
var bigImgPath = "";
var ImgPathLink = "";
//小图片路径
var smallImgPath = "";

var bigImgPathArr = ["http://img.cailele.com/img_new/banner/201501/2015-01-12kmabc_1000x80.jpg"];
					
var imgLinkArr = ["http://abc.cailele.com?f=kmabc"];
					
var smallImgPathArr = ["http://img.cailele.com/img_new/banner/201501/2015-01-12kmabc_1000x80.jpg"]

function TopAd(){
	//var randIndex = random(0,bigImgPathArr.length);
	var randIndex = 0;
	bigImgPath = bigImgPathArr[randIndex];
	ImgPathLink = imgLinkArr[randIndex];
	smallImgPath = smallImgPathArr[randIndex];
	var str = "<div id=\"bgImg\">";
	//str += "<div id=\"adBig\" class='big_warp'><div class='big_in'><a href=\""+ImgPathLink+"\" target=\"_blank\"><img src=\""+bigImgPath+"\" /></a></div><a href='javascript:void(0);' class='close' onclick='showImage()'></a></div>";
	str += "<div id=\"adBig\" class='big_warp'><div class='big_in'><a href=\""+ImgPathLink+"\" target=\"_blank\"><img src=\""+bigImgPath+"\" /></a></div></div>";
	str += "<div id=\"adSmall\" class='small_warp' style=\"display:none;\" ><div class='small_in'><a href=\""+ImgPathLink+"\" target=\"_blank\"><img src=\""+smallImgPath+"\" /></a></div></div>";
	str += "";
	str += "</div>";
    return str;
}

function random(min,max){
	return Math.floor(min+Math.random()*(max-min));
}

//缩小布幕
function showImage(){
    $("#adBig").slideUp(1000,function(){$("#adSmall").slideDown(1000);});
}

//页面加载完后执行
$(document).ready(function(){
	//星期日不显示
	//var serverTime = new Date(getServerDateByLong());
	//if(serverTime.getDay() == 0){
		//return;
	//}
	
	//$(".header_area").before(TopAd());
	
});
