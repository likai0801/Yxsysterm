package com.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * 通用Action
 * 
 * @author dougang
 * 
 */
public class GenericController   {
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected HttpSession session;
	protected ServletContext application;

	@ModelAttribute
	/* 每次执行请求首先执行以下方法 */
	public void setServletApi(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
		this.session = request.getSession();
		this.application = request.getServletContext();
	}


}
