package com.j2eeN9.DumaciaShop.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.j2eeN9.backend.dao.CategoryDAO;
import com.j2eeN9.backend.dao.ProductDAO;
import com.j2eeN9.backend.dto.Category;
import com.j2eeN9.backend.dto.Product;

@Controller
public class PageController {

	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductDAO productDAO;
	
	// Home
	@RequestMapping(value = {"/", "/index", "/home"})
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("page");
		List<Product> products = productDAO.listActiveProducts();
		// should be a random int array[6]
		int[] a = {11, 22, 33, 44, 27, 36};
		//
		
		mv.addObject("title", "Home");
		
		mv.addObject("categories", categoryDAO.list());
		for (int i = 1; i <= 6; i++) {
			mv.addObject("product"+i, products.get(a[i-1]));
		}
		
		mv.addObject("mappingHome", true);
		return mv;
	}
	
	// About
	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		
		mv.addObject("mappingAbout", true);
		return mv;
	}
	
	// Contact
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("mappingContact", true);
		return mv;
	}
	
	// All products
	@RequestMapping(value = "/show/all/products")
	public ModelAndView products() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "All Products");
		
		mv.addObject("categories", categoryDAO.list());
		
		mv.addObject("mappingAllProducts", true);
		return mv;
	}
	
	// Show category
	@RequestMapping(value = "/show/category/{id}")
	public ModelAndView category(@PathVariable("id")int id) {
		ModelAndView mv = new ModelAndView("page");
		
		Category category = null;
		category = categoryDAO.get(id);
		
		mv.addObject("title", "Products");
		mv.addObject("subtitle", category.getName());
		
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("category", category);
		
		
		mv.addObject("mappingCategoryProducts", true);
		return mv;
	}
	
	// Product detail
	@RequestMapping(value = "/show/product/{id}")
	public ModelAndView product(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		
		Product product = productDAO.get(id);
		Category category = categoryDAO.get(product.getCategoryId());
		
		mv.addObject("categories", categoryDAO.list());
		
		mv.addObject("title", category.getName());
		mv.addObject("subtitle", product.getName());
		mv.addObject("product", product);
		mv.addObject("category", category);
		
		mv.addObject("mappingProductDetail", true);
		return mv;
	}
	
	// Signup - NOPE
	@RequestMapping(value = "/signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView("login");
		
		mv.addObject("title", "Sign Up");
		
		return null;
	}
	
	// Login
	@RequestMapping(value = "/login")
	public ModelAndView loginError(@RequestParam(name="error", required=false)String error) {
		ModelAndView mv = new ModelAndView("login");

		if(error!=null) {
			mv.addObject("errorMessage", "Invalid Username or Password!");
		}
		
		mv.addObject("title", "Login");
		
		return mv;
	}
	
	// Logout
	@RequestMapping(value= "/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		if(auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		
		return "redirect:/home";
	}
	
	// Access Denied - NOPE
	@RequestMapping(value = "/access-denied")
	public ModelAndView accessDenied() {
		
		
		return null;
	}
}
