package com.j2eeN9.DumaciaShop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.j2eeN9.DumaciaShop.services.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/show")
	public ModelAndView showCart(@RequestParam(name = "result", required=false)String result) {
		ModelAndView mv = new ModelAndView("page");
		
		if (result != null) {
			switch(result) {
			case "error":
				mv.addObject("message", "Something went wrong!");
				break;
			case "updated":
				mv.addObject("message", "Your shopping cart has been updated!");
				break;
			case "deleted":
				mv.addObject("message", "Cart line has been deleted!");
				break;
			case "added":
				mv.addObject("message", "Product has been added to cart!");
				break;
				
			}
		}
		
		mv.addObject("title", "Shopping Cart");
		mv.addObject("mappingCart", true);
		mv.addObject("cartLines", cartService.getCartLines());
		
		return mv;
	}
	
	@RequestMapping("/{cartLineId}/update")
	public String udpateCartLine(@PathVariable int cartLineId, @RequestParam int count) {
		String response = cartService.updateCartLine(cartLineId, count);		
		return "redirect:/cart/show?" + response;		
	}
	
	@RequestMapping("/{cartLineId}/delete")
	public String deleteCartLine(@PathVariable int cartLineId) {
		String response = cartService.deleteCartLine(cartLineId);
		return "redirect:/cart/show?" + response;
	}
	
	@RequestMapping("/add/{productId}/product")
	public String addCart(@PathVariable int productId) {
		String response = cartService.addCartLine(productId);		
		return "redirect:/cart/show?" + response;
	}
}
