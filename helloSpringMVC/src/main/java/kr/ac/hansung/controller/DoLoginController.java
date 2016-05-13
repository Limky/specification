package kr.ac.hansung.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.dao.Offer;
import kr.ac.hansung.service.DoLoginService;
import kr.ac.hansung.service.OfferService;


@Controller 
public class DoLoginController {

	private DoLoginService doLoginService;

	@Autowired //auto-wiring by type to OfferService //단지 생성시 DI 주입
	public void setOfferService(DoLoginService doLoginService) {
		this.doLoginService = doLoginService;
	}
	
	//@RequestMapping(method=RequestMethod.GET)
	@RequestMapping("/doLogin")
	public String showDoLogin(HttpServletRequest request, HttpServletResponse response,Model model){	

		String resulturl="";
		
		String temail = request.getParameter("email");
		String tpassword = request.getParameter("password");
		
		System.out.println(temail);
		System.out.println(tpassword);
		
		Offer offer = doLoginService.checkPassword(temail);
		
		
		
		System.out.println(offer);
		
		if(tpassword.equals( offer.getPassword())){
			System.out.println("성공입니다.");
			model.addAttribute("Memberdata", offer.getCompany());
			resulturl="doLogin";
			
		}else{
			
			
			System.out.println("실패입니다.");
			resulturl="MostReviews";
		}
		
		
		return resulturl;
		
	}
	
}
