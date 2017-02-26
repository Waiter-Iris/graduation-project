package com.dream.rent.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dream.rent.pojo.FindHouse;
import com.dream.rent.service.FindHouseService;

@Controller
public class FindHouseController {
	//findByGegion
	@Autowired
	FindHouseService findhouseService;
	
	@RequestMapping("/findByGegion")
	public @ResponseBody List<FindHouse> findByGegion(FindHouse fh){
		
		String region = fh.getFindhouseRegion();
		try {
			fh.setFindhouseRegion(new String(region.getBytes("iso-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<FindHouse> findHouses=findhouseService.selectByGegion(fh);
	//	System.out.println(findHouses);
		return findHouses;
		
	}
	
	@RequestMapping("/findByType")
	public @ResponseBody List<FindHouse> findByType(FindHouse fh){
		
		String houseType = fh.getFindhouseHousetype();
		try {
			fh.setFindhouseHousetype(new String(houseType.getBytes("iso-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<FindHouse> findHouses=findhouseService.selectByHouseType(fh);
		//System.out.println(findHouses);
		return findHouses;
		
	}
	
	@RequestMapping("/findByArea")
	public @ResponseBody List<FindHouse> findByArea(double findhouseArea){
		
		//Double houseType = fh.getFindhouseArea();
		System.out.println(findhouseArea);
		List<FindHouse> findHouses=findhouseService.selectByHouseArea(findhouseArea);
		//System.out.println(findHouses);
		return findHouses;
		
	}

	
	
}
