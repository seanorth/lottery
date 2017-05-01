package com.cosun.utils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.cosun.service.ShopService;

@Component("quartzJob_3d")
public class QuartzJob_3d {
	@Autowired
	private ShopService shopService;
	//定时任务开关
	@Value("${cronExpression.isRunJob}")
	private String isRunJob;
	private void runJob(){
	   if(!StringUtils.equalsIgnoreCase(isRunJob, "true")){return;}
	   shopService.resetShop("3d");
	}
}
