package com.guddu.emart.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.guddu.emart.dao.ProductDAO;
import com.guddu.emart.model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = "/products")
	public String products(Model model) {
		List<Product> list = productDAO.ListProducts();
		model.addAttribute("products", list);
		model.addAttribute("product", new Product());
		return "products";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product, HttpServletRequest request) {
		if (product.getProductId() == 0) {
			productDAO.addProduct(product);
			MultipartFile image=product.getImage();
			String rootDirectory=request.getSession().getServletContext().getRealPath("/");
			Path path=Paths.get(rootDirectory+"/resources/images/"+product.getProductId()+".png");
			System.out.println("Path:"+path);
			if(image!=null && !image.isEmpty())
			{
				try {
					image.transferTo(new File(path.toString()));
				} catch (Exception e) {
					e.printStackTrace();
				} 
			}
		} else {
			productDAO.updateProduct(product);
			MultipartFile image=product.getImage();
			String rootDirectory=request.getSession().getServletContext().getRealPath("/");
			Path path=Paths.get(rootDirectory+"/resources/images/"+product.getProductId()+".png");
			System.out.println("Path:"+path);
			if(image!=null && !image.isEmpty())
			{
				try {
					image.transferTo(new File(path.toString()));
				} catch (Exception e) {
					e.printStackTrace();
				} 
			}
		}
		return "redirect:/products";
	}

	@RequestMapping(value = "/removeproduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId) {
		Product p = productDAO.getProduct(productId);
		productDAO.deleteProduct(p);
		return "redirect:/products";
	}

	@RequestMapping(value = "/editproduct/{productId}")
	public String editProduct(@PathVariable("productId") int productId, Model model) {
		Product p = productDAO.getProduct(productId);
		model.addAttribute("product", p);
		model.addAttribute("products", productDAO.ListProducts());
		return "products";
	}
	
	@RequestMapping(value="/ProductDisplay")
	public String productDisplay(Model model) {
		List<Product> list = productDAO.ListProducts();
		model.addAttribute("products", list);
		model.addAttribute("product", new Product());
		return "ProductDisplay";
	}
	
	@RequestMapping(value="ProductDetail/{productId}")
	public String productDetail(@PathVariable("productId") int productId, Model model) {
		Product p = productDAO.getProduct(productId);
		model.addAttribute("product", p);
		model.addAttribute("products",productDAO.ListProducts());
		return "ProductDetail";
	}

}
