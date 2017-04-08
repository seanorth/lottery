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
@RequestMapping("/szcpop")
public class ConfirmController {

	@RequestMapping("")
	public void index(@RequestParam("g") String g,@RequestParam("ishm") Boolean ishm,@RequestParam("ischase") Boolean ischase,HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		String path = request.getSession().getServletContext().getRealPath("/");
		FileEntity fileEntity = new FileEntity(new File(path+"\\WEB-INF\\classes/confirm.txt"));
	try {
		fileEntity.writeTo(response.getOutputStream());
	} catch (IOException e) {
		e.printStackTrace();
	}
	}
}
