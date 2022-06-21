package com.controller.client;

import com.implement.CategoryImp;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/blog")
public class BlogController {
    @RequestMapping("")
    public String blog(Model model) {
        return "/WEB-INF/views/client/pages/blog";
    }
    @RequestMapping("/blog_detail")
    public String blog_detail(){
        return "/WEB-INF/views/client/pages/blog-details";
    }
}
