package com.personal.health.service.impl;

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

}
