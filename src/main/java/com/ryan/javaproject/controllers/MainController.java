package com.ryan.javaproject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ryan.javaproject.models.Brand;
import com.ryan.javaproject.models.GiftCertificate;
import com.ryan.javaproject.services.BrandService;
import com.ryan.javaproject.services.GiftCertificateService;

@Controller
public class MainController {

	
//	requires (@Valid, and HttpSession session)
//	if(session.getAttribute("userid")==null) {
//		return "redirect:/login";
//	}
	
	
	
	
	@Autowired
	private BrandService brandService;
	@Autowired
	private GiftCertificateService giftCertificateService;
	
	
	@RequestMapping("/create-brand")
	public String createBrand(@ModelAttribute("brand") Brand brand, Model model){
		model.addAttribute("brands", brandService.allBrands());
		return "createBrand.jsp";
	}
	
	
	@PostMapping("/create-brand")
	public String submitBrand(@Valid @ModelAttribute("brand") Brand brand, BindingResult result, HttpSession session) {
    	if(result.hasErrors()) {
//			model.addAttribute("error", "Try again with all fields submitted");
			return "createBrand.jsp";
//    		return "redirect:/create-task";
		}
//    	Long user_id = (Long)session.getAttribute("userid");
//    	User currentUser=userService.findUserById(user_id);
//    	task.setCreator(currentUser);
//    	model.addAttribute("session",currentUser);
//    	model.addAttribute("brands", brandService.allBrands());
		brandService.save(brand);

		return "redirect:/create-brand";
	}
	
//    @GetMapping("/all-brands")
//    public String allBrands(Model model) {
//    	return "allBrands.jsp";
//    }
	
	
	@RequestMapping("/")
	public String home(){		
		return "home.jsp";
	}
	@RequestMapping("/create-giftCertificate")
	public String createGiftCertificate(@ModelAttribute("giftCertificate")GiftCertificate giftCertificate, Model model){	
		model.addAttribute("giftCertificates", giftCertificateService.allGiftCertificates());
		return "createGiftCertificate.jsp";
	}
	
	@PostMapping("/create-giftCertificate")
	public String submitGiftCertificate(@Valid @ModelAttribute("giftCertificate") GiftCertificate giftCertificate, BindingResult result) {
    	if(result.hasErrors()) {
    		return "createGiftCertificate.jsp";}
    	giftCertificateService.save(giftCertificate);
    	return "redirect:/create-giftCertificate";
    	}
	
	@RequestMapping("/giftCertificateBalance")
	public String giftCertificateBalance(@ModelAttribute("giftCertificate")GiftCertificate giftCertificate, Model model) {
		model.addAttribute("giftCertificates", giftCertificateService.allGiftCertificates());
		return "giftCertificateBalance.jsp";
	}
	
	

	
	
}
