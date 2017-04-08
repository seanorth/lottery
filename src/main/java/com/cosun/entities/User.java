package com.cosun.entities;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "t_user", catalog = "lottery")
public class User {

	private Integer 	isSaveUserName;
	private Boolean 	IsSuccess;
	private Boolean 	isVip;
	private Boolean 	isAlipay;
	private Boolean 	isGoldAlipay;
	private Boolean 	isQQ;
	private Integer     vipLevel;
	private Boolean 	isAuthentication;
	private Integer     growthl;
	private Integer     accountl;
	private Long    	balance;			//余额
	private Long     	rbbalance;
	private Long     	doudou;
	private String  	displayName;		//用户名1
	private String  	username;			//用户名2
	private String  	Figureurl;		
	@JsonIgnore
	private String  	password;			//密码
	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer     userId;
	private Boolean 	isNeedBetPwd;
	private String  	MaxLevelName;
	private Boolean 	IsRebate;
	private Boolean 	IsExperter;
	private Boolean 	IsBetHM;
	private String  	unReadMail;
	
	public Integer getIsSaveUserName() {
		return isSaveUserName;
	}
	public void setIsSaveUserName(Integer isSaveUserName) {
		this.isSaveUserName = isSaveUserName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean isIsSuccess() {
		return IsSuccess;
	}
	public void setIsSuccess(Boolean isSuccess) {
		IsSuccess = isSuccess;
	}
	public Boolean isVip() {
		return isVip;
	}
	public void setVip(Boolean isVip) {
		this.isVip = isVip;
	}

	public Boolean getIsVip() {
		return isVip;
	}
	public void setIsVip(Boolean isVip) {
		this.isVip = isVip;
	}
	public Integer getVipLevel() {
		return vipLevel;
	}
	public void setVipLevel(Integer vipLevel) {
		this.vipLevel = vipLevel;
	}
	public Boolean getIsAuthentication() {
		return isAuthentication;
	}
	public void setIsAuthentication(Boolean isAuthentication) {
		this.isAuthentication = isAuthentication;
	}
	public Boolean getIsNeedBetPwd() {
		return isNeedBetPwd;
	}
	public void setIsNeedBetPwd(Boolean isNeedBetPwd) {
		this.isNeedBetPwd = isNeedBetPwd;
	}
	public Boolean getIsSuccess() {
		return IsSuccess;
	}
	public Boolean getIsAlipay() {
		return isAlipay;
	}
	public void setIsAlipay(Boolean isAlipay) {
		this.isAlipay = isAlipay;
	}
	public Boolean getIsGoldAlipay() {
		return isGoldAlipay;
	}
	public void setIsGoldAlipay(Boolean isGoldAlipay) {
		this.isGoldAlipay = isGoldAlipay;
	}
	public Boolean getIsQQ() {
		return isQQ;
	}
	public void setIsQQ(Boolean isQQ) {
		this.isQQ = isQQ;
	}
	public Long getDoudou() {
		return doudou;
	}
	public void setDoudou(Long doudou) {
		this.doudou = doudou;
	}
	public String getFigureurl() {
		return Figureurl;
	}
	public void setFigureurl(String figureurl) {
		Figureurl = figureurl;
	}
	public Boolean getIsRebate() {
		return IsRebate;
	}
	public Boolean getIsExperter() {
		return IsExperter;
	}
	public Boolean getIsBetHM() {
		return IsBetHM;
	}
	public Boolean isAuthentication() {
		return isAuthentication;
	}
	public void setAuthentication(Boolean isAuthentication) {
		this.isAuthentication = isAuthentication;
	}
	public Integer getGrowthl() {
		return growthl;
	}
	public void setGrowthl(Integer growthl) {
		this.growthl = growthl;
	}
	public Integer getAccountl() {
		return accountl;
	}
	public void setAccountl(Integer accountl) {
		this.accountl = accountl;
	}
	public Long getBalance() {
		return balance;
	}
	public void setBalance(Long balance) {
		this.balance = balance;
	}
	public Long getRbbalance() {
		return rbbalance;
	}
	public void setRbbalance(Long rbbalance) {
		this.rbbalance = rbbalance;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Boolean isNeedBetPwd() {
		return isNeedBetPwd;
	}
	public void setNeedBetPwd(Boolean isNeedBetPwd) {
		this.isNeedBetPwd = isNeedBetPwd;
	}
	public String getMaxLevelName() {
		return MaxLevelName;
	}
	public void setMaxLevelName(String maxLevelName) {
		MaxLevelName = maxLevelName;
	}
	public Boolean isIsRebate() {
		return IsRebate;
	}
	public void setIsRebate(Boolean isRebate) {
		IsRebate = isRebate;
	}
	public Boolean isIsExperter() {
		return IsExperter;
	}
	public void setIsExperter(Boolean isExperter) {
		IsExperter = isExperter;
	}
	public Boolean isIsBetHM() {
		return IsBetHM;
	}
	public void setIsBetHM(Boolean isBetHM) {
		IsBetHM = isBetHM;
	}
	public String getUnReadMail() {
		return unReadMail;
	}
	public void setUnReadMail(String unReadMail) {
		this.unReadMail = unReadMail;
	}
	
}
