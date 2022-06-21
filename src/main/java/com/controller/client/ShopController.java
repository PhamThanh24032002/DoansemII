package com.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Category;
import com.implement.CategoryImp;
import com.implement.ProductImp;

@Controller
@RequestMapping(value = "/shop")
public class ShopController {
	@RequestMapping("")
    public String shop(Model model) {
		CategoryImp cateImp = new CategoryImp();
		ProductImp productImp = new ProductImp();
		productImp.getAll();
		List<Category> categories = cateImp.getAll();
		model.addAttribute("categories", categories);
		model.addAttribute("products", productImp.getAll());
        return "/WEB-INF/views/client/pages/shop";
    }
}
