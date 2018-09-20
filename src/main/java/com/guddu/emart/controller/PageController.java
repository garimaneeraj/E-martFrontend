package com.guddu.emart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.guddu.emart.dao.CartDAO;
import com.guddu.emart.dao.ProductDAO;
import com.guddu.emart.model.CartItem;
import com.guddu.emart.model.Product;

@Controller
public class PageController {

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping(value = {"/","/index"})
	public String indexPage(Model model) {
		
		List<Product> list = productDAO.ListProducts();
		model.addAttribute("products", list);
		model.addAttribute("product", new Product());
		return "index";

	}

	
	@RequestMapping(value="/TotalProductDisplay")
	public String showTotalproductdisplay() {
		return "TotalProductDisplay";
	}
	
	@RequestMapping(value="/Cart")
	public String showCart()
	{
		return "Cart";
	}
	
	@RequestMapping(value="/contact-us")
	public String showContacts(){
		return "contact-us";
	}
	
	public int calcTotalPurchaseAmount(List<CartItem> cartItems) {
		int totalPurchaseAmount = 0;
		// int count=0;
		for (CartItem item : cartItems) {

			totalPurchaseAmount = totalPurchaseAmount + item.getQuantity() * item.getPrice();

		}
		return totalPurchaseAmount;

	}
	
	

}
