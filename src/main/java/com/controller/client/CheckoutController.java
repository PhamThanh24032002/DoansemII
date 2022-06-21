package com.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping(value = "/checkout")
public class CheckoutController {
	
    @RequestMapping("")
    public String checkout(Model model){
        return "/WEB-INF/views/client/pages/checkout";
    }
}
