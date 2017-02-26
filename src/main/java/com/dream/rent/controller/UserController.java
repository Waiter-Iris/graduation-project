package com.dream.rent.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.dream.rent.pojo.User;
import com.dream.rent.service.UserService;


@Controller
public class UserController {
	@Autowired
	public UserService userService;
	
	public static  Logger logger =Logger.getLogger(UserController.class);
	
	@RequestMapping("/findByName")
	public String findByName(User user){
		User u = userService.findByName(user);
		System.out.println("u="+u);
		logger.info(JSON.toJSONString(user));
		return (u!=null)?"success.jsp":"error.jsp";
		
	}
	
	@RequestMapping("/userAdd")
	public String userAdd(User user){
		int line=userService.insertSelective(user);
		logger.info(JSON.toJSONString(user));
		return line!=0?"index.jsp":"error.jsp";
	}
	
	@RequestMapping("/updateByUserId")
	public String updateByUserId(User user){
		
		int line=userService.updateByUserId(user);
		logger.info(JSON.toJSONString(user));
		return line!=0?"index.jsp":"error.jsp";
		
	} 

}

