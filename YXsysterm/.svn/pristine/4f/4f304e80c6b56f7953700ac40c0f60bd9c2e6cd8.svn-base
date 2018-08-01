package com.commons.taglib;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * 导航标签实体类
 * @author Administrator
 *
 */
public class Navigate extends SimpleTagSupport {
	private long rowCount;// 总记录数
	private int rowPerPage;// 每页记录数
	private int currentPage=1;// 当前页码
	private String url;//地址
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public void doTag() throws JspException{
		JspContext context=this.getJspContext();
		JspWriter out=context.getOut();
		int pageCount=(int) Math.ceil((double) this.rowCount / this.rowPerPage);
		if (this.currentPage > pageCount) {
			this.currentPage = pageCount;
		}
		if (this.currentPage < 1) {
			this.currentPage = 1;
		}

		StringBuffer suf = new StringBuffer();
		suf.append("<style type='text/css'>");
		suf.append(
				".pager{white-space:nowrap;width:100%;height:100%;margin:5px;font-family: '宋体', 'Arial', 'Helvetica', 'sans-serif';font-size: 14px;text-align:center;color:blue;}");
		suf.append(".pager a{color:blue;text-decoration:none;}");
		suf.append("</style>");

		suf.append("<div class='pager'>");
		suf.append("<form name='pageForm' id='pageForm' action='' method='post'>\r\n")
				.append("<input type='hidden' id='pageNo' name='pageNo' value='" + this.currentPage + "' />\r\n")
				.append("<input type='hidden' id='rowPer' name='rowPer'  />\r\n");
		suf.append("</form>\r\n");
		suf.append("<input type='button' value='新增图书' onclick=\"location.href='BookServlet.do?action=goAdd'\" class='add'/>&nbsp;&nbsp;");

		suf.append("共" + this.rowCount + "条记录");
		suf.append("&nbsp;每页<input type='text' size='2' name='per' id='per' value='" + this.rowPerPage + "'/>条");
		suf.append("&nbsp;&nbsp;当前第" + this.currentPage + "页/\r\n").append("共" + pageCount + "页&nbsp;&nbsp;");
		if (this.currentPage == 1) {
			suf.append("首页");
			suf.append("&nbsp;");
			suf.append("上一页\r\n");
		} else {
			suf.append("<a href='javascript:void(0);' onclick='turnOverPage(1,parseInt(document.getElementById(\"per\").value))'>首页</a>\r\n");
			suf.append("&nbsp;");
			suf.append("<a href='javascript:void(0);' onclick='turnOverPage(").append(this.currentPage - 1)
					.append(",parseInt(document.getElementById(\"per\").value))'>上一页</a>\r\n");
		}
		suf.append("&nbsp;");
		if (this.currentPage == pageCount) {
			suf.append("下一页");
			suf.append("&nbsp;");
			suf.append("尾页\r\n");
		} else {
			suf.append("<a href='javascript:void(0);' onclick='turnOverPage(").append(this.currentPage + 1)
					.append(",parseInt(document.getElementById(\"per\").value))'>下一页</a>\r\n");
			suf.append("&nbsp;");
			suf.append("<a href='javascript:void(0);' onclick='turnOverPage(").append(pageCount)
					.append(",parseInt(document.getElementById(\"per\").value))'>尾页</a>\r\n");
		}
		suf.append("&nbsp;转到第<input type='text' size='2' id='jump' />页&nbsp;").append(
				"<input type='button' value='GO' onclick='turnOverPage(parseInt(document.getElementById(\"jump\").value),parseInt(document.getElementById(\"per\").value))' />");
		suf.append("\r\n");
		suf.append("</div>");

		suf.append("<script type='text/javascript'>\r\n");
		suf.append("  //翻页函数\t\n");
		suf.append("  function turnOverPage(no,nu){\r\n");
		suf.append("    if(isNaN(no)||isNaN(nu)){ alert('页码为空或输入错误！'); return; }");
		suf.append("    //页号越界处理\r\n");
		suf.append("    if(no").append(">").append(pageCount).append(") {\r\n");
		suf.append("        no=").append(pageCount).append(";\r\n");
		suf.append("    }\r\n");
		suf.append("    if(no").append("< 1){\r\n");
		suf.append("        no=1;\r\n");
		suf.append("    }\r\n");
		suf.append("    document.getElementById('pageNo').value=no;\r\n");
		suf.append("    document.getElementById('rowPer').value=nu;\r\n");
		suf.append("    var form = document.getElementById('pageForm');\r\n");
		//suf.append("    alert(document.getElementById('rowPer').value);");
		suf.append("    form.action='").append(this.url).append("';\r\n");
		suf.append("    form.submit();\r\n");
		suf.append("  }\r\n");
		suf.append("</script>\r\n");
		try {
			out.print(suf.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	public Navigate() {

	}

	public Navigate(long rowCount, int rowPerPage, int currentPage) {
		this.rowCount = rowCount;
		this.rowPerPage = rowPerPage;
		this.currentPage = currentPage;
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


	public int getFirstRow() {
		return (this.currentPage - 1) * this.rowPerPage;
	}


}
