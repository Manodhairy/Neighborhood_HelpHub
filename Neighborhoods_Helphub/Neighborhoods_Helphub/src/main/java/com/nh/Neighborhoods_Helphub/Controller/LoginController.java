package com.nh.Neighborhoods_Helphub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.Admin;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Service.LoginService;

@RestController
public class LoginController {

	
	@Autowired
	LoginService ls;
	
	@PostMapping("/adminlog")
	public Admin AdminLogin(@RequestBody Admin a) {
		
		return ls.AdminLogin(a);
	}
	
	
	@PostMapping("/userlog")
	public users userlog(@RequestBody users u) {
		return ls.Userlogin(u);
	}
}
