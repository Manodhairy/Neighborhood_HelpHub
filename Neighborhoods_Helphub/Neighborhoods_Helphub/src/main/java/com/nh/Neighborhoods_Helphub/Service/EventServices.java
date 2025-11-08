package com.nh.Neighborhoods_Helphub.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.Eventregistration;
import com.nh.Neighborhoods_Helphub.Repository.Eventrepo;

@Service
public class EventServices {
	@Autowired
	Eventrepo eventrepo;

	public Eventregistration save(Eventregistration e) {
		return eventrepo.save(e);		
	}

	

	public Eventregistration[] FindByStatus(String status) {
		return eventrepo.findByStatus(status);
		
	}



	public void rejectEvent(int eId) {
		eventrepo.deleteById(eId);		
	}



	public Eventregistration approve(int eId) {
		Optional<Eventregistration> event=eventrepo.findById(eId);
		
		if(event.isPresent()) {
			Eventregistration e=event.get();
			e.setStatus("Approve");
			
		return	eventrepo.save(e);
			
		}else {
			 throw new RuntimeException("User not found with ID: " + eId);
		}
	}

}
