package com.cosun.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cosun.dao.LotteryDao;
import com.cosun.entities.Lottery;
import com.cosun.service.LotteryService;
@Service
@Transactional
public class LotteryServiceImpl implements LotteryService {

	@Autowired
	private LotteryDao lotteryDao;
	@Override
	public List<Lottery> findByGameCode(String loty) {
		String hql="from Lottery l where l.GameCode=?";
		return lotteryDao.findByHQL(hql, loty);
	}
	@Override
	public Lottery findById(Integer lotType) {
		Lottery lottery = lotteryDao.findById(lotType);
		return lottery;
	}
	

}
