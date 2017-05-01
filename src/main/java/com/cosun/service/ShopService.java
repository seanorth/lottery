package com.cosun.service;

import java.util.Map;

import com.cosun.entities.Shop;

public interface ShopService {

	int updateByParams(Map<Integer, Integer> map, String string);

	boolean radioShop(Integer shopId);
	//根据彩种置空0
	boolean resetShop(String type);
	//查询当前活动状态的shop
	Shop currentShop();
	
	
}
