package com.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping(value = "/Register")
public class RegisterController {
	@RequestMapping("")
    public String register(Model model) {
        return "/WEB-INF/views/client/pages/register";
    }
}
