package com.cosun.service;

import java.util.List;

import com.cosun.entities.Lottery;

public interface LotteryService {

	List<Lottery> findByGameCode(String loty);

	Lottery findById(Integer lotType);

}
