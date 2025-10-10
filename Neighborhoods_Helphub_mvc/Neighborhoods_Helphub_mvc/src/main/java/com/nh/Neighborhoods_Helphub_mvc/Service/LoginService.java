package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Admin;
import com.nh.Neighborhoods_Helphub_mvc.Entity.users;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.LoginImp;

@Service
public class LoginService {

	
	@Autowired
	LoginImp li;

	public Admin AdminLogin(Admin a) {

		
		
		
	return	li.AdminLogin(a);
	}

	public users userlogin(users u) {
		return  li.userlogin(u);
		
	}
}
