package com.cosun.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.entity.FileEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/static")
public class StaticController {

	private static final String ctx = "/static/min";

	@RequestMapping("/min")
	public void qyh(@RequestParam(name = "f", required = true) String files,
			HttpServletRequest request, HttpServletResponse response) {
		
		String path = request.getSession().getServletContext().getRealPath("/");
		String[] arrFile = files.split(",");
		if (arrFile[0].endsWith(".css")) {
			response.setContentType("text/css;charset=utf-8");
		} else if (arrFile[0].endsWith(".js")) {
			response.setContentType("application/x-javascript;charset=utf-8");
		}
		for (String p : arrFile) {
			FileEntity fileEntity = new FileEntity(new File(path+ctx+p));
			try {
				fileEntity.writeTo(response.getOutputStream());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	@RequestMapping("/proxy/login")
	public void proxyLogin(HttpServletRequest request, HttpServletResponse response){
		response.setContentType("text/html; charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path+ctx+"/proxy/login.shtml"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/proxy/js/referer")
	public void proxyReferer(HttpServletRequest request, HttpServletResponse response){
		response.setContentType("application/x-javascript;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path+ctx+"/proxy/js/referer.js"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
/*	@RequestMapping("/proxy/trade/tradePlanListNew")
	public void proxyTrade(HttpServletRequest request, HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path+ctx+"/proxy/trade/tradePlanListNew.php"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}*/

}
