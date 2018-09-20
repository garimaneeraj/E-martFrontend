package com.guddu.emart.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.guddu.emart.dao.SupplierDAO;
import com.guddu.emart.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping(value = "/suppliers")
	public String products(Model model) {
		List<Supplier> list = supplierDAO.ListSuppliers();
		model.addAttribute("suppliers", list);
		model.addAttribute("supplier", new Supplier());
		return "suppliers";
	}

	@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("supplier") Supplier supplier) {
		if (supplier.getSupplierId() == 0) {
			supplierDAO.addSupplier(supplier);
		} else {
			supplierDAO.updateSupplier(supplier);
		}
		return "redirect:/suppliers";
	}

	@RequestMapping(value = "/removesupplier/{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") int supplierId) {
		Supplier s = supplierDAO.getSupplier(supplierId);
		supplierDAO.deleteSupplier(s);
		return "redirect:/suppliers";
	}

	@RequestMapping(value = "/editsupplier/{Supplierid}")
	public String editSupplier(@PathVariable("Supplierid") int Supplierid, Model model) {
		Supplier s = supplierDAO.getSupplier(Supplierid);
		model.addAttribute("supplier", s);
		model.addAttribute("Suppliers", supplierDAO.ListSuppliers());
		return "suppliers";
	}

}
