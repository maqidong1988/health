package com.personal.health.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.personal.health.entity.User;
import com.personal.health.service.UserService;

/**
 * 用户控制层
 * @author maqidong
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String login(User user, HttpServletRequest request){
		User userLogin = userService.login(user);
		if (userLogin == null) {
			request.setAttribute("user", user);
			request.setAttribute("errorMsg", "用户名或者密码错误");
			return "/index";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", userLogin);
			return "/success";
		}
	}

}
