package com.model;
// Generated 2018-7-27 19:52:01 by Hibernate Tools 3.5.0.Final

/**
 * 
 */
public class Pertarget implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;//编号
	private String titel;//主题
	private String type;//类型
	private String btime;//开始时间
	private String etime;//截止时间
	private String ename;//员工姓名
	private Double amount;//计划客户量
	private Double completedCus;//已完成客户量
	private Double money;//计划销售额
	private Double completedSales;//已完成销售额
	private Double an_status;//状态 启用 停用 1 0 type年度计划有且只有一个启用
	public Pertarget() {
		super();
	}
	public Pertarget(String id, String titel, String type, String btime, String etime, String ename, Double amount,
			Double completedCus, Double money, Double completedSales, Double an_status) {
		super();
		this.id = id;
		this.titel = titel;
		this.type = type;
		this.btime = btime;
		this.etime = etime;
		this.ename = ename;
		this.amount = amount;
		this.completedCus = completedCus;
		this.money = money;
		this.completedSales = completedSales;
		this.an_status = an_status;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitel() {
		return titel;
	}
	public void setTitel(String titel) {
		this.titel = titel;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBtime() {
		return btime;
	}
	public void setBtime(String btime) {
		this.btime = btime;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
		this.etime = etime;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public Double getCompletedCus() {
		return completedCus;
	}
	public void setCompletedCus(Double completedCus) {
		this.completedCus = completedCus;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public Double getCompletedSales() {
		return completedSales;
	}
	public void setCompletedSales(Double completedSales) {
		this.completedSales = completedSales;
	}
	public Double getAn_status() {
		return an_status;
	}
	public void setAn_status(Double an_status) {
		this.an_status = an_status;
	}

	
	
}
