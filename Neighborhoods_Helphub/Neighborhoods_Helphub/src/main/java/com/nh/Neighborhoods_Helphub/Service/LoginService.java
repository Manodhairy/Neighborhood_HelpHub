package com.nh.Neighborhoods_Helphub.Service;

import java.util.Optional;

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

	public Optional<users> sendOtp(String email) {
		return usersRepo.findByEmail(email);
		
	}

	public void UpdatePassword(String email,users user) {
		Optional<users> data=usersRepo.findByEmail(email);
		
		if(data.isPresent()) {
			users u=data.get();
		     u.setPassword(user.getPassword());
		     
		     usersRepo.save(u); 
		}
	}

	
}
