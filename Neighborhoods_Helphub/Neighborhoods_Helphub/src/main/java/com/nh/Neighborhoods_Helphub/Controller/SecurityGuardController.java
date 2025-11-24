package com.nh.Neighborhoods_Helphub.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.SecurityGuard;
import com.nh.Neighborhoods_Helphub.Entity.SecurityGuardHistory;
import com.nh.Neighborhoods_Helphub.Service.SecurityGuardService;

@RestController
public class SecurityGuardController {

	@Autowired
	SecurityGuardService securityGuardService;
	
	@GetMapping("/ViewTheSecurityGuard")
	public List<SecurityGuard> ViewTheSecurityGuard() {
		return securityGuardService.ViewTheSecurityGuard();
	}
	@PostMapping("/AddSecurityGuard")
	public SecurityGuard AddSecurityGuard(@RequestBody SecurityGuard securityGuard) {
 
		return securityGuardService.AddSecurityGuard(securityGuard);
		
	}
	
	@DeleteMapping("/DeleteGuard/{id}")
	public void DeleteGuard(@PathVariable ("id") int id) {
		securityGuardService.DeleteGuard(id);
		
	}
	
	@PutMapping("/UpdateGuard")
	public SecurityGuard UpdateGuard(@RequestBody SecurityGuard securityGuard) {
		return securityGuardService.UpdateGuard(securityGuard);
	}
	
	@GetMapping("/ViewTheSecurityGuardHistory")
	public List<SecurityGuardHistory> ViewTheSecurityGuardHistory() {
			return securityGuardService.ViewTheSecurityGuardHistory();
	}
	
}
