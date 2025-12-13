package com.nh.Neighborhoods_Helphub.Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.Admin;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Service.LoginService;
import org.springframework.web.bind.annotation.PutMapping;


@RestController
public class LoginController {

	
	@Autowired
	LoginService loginService;
	
	@PostMapping("/adminlog")
	public Admin AdminLogin(@RequestBody Admin a) {
		
		return loginService.AdminLogin(a);
	}
	
	
	@PostMapping("/userlog")
	public users userlog(@RequestBody users u) {
		return loginService.Userlogin(u);
	}
	
	@GetMapping("/sendOtp/{email}")
	public int sendOtp(@PathVariable String email) {
		Optional<users> data= loginService.sendOtp(email);
		
		if(data.isPresent()) {
			return 1;
		}else {
		    return 0;
		}
	}
	
	@PutMapping("/UpdatePasswordLogin/{email}")
	public void UpdatePassword(@PathVariable String email,@RequestBody users password) {
		 loginService.UpdatePassword(email,password);
		

	}
}
