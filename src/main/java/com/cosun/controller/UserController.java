package com.cosun.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cosun.entities.User;
import com.cosun.service.UserService;
import com.cosun.utils.CookieUtils;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	private static final String COOKIE_NAME="ASP.NET_SessionId";
	@ResponseBody
	@RequestMapping("/islogin")
	public Boolean islogin(HttpServletRequest request,HttpServletResponse response){
		//false 
		//ASP.NET_SessionId: dnwm4hzuzjvfup0ip0hiuk04
		String token = CookieUtils.getCookieValue(request, "ASP.NET_SessionId");
		
        if (token!=null) {
        	if (null!=userService.queryUserByToken(token)) {
				return true;
			}
		}
		return false;
	}
	@ResponseBody
	@RequestMapping("/loginuser123")
	public Map<String,Object> loginuser123(@RequestParam("passWord") String password,@RequestParam("userName") String displayName,HttpServletRequest request,HttpServletResponse response){
		//{"IsSuccess":false,"Message":"登录名或密码错误","UserId":null}
		//{"IsSuccess":true,"Message":"登录成功"}
		Map<String,Object> result=new HashMap<String,Object>();
		try {
			String token=this.userService.doLogin(password,displayName);
			if (null==token) {
				//登录失败
				result.put("IsSuccess", false);
				result.put("Message", "登录名或密码错误");
				result.put("UserId", null);
			}else{
				//登陆成功
				result.put("IsSuccess", true);
				result.put("Message", "登录成功");
				//TODO将token保存进cookie
				CookieUtils.setCookie(request, response, COOKIE_NAME, token);
			}
		} catch (Exception e) {
		}
	
		return result;
	}
	@ResponseBody
	@RequestMapping("/info")
	public User info(HttpServletRequest request,HttpServletResponse response){
		//{"IsSuccess":true,"isVip":false,"vipLevel":0,"isAuthentication":false,"growthl":106,"accountl":0,"balance":0.0000,"rbbalance":0.0000,"displayName":"lotteryismine","userId":"66428","isNeedBetPwd":false,"MaxLevelName":"幸运彩民"}
		Cookie[] cookies = request.getCookies();
		String token=null;
		if(null!=cookies){
	        for(Cookie cookie : cookies){
	          if("ASP.NET_SessionId".equals(cookie.getName())){
	        	  token=cookie.getValue();
	        	  break;
	          }
	        }
	        if (token!=null) {
	        	User user = userService.queryUserByToken(token);
	        	if (null!=user) {
					return user;
				}
			}
	    }
		return null;
	
	}
	@ResponseBody
	@RequestMapping("/reloaduser")
	public User reloaduser(@RequestParam(name="pid",required=false) String pid,HttpServletRequest request,HttpServletResponse response){
		//{"IsSuccess":true,"isVip":false,"vipLevel":0,"growthl":107,"isAuthentication":false,"accountl":0,"balance":0.0000,"rbbalance":10.0000,"isAlipay":false,"displayName":"lotteryismine","userId":"66428","isNeedBetPwd":false,"isQQ":false,"Figureurl":"","doudou":0,"MaxLevelName":"幸运彩民"}
		Cookie[] cookies = request.getCookies();
		String token=null;
		if(null!=cookies){
			for(Cookie cookie : cookies){
				if("ASP.NET_SessionId".equals(cookie.getName())){
					token=cookie.getValue();
					break;
				}
			}
			if (token!=null) {
				User user = userService.queryUserByToken(token);
				if (null!=user) {
					return user;
				}
			}
		}
		return null;
		
	}
}
