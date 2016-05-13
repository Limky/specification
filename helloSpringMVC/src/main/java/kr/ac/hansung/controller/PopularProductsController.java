package kr.ac.hansung.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.dao.Products;
import kr.ac.hansung.service.PopularProductsService;

@Controller //단지 자동 클래스 빈 등록
public class PopularProductsController {
	
	private PopularProductsService popularProductsService;

	@Autowired //auto-wiring by type to OfferService //단지 생성시 DI 주입
	public void setOfferService(PopularProductsService popularProductsService) {
		this.popularProductsService = popularProductsService;
	}
	
	@RequestMapping("/PopularProducts")
	public String createOffer(Model model){	
		
/*		List<Offer> offers = offerService.getCurrent();
		model.addAttribute("offers", offers);
		*/
		List<Products> products = popularProductsService.getCurrent();
		
		System.out.println("실험"+products.get(0));

		model.addAttribute("PopularProducts", products);	
		model.addAttribute("PopularProductsTop1", products.get(0));
		model.addAttribute("PopularProductsTop2", products.get(1));

		
		
		return "PopularProducts";
		
	}
	
	
	

}
