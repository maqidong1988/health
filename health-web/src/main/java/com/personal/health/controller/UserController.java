package com.personal.health.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



/**
 * 用户控制层
 * @author maqidong
 *
 */
@Controller
@RequestMapping(value="/user")
public class UserController {

	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response){
		System.out.println("1111111111111");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(userName+password);
		return null;
	}
}
