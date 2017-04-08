package com.cosun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/szc")
public class BaseController {
	@RequestMapping("/ssq")
	public String ssq(){
		return "/szc/ssq";
	}
	@RequestMapping("/fc3d")
	public String fc3d(){
		return "/szc/fc3d";
	}
}
