package kr.co.kmarket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class MainController {
	@Autowired
	@GetMapping(value = {"/", "/index"})
	public String index() {
		return "/index";
	}
	

}
