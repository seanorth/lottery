package com.cosun.entities;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ticket", catalog = "lottery")
public class Ticket {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer ticketId;
	private String  playMethod;			//玩法
	private Integer printerNum;			//机号
	private String  uuid;				//uuid
	private Integer sequenceNum;		//流水号
	private String  salePeriod;			//销售期
	private String  subUuid;			//子uuid
	private java.util.Date   saleTime=new Date();	//销售时间
	private Integer amount;				//金额
	private Integer multiple;			//倍数
	private java.sql.Date    openDate;	//开奖日期
	private Integer extracode;			//附加码
	private String  address;			//地址
	private java.sql.Date    closeDate;	//兑奖结束日期
	public Integer getTicketId() {
		return ticketId;
	}
	public void setTicketId(Integer ticketId) {
		this.ticketId = ticketId;
	}
	public String getPlayMethod() {
		return playMethod;
	}
	public void setPlayMethod(String playMethod) {
		this.playMethod = playMethod;
	}
	public Integer getPrinterNum() {
		return printerNum;
	}
	public void setPrinterNum(Integer printerNum) {
		this.printerNum = printerNum;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public Integer getSequenceNum() {
		return sequenceNum;
	}
	public void setSequenceNum(Integer sequenceNum) {
		this.sequenceNum = sequenceNum;
	}
	public String getSalePeriod() {
		return salePeriod;
	}
	public void setSalePeriod(String salePeriod) {
		this.salePeriod = salePeriod;
	}
	public String getSubUuid() {
		return subUuid;
	}
	public void setSubUuid(String subUuid) {
		this.subUuid = subUuid;
	}
	public Date getSaleTime() {
		return saleTime;
	}
	public void setSaleTime(Date saleTime) {
		this.saleTime = saleTime;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getMultiple() {
		return multiple;
	}
	public void setMultiple(Integer multiple) {
		this.multiple = multiple;
	}
	public java.sql.Date getOpenDate() {
		return openDate;
	}
	public void setOpenDate(java.sql.Date openDate) {
		this.openDate = openDate;
	}
	public Integer getExtracode() {
		return extracode;
	}
	public void setExtracode(Integer extracode) {
		this.extracode = extracode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public java.sql.Date getCloseDate() {
		return closeDate;
	}
	public void setCloseDate(java.sql.Date closeDate) {
		this.closeDate = closeDate;
	}
	
}
