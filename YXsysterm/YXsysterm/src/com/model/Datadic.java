package com.model;
// Generated 2018-7-27 19:52:01 by Hibernate Tools 3.5.0.Final

/**
 * 
 */
public class Datadic implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;//编号
	private String type;//类别
	private String case_;//条目
	private String value;//值
	private Double editwon;//是否可编辑：0是，1否
	

	public Double getEditwon() {
		return editwon;
	}

	public void setEditwon(Double editwon) {
		this.editwon = editwon;
	}

	public Datadic() {
	}

	public Datadic(String id) {
		this.id = id;
	}

	

	public Datadic(String id, String type, String case_, String value, Double editwon) {
		super();
		this.id = id;
		this.type = type;
		this.case_ = case_;
		this.value = value;
		this.editwon = editwon;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCase_() {
		return this.case_;
	}

	public void setCase_(String case_) {
		this.case_ = case_;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	
}
