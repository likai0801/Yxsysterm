package com.model;
// Generated 2018-7-27 19:52:01 by Hibernate Tools 3.5.0.Final

/**
 * 
 */
public class Orderdetails implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;//编号
	private Orders orders;//订单编号
	private String goods;//商品
	private Integer count;//数量
	private String unit;//单位
	private Double price;//单价
	private Double money;//金额

	public Orderdetails() {
	}

	public Orderdetails(String id) {
		this.id = id;
	}

	public Orderdetails(String id, Orders orders, String goods, Integer count, String unit, Double price,
			Double money) {
		super();
		this.id = id;
		this.orders = orders;
		this.goods = goods;
		this.count = count;
		this.unit = unit;
		this.price = price;
		this.money = money;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public String getGoods() {
		return goods;
	}

	public void setGoods(String goods) {
		this.goods = goods;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
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

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
