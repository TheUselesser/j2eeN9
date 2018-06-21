package com.j2eeN9.DumaciaShop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.j2eeN9.DumaciaShop.services.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/show")
	public ModelAndView showCart() {
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "Shopping Cart");
		mv.addObject("mappingCart", true);
		mv.addObject("cartLines", cartService.getCartLines());
		
		return mv;
	}
	
}
