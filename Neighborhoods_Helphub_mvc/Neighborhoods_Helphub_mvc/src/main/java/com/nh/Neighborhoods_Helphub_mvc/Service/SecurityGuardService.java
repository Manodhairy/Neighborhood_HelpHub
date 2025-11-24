package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.SecurityGuard;
import com.nh.Neighborhoods_Helphub_mvc.Entity.SecurityGuardHistory;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.SecurityGuardImp;

@Service
public class SecurityGuardService {
	
	@Autowired
	SecurityGuardImp securityGuardImp;

	public SecurityGuard AddSecurityGuard(SecurityGuard securityGuard) {
		return securityGuardImp.AddSecurityGuard(securityGuard);
		
	}

	public void DeleteGuard(int id) {
		securityGuardImp.DeleteGuard(id);
		
	}

	public void UpdateGuard(SecurityGuard securityGuard) {
		
		securityGuardImp.UpdateGuard(securityGuard);
	}

	public SecurityGuardHistory[] ViewTheSecurityGuardHistory() {
		return securityGuardImp.ViewTheSecurityGuardHistory();
		
	}

}
