package com.nh.Neighborhoods_Helphub.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nh.Neighborhoods_Helphub.Entity.Admin;

@Repository
public interface LoginRepo extends JpaRepository<Admin, Integer>{


	
	Admin findByAdminNameAndAdminEmailAndPassword(String adminName, String adminEmail, String password);

     
  


}
