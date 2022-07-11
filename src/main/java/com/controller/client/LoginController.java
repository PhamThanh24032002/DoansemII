package com.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping(value = "/Login")
public class LoginController {
	@RequestMapping("")
    public String login(Model model) {
        return "/WEB-INF/views/client/pages/login";
    }
}
