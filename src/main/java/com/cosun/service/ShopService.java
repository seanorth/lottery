package com.cosun.service;

import java.util.Map;

public interface ShopService {

	int updateByParams(Map<Integer, Integer> map, String string);

	boolean radioShop(Integer shopId);
	
}
