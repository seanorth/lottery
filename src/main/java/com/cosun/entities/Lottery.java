package com.cosun.entities;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "t_lottery", catalog = "lottery")
public class Lottery {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer LotteryId;
	private String GameCode;
	private String label;
	//一种票对应多个玩法
	@OneToMany(mappedBy="lottery")
	private Set<Pattn> pattns=new HashSet<Pattn>();
	public Set<Pattn> getPattns() {
		return pattns;
	}
	public void setPattns(Set<Pattn> pattns) {
		this.pattns = pattns;
	}
	public Integer getLotteryId() {
		return LotteryId;
	}
	public void setLotteryId(Integer lotteryId) {
		LotteryId = lotteryId;
	}
	public String getGameCode() {
		return GameCode;
	}
	public void setGameCode(String gameCode) {
		GameCode = gameCode;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	
}
