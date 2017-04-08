package com.cosun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/szc_fb")
public class ContentController {
	@RequestMapping("/SSQ")
	public String SSQ(){
		return "/szc_fb/SSQ";
	}
	@RequestMapping("/FC3D")
	public String FC3D(){
		return "/szc_fb/FC3D";
	}
}
