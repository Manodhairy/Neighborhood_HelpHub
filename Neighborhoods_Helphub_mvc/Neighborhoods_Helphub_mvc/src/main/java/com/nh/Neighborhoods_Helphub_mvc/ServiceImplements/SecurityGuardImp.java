package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.SecurityGuard;
import com.nh.Neighborhoods_Helphub_mvc.Entity.SecurityGuardHistory;

@Service
public class SecurityGuardImp {

	@Autowired
	RestTemplate  restTemplate;
	
	String baseUrl="http://localhost:8082/";
	
	public SecurityGuard AddSecurityGuard(SecurityGuard securityGuard) {
		return restTemplate.postForObject(baseUrl + "AddSecurityGuard" , securityGuard, SecurityGuard.class);
		
	}

	public void DeleteGuard(int id) {

		restTemplate.delete(baseUrl + "DeleteGuard/" + id);
	}

	public void UpdateGuard(SecurityGuard securityGuard) {
		 restTemplate.put(baseUrl + "UpdateGuard", securityGuard);
		
	}

	public SecurityGuardHistory[] ViewTheSecurityGuardHistory() {
		return restTemplate.getForObject(baseUrl + "ViewTheSecurityGuardHistory", SecurityGuardHistory[].class);
		
	}
}
