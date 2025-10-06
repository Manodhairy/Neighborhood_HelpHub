package com.nh.Neighborhoods_Helphub_mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	
	@GetMapping("/")
	private String demo() {
        return "Login/LoginForm";
	}
	
	@GetMapping("/adminHome")
	public String AdminHome() {
		return "redirect:/ViewAllData";
	}
	
	@GetMapping("/addNewMember")
	private String addNewMember() {
		return "Admin/AddUser";

	}
}
