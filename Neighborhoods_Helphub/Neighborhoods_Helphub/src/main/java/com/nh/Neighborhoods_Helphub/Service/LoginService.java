package com.nh.Neighborhoods_Helphub.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.Admin;
import com.nh.Neighborhoods_Helphub.Repository.LoginRepo;

@Service
public class LoginService {

	@Autowired
	LoginRepo lr;

	public Admin AdminLogin(Admin a) {
		return lr.findByAdminNameAndAdminEmailAndPassword(a.getAdminName(),a.getAdminEmail(),a.getPassword());
		
	}
}
