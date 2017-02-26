package com.dream.rent.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dream.rent.pojo.FindHouse;
import com.dream.rent.pojo.RentHouse;
import com.dream.rent.pojo.User;
import com.dream.rent.service.AdminService;

@Controller
public class AdminController {
	@Autowired 
	AdminService adminService;
	
	@RequestMapping("/findAllUser")
	public @ResponseBody List<User> findAllUser(){
		
		List<User> users=adminService.findAllUser();
		return users;
		
	}
	
	
	@RequestMapping("/findAllRentHouse")
	public @ResponseBody List<RentHouse> findAllRentHouse(RentHouse rentHouse){
		
		List<RentHouse> rhs=adminService.findAllRentHouse(rentHouse);
		return rhs;
		
	}
	
	@RequestMapping("/findAllFindHouse")
	public @ResponseBody List<FindHouse> findAllFindHouse(FindHouse findHouse){
		
		List<FindHouse> fhs=adminService.findAllFindHouse(findHouse);
		return fhs;
		
	}

}
