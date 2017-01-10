package com.personal.health.service;

import java.util.List;
import java.util.Set;

import com.personal.health.entity.User;

/**
 * 用户service接口
 * @author maqidong
 *
 */
public interface UserService {
	public User login(User user);
	
	public User getByUserId(Integer userId);
	
	public List<User> getByUserName(String userName);
	
	public Set<String> getRoles(String userName);
	
	public Set<String> getPermissions(String userName);
}
