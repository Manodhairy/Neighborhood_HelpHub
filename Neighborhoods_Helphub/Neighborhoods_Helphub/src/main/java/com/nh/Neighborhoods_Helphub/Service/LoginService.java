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
	LoginRepo loginRepo;
	
	@Autowired
	UsersRepo usersRepo;

	
	
	public Admin AdminLogin(Admin a) {
		return loginRepo.findByAdminNameAndAdminEmailAndPassword(a.getAdminName(),a.getAdminEmail(),a.getPassword());
		
	}

	public users Userlogin(users u) {
		return  usersRepo.findByFullNameAndEmailAndPassword(u.getFullName(),u.getEmail(),u.getPassword());
		
	}
}
