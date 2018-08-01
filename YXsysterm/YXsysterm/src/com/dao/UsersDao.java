package com.dao;

import com.model.Users;

public interface UsersDao {
	/**
	 * 根据用户名查找用户信息
	 * @param username 用户名
	 * @return
	 */
	public Users findByUsername(String username);
}
