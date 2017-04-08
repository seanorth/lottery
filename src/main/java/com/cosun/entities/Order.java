package com.cosun.entities;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_order", catalog = "lottery")
public class Order {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer orderId;
	private String  GameCode;
	private String  CurrentIssuse;
	private Long    TotalMoney;
	private String  Number;
	private String  IssuseNumber;
	private Boolean IsStopAfterBonus;
	private Integer sercurity;
	private Long    rbmoney;
	private Boolean IsAppend;
	private Integer kind;
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public String getGameCode() {
		return GameCode;
	}
	public void setGameCode(String gameCode) {
		GameCode = gameCode;
	}
	public String getCurrentIssuse() {
		return CurrentIssuse;
	}
	public void setCurrentIssuse(String currentIssuse) {
		CurrentIssuse = currentIssuse;
	}
	public Long getTotalMoney() {
		return TotalMoney;
	}
	public void setTotalMoney(Long totalMoney) {
		TotalMoney = totalMoney;
	}
	public String getNumber() {
		return Number;
	}
	public void setNumber(String number) {
		Number = number;
	}
	public String getIssuseNumber() {
		return IssuseNumber;
	}
	public void setIssuseNumber(String issuseNumber) {
		IssuseNumber = issuseNumber;
	}
	public Boolean getIsStopAfterBonus() {
		return IsStopAfterBonus;
	}
	public void setIsStopAfterBonus(Boolean isStopAfterBonus) {
		IsStopAfterBonus = isStopAfterBonus;
	}
	public Integer getSercurity() {
		return sercurity;
	}
	public void setSercurity(Integer sercurity) {
		this.sercurity = sercurity;
	}
	public Long getRbmoney() {
		return rbmoney;
	}
	public void setRbmoney(Long rbmoney) {
		this.rbmoney = rbmoney;
	}
	public Boolean getIsAppend() {
		return IsAppend;
	}
	public void setIsAppend(Boolean isAppend) {
		IsAppend = isAppend;
	}
	public Integer getKind() {
		return kind;
	}
	public void setKind(Integer kind) {
		this.kind = kind;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", GameCode=" + GameCode
				+ ", CurrentIssuse=" + CurrentIssuse + ", TotalMoney="
				+ TotalMoney + ", Number=" + Number + ", IssuseNumber="
				+ IssuseNumber + ", IsStopAfterBonus=" + IsStopAfterBonus
				+ ", sercurity=" + sercurity + ", rbmoney=" + rbmoney
				+ ", IsAppend=" + IsAppend + ", kind=" + kind + "]";
	}
	
}
