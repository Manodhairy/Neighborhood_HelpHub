package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.users;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.AdminImp;

@Service
public class AdminService {

	@Autowired
	AdminImp ai;
	
	
	public users[] viewAllData() {
		return ai.viewAllData();
		
	}


	public void deleteData(int id) {
		   ai.deleteData(id);		
	}


	public users editUser(int id) {

		return ai.editUser(id);
	}


	public void saveMember(users u) {
		ai.saveMember(u);
		
	}


	public users save(users u) {
		return ai.save(u);
		
	}


	public Long totalmember() {
		return ai.totalmember();
		
	}


	public Long ActiveMember() {
	   return	ai.ActiveMember();
		
	}


	public Long InactiveMember() {
       return  ai.InactiveMember();		
	}

}
