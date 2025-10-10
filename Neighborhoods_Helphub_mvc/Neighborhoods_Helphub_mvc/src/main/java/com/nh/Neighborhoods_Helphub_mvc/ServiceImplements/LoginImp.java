package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Admin;
import com.nh.Neighborhoods_Helphub_mvc.Entity.users;

@Service
public class LoginImp {

	
	@Autowired
	RestTemplate rt;
	
	
	String baseUrl="http://localhost:8082/";
	
	
	public Admin AdminLogin(Admin a) {
		
		return rt.postForObject(baseUrl+ "adminlog",a, Admin.class);
		
	}


	public users userlogin(users u) {
		return rt.postForObject(baseUrl +"userlog", u, users.class);
		
	}

}
