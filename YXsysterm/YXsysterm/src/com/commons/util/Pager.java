package com.commons.util;

/**
 * 分页实体类
 * 
 * @author dougang
 * 
 */
public class Pager {
	private long rowCount;// 总记录数
	private int rowPerPage=10;// 每页记录数
	private int currentPage=1;// 当前页码
	private int pageCount;// 总页数
	public Pager() {

	}

	public Pager(long rowCount, int rowPerPage, int currentPage) {
		this.rowCount = rowCount;
		this.rowPerPage = rowPerPage;
		this.currentPage = currentPage;
		this.pageCount = (int) Math.ceil((double) rowCount / rowPerPage);
	}

	public long getRowCount() {
		return rowCount;
	}

	public void setRowCount(long rowCount) {
		this.rowCount = rowCount;
	}

	public int getRowPerPage() {
		
		return rowPerPage;
	}

	public void setRowPerPage(int rowPerPage) {
		this.rowPerPage = rowPerPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		
		this.pageCount = (int) Math.ceil((double) this.rowCount / this.rowPerPage);
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getFirstRow() {
		return (this.currentPage - 1) * this.rowPerPage;
	}

}
