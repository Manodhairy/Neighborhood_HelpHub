package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Eventregistration;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.EventImp;

@Service
public class EventService {
	
	@Autowired
	EventImp eventImp;

	public Eventregistration AddEvent(Eventregistration e) {
		return eventImp.AddEvenet(e);
		
	}

	public Eventregistration[] viewEvent(String status) {
		return eventImp.viewEvent(status);
	}

	public void rejectEvent(int eId) {
		eventImp.rejectEvent(eId);		
	}

	public void approveEvent(int eId) {
		eventImp.approveEvent(eId);
		
	}

}
