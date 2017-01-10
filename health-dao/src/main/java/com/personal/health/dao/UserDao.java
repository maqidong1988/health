package com.personal.health.dao;

import java.util.List;
import java.util.Set;

import com.personal.health.entity.User;

public interface UserDao {

	public User login(User user);
	
	public User getByUserId(Integer userId);
	
	/**
	 * 通过用户名查询用户
	 * @param userName
	 * @return
	 */
	public List<User> getByUserName(String userName);
	
	/**
	 * 通过用户名查询角色信息
	 * @param userName
	 * @return
	 */
	public Set<String> getRoles(String userName);
	
	/**
	 * 通过用户名查询权限信息
	 * @param userName
	 * @return
	 */
	public Set<String> getPermissions(String userName);
	
	public User save(User user);
}
