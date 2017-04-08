package com.cosun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController {

	@RequestMapping("/qyh")
	public String qyh(){
		return "/qyh";
	}
	@RequestMapping("/ssq")
	public String ssq(){
		return "/ssq";
	}
	@RequestMapping("/3d")
	public String fc3d(){
		return "/3d";
	}
}
