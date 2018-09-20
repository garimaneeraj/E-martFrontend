package com.guddu.emart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.guddu.emart.dao.CategoryDAO;
import com.guddu.emart.model.Category;

@Controller
public class CategoryController {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value="/categories")
	public String category(Model model)
	{
		List<Category> list = categoryDAO.ListCategories();
		model.addAttribute("categories", list);
		model.addAttribute("category",new Category());
		return "categories";
	}
	
	@RequestMapping(value="/category/add", method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("category") Category category)
	{
		if (category.getCategoryId()==0) {
			categoryDAO.addCategory(category);
		}
		else
		{
			categoryDAO.updateCategory(category);	}
		return "redirect:/categories";
	}
	
	@RequestMapping(value="/removescategory/{categoryId}")
	public String deleteProduct(@PathVariable("categoryId") int categoryId)
	{
		Category c = categoryDAO.getCategory(categoryId);
		categoryDAO.deleteCategory(c);
		return "redirect:/categories";
	}
	@RequestMapping(value="/editscategory/{categoryId}")
	public String editProduct(@PathVariable("categoryId") int categoryId,Model model)
	{
		Category c = categoryDAO.getCategory(categoryId);
		model.addAttribute("category", c);
		model.addAttribute("categories",categoryDAO.ListCategories());
		return "categories";
	}
	
}
