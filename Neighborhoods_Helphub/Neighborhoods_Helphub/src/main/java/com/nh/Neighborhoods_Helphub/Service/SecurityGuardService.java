package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.SecurityGuard;
import com.nh.Neighborhoods_Helphub.Entity.SecurityGuardHistory;
import com.nh.Neighborhoods_Helphub.Repository.SecurityGuardHistoryRepo;
import com.nh.Neighborhoods_Helphub.Repository.SecurityGuardRepo;

@Service
public class SecurityGuardService {

	@Autowired
	SecurityGuardRepo  securityGuardRepo;
	
	@Autowired
	SecurityGuardHistoryRepo SecurityGuardHistoryRepo;

	public List<SecurityGuard> ViewTheSecurityGuard() {
		return securityGuardRepo.findAll();
	}

	public SecurityGuard AddSecurityGuard(SecurityGuard securityGuard) {
		return securityGuardRepo.save(securityGuard);
		
	}

	public void DeleteGuard(int id) {
		securityGuardRepo.deleteById(id);
		
	}

	public SecurityGuard UpdateGuard(SecurityGuard securityGuard) {
		
		Optional<SecurityGuard> obj=	securityGuardRepo.findById(securityGuard.getId());
		
		if(obj.isPresent()) {
			
			SecurityGuard guard=obj.get();
			
			SecurityGuardHistory data=new SecurityGuardHistory();
			data.setGuardId(guard.getId());
			data.setGuardName(guard.getGuardName());
			data.setShift(guard.getShift());
			data.setStatus(guard.getStatus());
			data.setAssignedArea(guard.getAssignedArea());
			SecurityGuardHistoryRepo.save(data);
			
		
			
			guard.setAssignedArea(securityGuard.getAssignedArea());
			guard.setShift(securityGuard.getShift());
			guard.setStatus(securityGuard.getStatus());
			
			return securityGuardRepo.save(guard);
		}else {
			return securityGuard;
		}
		
	}

	public List<SecurityGuardHistory> ViewTheSecurityGuardHistory() {
		return SecurityGuardHistoryRepo.findAll();
		
	}
}
