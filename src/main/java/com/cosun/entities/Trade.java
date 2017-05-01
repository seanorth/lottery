package com.cosun.entities;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_trade", catalog = "lottery")
public class Trade {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer     id;
	private String 		addAttribute;
	private Integer		amount;      		//总金额
	private Integer		amounts;
	private Integer   	commision;
	private String		content;     		//投注内容      28:2|4|3
	private Boolean		ds    ;       		//    =false
	private String		filePath;
	private Integer		founderAmount;
	private Integer		founderBdAmount;
	private Boolean		isDS;          		//=false
	private Integer		lotType;         	//票种 =102
	private Integer		multiple;          	//倍数=1
	private String		other;
	private Integer		playType;         	//玩法=28
	private Integer		publicStatus;     	//=1
	private String		stopCondition;
	private String		submit1;
	private String		term;           	//期数=2017069
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAddAttribute() {
		return addAttribute;
	}
	public void setAddAttribute(String addAttribute) {
		this.addAttribute = addAttribute;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getAmounts() {
		return amounts;
	}
	public void setAmounts(Integer amounts) {
		this.amounts = amounts;
	}
	public Integer getCommision() {
		return commision;
	}
	public void setCommision(Integer commision) {
		this.commision = commision;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Boolean getDs() {
		return ds;
	}
	public void setDs(Boolean ds) {
		this.ds = ds;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public Integer getFounderAmount() {
		return founderAmount;
	}
	public void setFounderAmount(Integer founderAmount) {
		this.founderAmount = founderAmount;
	}
	public Integer getFounderBdAmount() {
		return founderBdAmount;
	}
	public void setFounderBdAmount(Integer founderBdAmount) {
		this.founderBdAmount = founderBdAmount;
	}
	public Boolean getIsDS() {
		return isDS;
	}
	public void setIsDS(Boolean isDS) {
		this.isDS = isDS;
	}
	public Integer getLotType() {
		return lotType;
	}
	public void setLotType(Integer lotType) {
		this.lotType = lotType;
	}
	public Integer getMultiple() {
		return multiple;
	}
	public void setMultiple(Integer multiple) {
		this.multiple = multiple;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public Integer getPlayType() {
		return playType;
	}
	public void setPlayType(Integer playType) {
		this.playType = playType;
	}
	public Integer getPublicStatus() {
		return publicStatus;
	}
	public void setPublicStatus(Integer publicStatus) {
		this.publicStatus = publicStatus;
	}
	public String getStopCondition() {
		return stopCondition;
	}
	public void setStopCondition(String stopCondition) {
		this.stopCondition = stopCondition;
	}
	public String getSubmit1() {
		return submit1;
	}
	public void setSubmit1(String submit1) {
		this.submit1 = submit1;
	}

	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
}
