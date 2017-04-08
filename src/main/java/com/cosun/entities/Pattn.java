package com.cosun.entities;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
//玩法
@Entity
@Table(name = "t_pattn", catalog = "lottery")
public class Pattn {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer patternId;
	private String patternCode;
	private String label;
	//正则表达式字符串
	private String regEx;
	//一种玩法对应一种票
	@ManyToOne
	@JoinColumn(name="lotType")
	private Lottery lottery;
	
	public Lottery getLottery() {
		return lottery;
	}
	public void setLottery(Lottery lottery) {
		this.lottery = lottery;
	}
	public String getRegEx() {
		return regEx;
	}
	public void setRegEx(String regEx) {
		this.regEx = regEx;
	}
	public Integer getPatternId() {
		return patternId;
	}
	public void setPatternId(Integer patternId) {
		this.patternId = patternId;
	}
	public String getPatternCode() {
		return patternCode;
	}
	public void setPatternCode(String patternCode) {
		this.patternCode = patternCode;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	
}
