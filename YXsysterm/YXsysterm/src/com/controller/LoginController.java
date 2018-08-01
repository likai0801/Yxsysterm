package com.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.commons.util.StringUtil;
import com.commons.util.md5.Md5Util;
import com.dao.UsersDao;
import com.model.Users;
@Controller
@Scope(value="prototype")
public class LoginController extends GenericController {
	@Resource(name="usersDao")
	private UsersDao usersDao;
	
	public UsersDao getUsersDao() {
		return usersDao;
	}

	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}

	@RequestMapping(name="/loginController.do")
	public ModelAndView login(Users user) {
		String username=user.getUsername();
		String password=user.getPassword();
		if(!StringUtil.nil(username)) {
			Users currentUser=this.usersDao.findByUsername(username);
			if(Md5Util.getMd5(password).equals(currentUser.getPassword())) {
				return new ModelAndView("html/index");
			}else {
				return new ModelAndView("login");
			}
		}else {
			return new ModelAndView("login");
		}
	}
}
