package com.nh.Neighborhoods_Helphub.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

	
	
	
	@GetMapping("/hii")
	public String demo() {
		return "hello";
	}
	
	

}
