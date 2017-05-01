package com.cosun.service.impl;

import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosun.dao.ShopDao;
import com.cosun.entities.Shop;
import com.cosun.service.ShopService;
@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopDao shopDaoImpl;
	@Override
	public int updateByParams(Map<Integer, Integer> map, String string) {
		Set<Integer> keySet = map.keySet();
		for (Integer id : keySet) {
			Shop shop = shopDaoImpl.findById(id);
			switch (string) {
			case "sequenceNum":
				//shop.setSequenceNum(map.get(id));
				break;
			case "extracode":
				shop.setExtracode(map.get(id));
				break;

			default:
				break;
			}
			shopDaoImpl.save(shop);
		}
		return 3;
	}
	@Override
	public boolean radioShop(Integer shopId) {
		String sql1="update t_shop  set isUsing=1 where shopId= "+shopId;
		String sql2="update t_shop  set isUsing=0 where shopId!= "+shopId;
		int i=shopDaoImpl.excuteBySql(sql1);
		int j=shopDaoImpl.excuteBySql(sql2);
		if (i>0&&j>0) {
			return true;
		} else {
			return false;
		}
	}
	@Override
	public boolean resetShop(String type) {
		String sql=null;
		int i=0;
		switch (type) {
		case "qyh":
			 sql="update t_shop  set sequenceNum_qyh=0";
			 i=shopDaoImpl.excuteBySql(sql);
			break;
		case "3d":
			 sql="update t_shop  set sequenceNum_3d=0";
			 i=shopDaoImpl.excuteBySql(sql);
			break;
		case "ssq":
			 sql="update t_shop  set sequenceNum_ssq=0";
			 i=shopDaoImpl.excuteBySql(sql);
			break;
		default:
			break;
		}
		return i>0?true:false;
	}

	

}
