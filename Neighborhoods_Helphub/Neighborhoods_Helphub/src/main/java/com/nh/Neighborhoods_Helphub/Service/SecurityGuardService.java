package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.SecurityGuard;
import com.nh.Neighborhoods_Helphub.Repository.SecurityGuardRepo;

@Service
public class SecurityGuardService {

	@Autowired
	SecurityGuardRepo  securityGuardRepo;

	public List<SecurityGuard> ViewTheSecurityGuard() {
		return securityGuardRepo.findAll();
	}
}
