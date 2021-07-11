package com.megaitweb.board.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
//@RequestMapping("/article")
public class ArticleController {
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		return "article/normal/list";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "article/normal/write";
	}
}
