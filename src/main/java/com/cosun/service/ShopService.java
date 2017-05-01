package com.cosun.service;

import java.util.Map;

public interface ShopService {

	int updateByParams(Map<Integer, Integer> map, String string);

	boolean radioShop(Integer shopId);
	//根据彩种置空0
	boolean resetShop(String type);
	
}
