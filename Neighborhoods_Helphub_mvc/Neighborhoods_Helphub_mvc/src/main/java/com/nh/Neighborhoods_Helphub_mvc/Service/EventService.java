package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Eventregistration;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.EventImp;

@Service
public class EventService {
	
	@Autowired
	EventImp ei;

	public Eventregistration AddEvent(Eventregistration e) {
		return ei.AddEvenet(e);
		
	}

	public Eventregistration[] viewEvent(String status) {
		return ei.viewEvent(status);
	}

	public void rejectEvent(int eId) {
            ei.rejectEvent(eId);		
	}

	public void approveEvent(int eId) {
		   ei.approveEvent(eId);
		
	}

}
