package com.cosun.entities;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "t_shop", catalog = "lottery")
public class Shop {
	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer shopId;
	private String  address;
	private Integer printerNum;
	private Integer sequenceNum;
	private Integer extracode;
	private Boolean isUsing;
	public Boolean getIsUsing() {
		return isUsing;
	}
	public void setIsUsing(Boolean isUsing) {
		this.isUsing = isUsing;
	}
	public Integer getShopId() {
		return shopId;
	}
	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getPrinterNum() {
		return printerNum;
	}
	public void setPrinterNum(Integer printerNum) {
		this.printerNum = printerNum;
	}
	public Integer getSequenceNum() {
		return sequenceNum;
	}
	public void setSequenceNum(Integer sequenceNum) {
		this.sequenceNum = sequenceNum;
	}
	public Integer getExtracode() {
		return extracode;
	}
	public void setExtracode(Integer extracode) {
		this.extracode = extracode;
	}

}
