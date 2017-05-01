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
	private Integer sequenceNum_ssq;
	private Integer sequenceNum_3d;
	private Integer sequenceNum_qyh;
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
	public Integer getSequenceNum_ssq() {
		return sequenceNum_ssq;
	}
	public void setSequenceNum_ssq(Integer sequenceNum_ssq) {
		this.sequenceNum_ssq = sequenceNum_ssq;
	}
	public Integer getSequenceNum_3d() {
		return sequenceNum_3d;
	}
	public void setSequenceNum_3d(Integer sequenceNum_3d) {
		this.sequenceNum_3d = sequenceNum_3d;
	}
	public Integer getSequenceNum_qyh() {
		return sequenceNum_qyh;
	}
	public void setSequenceNum_qyh(Integer sequenceNum_qyh) {
		this.sequenceNum_qyh = sequenceNum_qyh;
	}
	public Integer getExtracode() {
		return extracode;
	}
	public void setExtracode(Integer extracode) {
		this.extracode = extracode;
	}

}
