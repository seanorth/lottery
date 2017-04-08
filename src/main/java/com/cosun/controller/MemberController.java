package com.cosun.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cosun.entities.User;
import com.cosun.service.UserService;
import com.cosun.utils.CookieUtils;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private UserService userService;
	
	/**
	 * 执行登录
	 */
	@ResponseBody
	@RequestMapping("/loginnew")
	public Map<String,String> loginnew(User user,HttpServletRequest request,HttpServletResponse response){
		//JSESSIONID=427CB740D1621992E70A530EAA387F0D-n2; path=/; domain=.cailele.com; HttpOnly
		Map<String,String> result=new HashMap<>();
		String jsessionId = request.getSession().getId();
		User findUser=userService.loginnew(user,jsessionId);
		if (findUser!=null) {
			result.put("code", "2");
			result.put("url", "http://127.0.0.1:8080/lottery/index/ssq");
			result.put("message", "登录成功");
			result.put("showvalidatecode", "0");
			if (user.getIsSaveUserName()==1) {
				CookieUtils.setCookie(request, response, "user_name", user.getUsername(), 60*60*24*365);
			}else{
				CookieUtils.setCookie(request, response, "user_name", null, 1);
			}
		}else{
			result.put("code", "1");
			result.put("url", "");
			result.put("message", "帐号或密码错误");
			result.put("showvalidatecode", "0");
			
		}
		return result;
	}
	
	
	/**
	 * 检查是否登录
	 */
	@ResponseBody
	@RequestMapping("/loginCheck")
	public ModelAndView logincheck(@RequestParam(name="isCheckLogin",required=false)Integer isCheckLogin,HttpServletRequest request,HttpServletResponse response,ModelAndView m){
		String jsessionId = request.getSession().getId();
		User userByToken = userService.queryUserByToken(jsessionId);
		if (null==isCheckLogin) {
			
			if (userByToken==null) {
				m.setViewName("unlogin");
			} else {
				m.addObject("user", userByToken);
				m.setViewName("logged");
			}
		}else if (isCheckLogin.intValue()==0) {
			if (userByToken==null) {
				m.setViewName("loginCheck");
				m.addObject("msg", "null");
			} else {
				m.setViewName("loginCheck");
				m.addObject("msg", "ok");
			}
		}
		return m;
	}
	/**
	 * 退出登录
	 */
	@ResponseBody
	@RequestMapping("/logoutnew")
	public Map<String,String> logoutnew(HttpServletRequest request,HttpServletResponse response,ModelAndView m){
		String jsessionId = request.getSession().getId();
		Long i = userService.delUserByToken(jsessionId);
		Map<String,String> result=new HashMap<>();
		if (i!=null) {
			result.put("url", "http://127.0.0.1:8080/lottery/member/loginCheck.php");
		}
		return result;
	}
}
