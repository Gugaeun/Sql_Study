package com.megaitweb.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/starter")
	public String starter() {
		return "starter";
	}
}
