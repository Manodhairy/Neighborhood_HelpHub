package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Admin;
import com.nh.Neighborhoods_Helphub_mvc.Entity.users;

@Service
public class LoginImp {

	
	@Autowired
	RestTemplate restTemplate;
	
	
	String baseUrl="http://localhost:8082/";
	
	
	public Admin AdminLogin(Admin a) {
		
		return restTemplate.postForObject(baseUrl+ "adminlog",a, Admin.class);
		
	}


	public users userlogin(users u) {
		return restTemplate.postForObject(baseUrl +"userlog", u, users.class);
		
	}


	public Integer sendOtp(String email) {
		 return  restTemplate.getForObject(baseUrl + "sendOtp/" + email, int.class);
		
	}


	


	public void Updatepassword(String email, users u) {
		restTemplate.put(baseUrl + "UpdatePasswordLogin/" + email , u);
		
	}


	

}
