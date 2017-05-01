package com.cosun.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cosun.service.ShopService;

@Controller
@RequestMapping("/setParam")
public class SetParamController {
	@Autowired
	private ShopService shopseServiceImpl;
	
	@RequestMapping("/index")
	public String index(){
		return "/setPage";
	}
	/*@RequestMapping("/sequenceNum")
	@ResponseBody
	public String sequenceNum(@RequestParam("sequenceNums")String sequenceNums){
		String[] split = sequenceNums.split(",");
		Map<Integer,Integer> map=new HashMap<>();
		if (split.length!=0) {
			for (int i = 0; i < split.length; i++) {
				map.put(i+1, Integer.valueOf(split[i]));
			}
			int n=shopseServiceImpl.updateByParams(map,"sequenceNum");
			if(n>0){return "true";}
		}
		return "false";
	}*/
	@RequestMapping("/extracode")
	@ResponseBody
	public String extracode(@RequestParam("extracodes")String extracodes){
		String[] split = extracodes.split(",");
		Map<Integer,Integer> map=new HashMap<>();
		if (split.length!=0) {
			for (int i = 0; i < split.length; i++) {
				map.put(i+1, Integer.valueOf(split[i]));
			}
			int n=shopseServiceImpl.updateByParams(map,"extracode");
			if(n>0){return "true";}
		}
		return "false";
	}
	//流水号置零
	@RequestMapping("/sequenceNum/reset")
	@ResponseBody
	public String reset(@RequestParam("type")String type){
		boolean boo=shopseServiceImpl.resetShop(type);
		if (boo) {
			return "true";
		} else {
			return "false";
		}
	}
	//设置商铺活动状态
	@RequestMapping("shopId")
	@ResponseBody
	public String shopId(@RequestParam("shopId")Integer shopId){
		boolean boo=shopseServiceImpl.radioShop(shopId);
		if (boo) {
			return "true";
		} else {
			return "false";
		}
	}
}
