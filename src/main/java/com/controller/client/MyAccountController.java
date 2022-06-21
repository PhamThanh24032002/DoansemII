package com.controller.client;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("myaccount")
public class MyAccountController {
    @RequestMapping("")
    public String myaccount(Model model){
       
    	 return "/WEB-INF/views/client/pages/myaccount";
    }
}
