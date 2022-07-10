package com.controller.client;

import com.entity.Category;
import com.entity.Products;
import com.implement.CategoryImp;
import com.implement.ProductImp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping(value = {"","/home","index"})
public class HomeController {
	
    @RequestMapping(value = "")
    public String home(Model model){
    	ProductImp proImp = new ProductImp();
    	List<Products> products = proImp.getAll();
    	model.addAttribute("products", products);
        return "home";
    }
}
