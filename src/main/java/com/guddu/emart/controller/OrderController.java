package com.guddu.emart.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.guddu.emart.dao.CartDAO;
import com.guddu.emart.dao.OrderDetailDAO;
import com.guddu.emart.model.CartItem;
import com.guddu.emart.model.OrderDetail;

@Controller
public class OrderController {

	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	
	
	/*@RequestMapping("/payment")
	public String paymentProcess(Model m,HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchaseAmount", this.calcTotalPurchaseAmount(cartItems));
		return "Payment";
	}*/
	
	@RequestMapping(value="/paymentProcess",method=RequestMethod.GET)
	public String paymentProcessing(@RequestParam("paymenttype")String paymode,Model m, HttpSession session,Principal p)
	{
		String username=p.getName();
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		int totalPurchaseAmount=this.calcTotalPurchaseAmount(cartItems);
		m.addAttribute("totalPurchaseAmount", totalPurchaseAmount);
		
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setPaymentMode(paymode);
		orderDetail.setUsername(username);
		orderDetail.setTotalPurchaseAmount(totalPurchaseAmount);
		orderDetail.setOrderDate(new java.util.Date());
		
		orderDetailDAO.insertOrderDetail(orderDetail);
		orderDetailDAO.updateOrderDetail(username);
		
		m.addAttribute("orderDetail",orderDetail);
		
		return "Receipt";
	}
	
	public int calcTotalPurchaseAmount(List<CartItem> cartItems)
	{
		int totalPurchaseAmount=0;
		for (CartItem item : cartItems) {

			totalPurchaseAmount = totalPurchaseAmount + item.getQuantity() * item.getPrice();

		}
		return totalPurchaseAmount;
	
}
}