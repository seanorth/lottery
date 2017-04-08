package com.cosun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cosun.utils.GetPostReq;

@Controller
@RequestMapping("/jsonp")
public class JsonpController {

	@RequestMapping("/buy/curissuse/{gameCode}")
	public void curissuse(@PathVariable String gameCode,@RequestParam("ref") String ref,@RequestParam("r") Double r,HttpServletRequest request,HttpServletResponse response){
		String url="http://www.jiang.com/buy/curissuse/"+gameCode+"?ref="+ref+"&r="+r;
		GetPostReq.httpGet(url,request,response);
		return ;
	}

	@RequestMapping("/**")
	public void qyh(HttpServletRequest request,HttpServletResponse response){
		String servletPath = request.getServletPath();
		String queryString = request.getQueryString();
		String substring = servletPath.substring(6, servletPath.length());
		
		String url="http://www.cailele.com"+substring+"?"+queryString;
		//判断请求方法
		if (request.getMethod().toUpperCase().equals("POST")){
			
			GetPostReq.httpPost(url,request,response);
		}else if (request.getMethod().toUpperCase().equals("GET")){
			
			GetPostReq.httpGet(url,request,response);
			
		}
		//System.out.println(substring);
		return ;
	}
}
