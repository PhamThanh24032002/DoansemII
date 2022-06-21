package com.controller.client;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/wishlist")
public class WishlistController {

    @RequestMapping("")
    public String wishlist(Model model){
    	 return "/WEB-INF/views/client/pages/wishlist";
    }
}
