package kr.ac.hansung.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.Offer;
import kr.ac.hansung.dao.OfferDAO;

@Service("doLoginService")
public class DoLoginService {

	private OfferDAO offerDAO;
	
	@Autowired
	public void setOfferDAO(OfferDAO offerDAO) {
		this.offerDAO = offerDAO;
	}
	
	public Offer checkPassword(String email){
		
		return offerDAO.getOffer(email);
		 		
	}

	
}
