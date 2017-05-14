package com.cosun.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.entity.FileEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cosun.utils.GetPostReq;

@Controller
@RequestMapping("/jsonp")
public class JsonpController {

	@RequestMapping("/buy/curissuse/{gameCode}")
	public void curissuse(@PathVariable String gameCode,
			@RequestParam("ref") String ref, @RequestParam("r") Double r,
			HttpServletRequest request, HttpServletResponse response) {
		String url = "http://www.jiang.com/buy/curissuse/" + gameCode + "?ref="
				+ ref + "&r=" + r;
		GetPostReq.httpGet(url, request, response);
		return;
	}

	@RequestMapping("/serverDate")
	public void serverDate(HttpServletRequest request,
			HttpServletResponse response) {
		String url = "http://api.k780.com:88/?app=life.time&appkey=25211&sign=6ee8078960ef9c6dce3199d2f394f7ce&format=json";
		GetPostReq.httpGet(url, request, response);
		return;
	}

	@RequestMapping("/trade/tradePlanListNew")
	public void trade_tradePlanListNew(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path
				+ "\\WEB-INF\\classes/tradePlanListNew.txt"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (fileEntity!=null) {
				fileEntity=null;
			}
		}
	}
	@RequestMapping("/static/3d/{file}")
	public void static_3d_file(HttpServletRequest request,
			HttpServletResponse response,@PathVariable("file")String file) {
		response.setContentType("text/html;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path
				+ "\\WEB-INF\\classes/3d/"+file+".txt"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (fileEntity!=null) {
				fileEntity=null;
			}
		}
	}
	@RequestMapping("/static/qyh/{file}")
	public void static_qyh_file(HttpServletRequest request,
			HttpServletResponse response,@PathVariable("file")String file) {
		response.setContentType("text/html;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path
				+ "\\WEB-INF\\classes/qyh/"+file+".txt"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (fileEntity!=null) {
				fileEntity=null;
			}
		}
	}
	@RequestMapping("/static/ssq/{file}")
	public void static_ssq_file(HttpServletRequest request,
			HttpServletResponse response,@PathVariable("file")String file) {
		response.setContentType("text/html;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path
				+ "\\WEB-INF\\classes/ssq/"+file+".txt"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (fileEntity!=null) {
				fileEntity=null;
			}
		}
	}
	@RequestMapping("/static/sjh")
	public void static_sjh(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path
				+ "\\WEB-INF\\classes/sjh.txt"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (fileEntity!=null) {
				fileEntity=null;
			}
		}
	}
	@RequestMapping("/trade/bonusCalculator")
	public void trade_bonusCalculator(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path
				+ "\\WEB-INF\\classes/bonusCalculator.txt"));
		try {
			fileEntity.writeTo(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (fileEntity!=null) {
				fileEntity=null;
			}
		}
	}

	@RequestMapping("/**")
	public void adapter(HttpServletRequest request, HttpServletResponse response) {
		String servletPath = request.getServletPath();
		String queryString = request.getQueryString();
		String substring = servletPath.substring(6, servletPath.length());

		String url = "http://www.cailele.com" + substring + "?" + queryString;
		// 判断请求方法
		if (request.getMethod().toUpperCase().equals("POST")) {

			GetPostReq.httpPost(url, request, response);
		} else if (request.getMethod().toUpperCase().equals("GET")) {

			GetPostReq.httpGet(url, request, response);

		}
		// System.out.println(substring);
		return;
	}
}
