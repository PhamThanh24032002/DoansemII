package com.controller.client;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/productdetail")
public class ProductDetailController {

    @RequestMapping("")
    public String ProductDetail(Model model){
    	 return "/WEB-INF/views/client/pages/productDetail";
    }
}
