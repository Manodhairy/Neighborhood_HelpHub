package com.nh.Neighborhoods_Helphub.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.SecurityGuard;
import com.nh.Neighborhoods_Helphub.Service.SecurityGuardService;

@RestController
public class SecurityGuardController {

	@Autowired
	SecurityGuardService securityGuardService;
	
	@GetMapping("/ViewTheSecurityGuard")
	public List<SecurityGuard> ViewTheSecurityGuard() {
		return securityGuardService.ViewTheSecurityGuard();
	}
}
