package com.nh.Neighborhoods_Helphub.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.Admin;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Repository.LoginRepo;
import com.nh.Neighborhoods_Helphub.Repository.UsersRepo;

@Service
public class LoginService {

	@Autowired
	LoginRepo lr;
	@Autowired
	UsersRepo ur;

	
	
	public Admin AdminLogin(Admin a) {
		return lr.findByAdminNameAndAdminEmailAndPassword(a.getAdminName(),a.getAdminEmail(),a.getPassword());
		
	}

	public users Userlogin(users u) {
		return  ur.findByFullNameAndEmailAndPassword(u.getFullName(),u.getEmail(),u.getPassword());
		
	}
}
