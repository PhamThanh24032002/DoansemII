package com.controller.client;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/contact")
public class ContactController {

    @RequestMapping("")
    public String contact(Model model){
    	 return "/WEB-INF/views/client/pages/contact";
    }
}
