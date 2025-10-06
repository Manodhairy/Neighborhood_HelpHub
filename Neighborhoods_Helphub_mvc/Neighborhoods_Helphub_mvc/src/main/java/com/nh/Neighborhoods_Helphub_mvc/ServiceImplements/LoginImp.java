package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Admin;

@Service
public class LoginImp {

	
	@Autowired
	RestTemplate rt;
	
	
	String baseUrl="http://localhost:8082/";
	
	
	public Admin AdminLogin(Admin a) {
		
		return rt.postForObject(baseUrl+ "adminlog",a, Admin.class);
		
	}

}
