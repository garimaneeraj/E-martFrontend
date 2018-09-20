package com.guddu.emart.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.guddu.emart.dao.ProductDAO;
import com.guddu.emart.dao.SupplierDAO;
import com.guddu.emart.dao.UserDAO;
import com.guddu.emart.model.Supplier;
import com.guddu.emart.model.User;

@Controller
public class UserController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private UserDAO userDAO;

	@RequestMapping(value = "/user")
	public String products(Model model) {
		List<User> list = userDAO.ListUsers();
		model.addAttribute("user", list);
		model.addAttribute("user", new User());
		return "user";
	}

	@RequestMapping(value = "/user/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("user") User user) {
		if (user.getUsername() == null) {
			userDAO.saveUser(user);
		} else {
			userDAO.updateUser(user);
		}
		return "redirect:/user";
	}

	@RequestMapping(value = "/removeuser/{username}")
	public String deleteUser(@PathVariable("username") String username) {
		User s = userDAO.getUser(username);
		userDAO.deleteUser(s);
		return "redirect:/user";
	}

	@RequestMapping(value = "/editUser/{username}")
	public String editUser(@PathVariable("username") String username, Model model) {
		User s = userDAO.getUser(username);
		model.addAttribute("user", s);
		model.addAttribute("Users", userDAO.ListUsers());
		return "user";
	}


	@RequestMapping("/login_success")
	public String loginSucess(Model m, HttpSession session) {
		String page = "";
		boolean loggedIn = false;
		SecurityContext securitycontext = SecurityContextHolder.getContext();
		Authentication authentication = securitycontext.getAuthentication();
		String username = authentication.getName();
		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>) authentication.getAuthorities();
		for (GrantedAuthority role : roles) {
			session.setAttribute("role", role.getAuthority());
			if (role.getAuthority().equals("ROLE_USER")) {
				loggedIn = true;
				page = "index";
				m.addAttribute("productList", productDAO.ListProducts());
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			} else {
				loggedIn = true;
				page = "admin";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			}
			System.out.println("login sucess");
			
		}
		return page;
	}
}