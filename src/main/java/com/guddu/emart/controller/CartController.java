package com.guddu.emart.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.guddu.emart.dao.CartDAO;
import com.guddu.emart.dao.ProductDAO;
import com.guddu.emart.model.CartItem;
import com.guddu.emart.model.Product;



@Controller
public class CartController {

	@Autowired
	ProductDAO productDAO;

	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping("/viewCart")
	public String showCartPage(Model m, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		List<CartItem> cartItems = cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchaseAmount", this.calcTotalPurchaseAmount(cartItems));
	
		return "viewCart";
	}
	
	@RequestMapping(value = "/AddToCart/{productId}",method=RequestMethod.GET)
	public String addCartItem(@RequestParam("quantity") int quantity, @PathVariable("productId") int productId,
			HttpSession session, Model m, Principal p) {
		Product product = productDAO.getProduct(productId);
		String username = p.getName();

		CartItem cartItem = new CartItem();
		cartItem.setProductId(product.getProductId());
		cartItem.setProductName(product.getProductName());
		cartItem.setQuantity(quantity);
		cartItem.setPrice(product.getPrice());
		cartItem.setUsername(username);
		cartItem.setStatus("NA");

		cartDAO.addCartItem(cartItem);
		List<CartItem> cartItems = cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchaseAmount", this.calcTotalPurchaseAmount(cartItems));
		return "viewCart";
	}
	
	@RequestMapping("/editCart/{cartItemId}")
	public String editCartItem(@PathVariable("cartItemId") int cartItemId, Model m) {
		CartItem cartItems = cartDAO.getCartItem(cartItemId);
		m.addAttribute("cartItem", cartItems);
		
		return "editCart";
	}

	@RequestMapping(value = "/updateCartItem", method=RequestMethod.POST)
	public String updateCartItem(@ModelAttribute("cartItem") CartItem cartItem,
			HttpSession session, Model m, Principal p) {
		CartItem c = new CartItem();
		String username = p.getName();
		c.setQuantity(cartItem.getQuantity());
		c.setUsername(username);
		c.setCartItemId(cartItem.getCartItemId());
		c.setPrice(cartItem.getPrice());
		c.setProductId(cartItem.getProductId());
		cartDAO.updateCartItem(c);
		List<CartItem> cartItems = cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchaseAmount", this.calcTotalPurchaseAmount(cartItems));
		return "viewCart";

	}

	
	 /** @RequestMapping(value = "/deleteCartItem/{cartItemId}") public String
	 * deleteCartItem(@PathVariable("cartItem") int cartItemId, HttpSession session,
	 * Model m) { CartItem cartItem = cartDAO.getCartItem(cartItemId); String
	 * username = (String) session.getAttribute("username");
	 * cartDAO.deleteCartItem(cartItem); List<CartItem> cartItems =
	 * cartDAO.showCartItems(username); m.addAttribute("cartItems", cartItems);
	 * m.addAttribute("totalPurchaseAmount",
	 * this.calcTotalPurchaseAmount(cartItems));
	 * 
	 * return "Cart";*/
	 

	@RequestMapping(value = "/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId") int cartItemId,Model m) {
		CartItem c = cartDAO.getCartItem(cartItemId);
		cartDAO.deleteCartItem(c);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		List<CartItem> cartItems = cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchaseAmount", this.calcTotalPurchaseAmount(cartItems));
		return "redirect:/viewCart";
	}

	@RequestMapping(value = "/continueShopping")
	public String continueShopping(Model m) {
		m.addAttribute("productList", productDAO.ListProducts());
		return "redirect:/ProductDisplay/";
	}

	public int calcTotalPurchaseAmount(List<CartItem> cartItems) {
		int totalPurchaseAmount = 0;
		// int count=0;
		for (CartItem item : cartItems) {

			totalPurchaseAmount = totalPurchaseAmount + item.getQuantity() * item.getPrice();

		}
		return totalPurchaseAmount;

	}
	
	@RequestMapping("/checkout")
	public String showOrderPage(Model m, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		List<CartItem> cartItems = cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchaseAmount", this.calcTotalPurchaseAmount(cartItems));
	
		return "addressPage";
	}
	
	@RequestMapping("/Payment")
	public String checkoutProcess(Model m, HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchaseAmount", this.calcTotalPurchaseAmount(cartItems));
		return "Payment";
	}
}