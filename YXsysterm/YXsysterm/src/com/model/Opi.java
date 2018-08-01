package com.model;
// Generated 2018-7-27 19:52:01 by Hibernate Tools 3.5.0.Final

/**
 * 
 */
public class Opi implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;  //产品ID：
	private String proname;//产品名称
	private String promodel;//产品型号：
	private String prograde;//产品等级：
	private String probatch;//产品批次
	private String unit;//单位：
	private Double price;//单价：
	private Integer num;//库存数量：
	private String depot;//所在仓库：城市-地区
	private String stall;//货位
	private String coaf;//备注：

	public Opi() {
	}

	public Opi(String id) {
		this.id = id;
	}

	public Opi(String id, String proname, String promodel, String prograde, String probatch, String unit, Double price,
			Integer num, String depot, String stall, String coaf) {
		super();
		this.id = id;
		this.proname = proname;
		this.promodel = promodel;
		this.prograde = prograde;
		this.probatch = probatch;
		this.unit = unit;
		this.price = price;
		this.num = num;
		this.depot = depot;
		this.stall = stall;
		this.coaf = coaf;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProname() {
		return proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public String getPromodel() {
		return promodel;
	}

	public void setPromodel(String promodel) {
		this.promodel = promodel;
	}

	public String getPrograde() {
		return prograde;
	}

	public void setPrograde(String prograde) {
		this.prograde = prograde;
	}

	public String getProbatch() {
		return probatch;
	}

	public void setProbatch(String probatch) {
		this.probatch = probatch;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getDepot() {
		return depot;
	}

	public void setDepot(String depot) {
		this.depot = depot;
	}

	public String getStall() {
		return stall;
	}

	public void setStall(String stall) {
		this.stall = stall;
	}

	public String getCoaf() {
		return coaf;
	}

	public void setCoaf(String coaf) {
		this.coaf = coaf;
	}

	

}
