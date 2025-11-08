package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.users;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.AdminImp;

@Service
public class AdminService {

	@Autowired
	AdminImp adminImp;
	
	
	public users[] viewAllData() {
		return adminImp.viewAllData();
		
	}


	public void deleteData(int id) {
		adminImp.deleteData(id);		
	}


	public users editUser(int id) {

		return adminImp.editUser(id);
	}


	public void saveMember(users u) {
		adminImp.saveMember(u);
		
	}


	public users save(users u) {
		return adminImp.save(u);
		
	}


	public Long totalmember() {
		return adminImp.totalmember();
		
	}


	public Long ActiveMember() {
	   return	adminImp.ActiveMember();
		
	}


	public Long InactiveMember() {
       return  adminImp.InactiveMember();		
	}

}
