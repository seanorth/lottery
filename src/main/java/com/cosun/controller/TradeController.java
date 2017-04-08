package com.cosun.controller;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cosun.entities.Lottery;
import com.cosun.entities.Pattn;
import com.cosun.entities.Trade;
import com.cosun.service.LotteryService;

@Controller
@RequestMapping("/trade")
public class TradeController {

	@Autowired
	private LotteryService lotteryService;
	@RequestMapping("/dg")
	public void dg(Trade trade){
		System.out.println(trade.toString());
				//((\\d{2}),)    表示\\1          代表 01,
				//(\\d{2})     表示\\2                  代表 01
				/*	String 双色球单式="DS\\.((\\d{2}),){5}(\\d{2})\\|(\\d{2})\\.false";
				String 双色球复式="FS\\.((\\d{2}),){5,19}(\\d{2})\\|((\\d{2}),){0,15}(\\d{2})\\.false";
				String 双色球标准="2:((\\d{2}),){5,15}(\\d{2})\\|((\\d{2}),){0,15}(\\d{2})";
				String 双色球胆拖="DT\\.((\\d{2}),){0,4}(\\d{2})\\|((\\d{2}),){1,15}(\\d{2})\\|((\\d{2}),){0,15}(\\d{2})\\.true";
				3:07,08,09,11,12#27,28,29,30,31,32,33|12,13
				String 双色球胆拖2="3:((\\d{2}),){0,4}(\\d{2})#((\\d{2}),){1,15}(\\d{2})\\|((\\d{2}),){0,15}(\\d{2})";
				*/
				Integer lotType = trade.getLotType();
				String content = trade.getContent();
				String[] split = content.split("~");
				//假设split只能为单式多注或其他式一注（split[0]）
				String  str=split[0];
				Lottery lott= lotteryService.findById(lotType);
				
				for (Pattn p : lott.getPattns()) {
					if (p.getRegEx()!=null) {
						
						Pattern pat=Pattern.compile(p.getRegEx());
						Matcher m=pat.matcher(str);
						boolean result=m.find();
						if (result) {
							System.out.println(p.getLabel()+"]"+str);
						}
					}
				}
				
	}
	@Test
	public  void test(){
		//String str="2:16,17,19,22,31,33|15";
		String str="3:05,06,07,08#31,32,33|11,12";
		String regEx="2:((\\d{2}),){5,15}(\\d{2})\\|((\\d{2}),){0,15}(\\d{2})";
		String r="3:((\\d{2}),){0,4}(\\d{2})#((\\d{2}),){1,15}(\\d{2})\\|((\\d{2}),){0,15}(\\d{2})";
		Pattern pat=Pattern.compile(regEx);
		Matcher m=pat.matcher(str);
		boolean result=m.find();
		
		System.out.println(result);
	}
}
