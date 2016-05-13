package kr.ac.hansung.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.dao.Offer;

@Controller //단지 자동 클래스 빈 등록
public class RegisterController {
	

	
	@RequestMapping("/register")
	public String createOffer(){	
		

		return "register";
		
	}
	
	
	

}
