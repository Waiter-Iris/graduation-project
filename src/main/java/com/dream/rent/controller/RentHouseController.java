package com.dream.rent.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dream.rent.pojo.FindHouse;
import com.dream.rent.pojo.RentHouse;
import com.dream.rent.service.BrokerService;
import com.dream.rent.service.FindHouseService;
import com.dream.rent.service.RentHouseService;

@Controller
public class RentHouseController {

	@Autowired
	RentHouseService renthouseService;
	
	@Autowired
	BrokerService brokerService;
	
	@RequestMapping("/selectInfo")
	public  String selectInfo(int user_id,HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
//		String houseType = rh.get
//		try {
//			fh.setFindhouseHousetype(new String(houseType.getBytes("iso-8859-1"),"utf-8"));
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		List<RentHouse> rentHouses=renthouseService.selectInfo(user_id);
		
		HttpSession session=request.getSession();
		session.setAttribute("rentHouses", rentHouses);
		
		
		System.out.println(rentHouses);
		//System.out.println(findHouses);
		return (rentHouses!=null)?"updateHouse2.jsp":"error.jsp";
		
	}
	
	@RequestMapping("/details")
	public String showDetails(int id,HttpServletRequest request){
		System.out.println("id="+id);
		RentHouse rh = renthouseService.selectByPrimaryKey(id);
		System.out.println(rh);
		request.setAttribute("renthouse", rh);
		return (rh!=null)?"details.jsp":"error.jsp";
		
	}
	
	
}
