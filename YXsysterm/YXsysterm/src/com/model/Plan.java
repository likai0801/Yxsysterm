package com.model;
// Generated 2018-7-27 19:52:01 by Hibernate Tools 3.5.0.Final

/**
 * Plan generated by hbm2java
 */
public class Plan implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;		//编号
	private String chance_id;	//销售机会内部类
	private String pdate;	// 日期
	private String projects;//计划项
	private String result;  //执行效果
	private String pl_status; //状态 开发中、开发成功，开发失败、已归档
	public Plan(String id, String chance_id, String pdate, String projects, String result, String pl_status) {
		super();
		this.id = id;
		this.chance_id = chance_id;
		this.pdate = pdate;
		this.projects = projects;
		this.result = result;
		this.pl_status = pl_status;
	}
	public Plan() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getChance_id() {
		return chance_id;
	}
	public void setChance_id(String chance_id) {
		this.chance_id = chance_id;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getProjects() {
		return projects;
	}
	public void setProjects(String projects) {
		this.projects = projects;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getPl_status() {
		return pl_status;
	}
	public void setPl_status(String pl_status) {
		this.pl_status = pl_status;
	}

	
}
