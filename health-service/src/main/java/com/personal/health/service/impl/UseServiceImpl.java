package com.personal.health.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.personal.health.dao.UserDao;
import com.personal.health.entity.User;
import com.personal.health.service.UserService;

@Service("UserService")
public class UseServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	public User login(User user) {
		return userDao.login(user);
	}
	
	public List<User> getByUserName(String userName) {
		return userDao.getByUserName(userName);
	}
	
	public Set<String> getRoles(String userName) {
		return userDao.getRoles(userName);
	}
	
	public Set<String> getPermissions(String userName) {
		return userDao.getPermissions(userName);
	}

	public User getByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return userDao.getByUserId(userId);
	}

}
