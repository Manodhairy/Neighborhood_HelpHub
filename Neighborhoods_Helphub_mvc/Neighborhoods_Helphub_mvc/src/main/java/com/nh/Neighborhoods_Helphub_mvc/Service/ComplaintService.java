package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Complaint;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.ComplaintImp;

@Service
public class ComplaintService {
	
	@Autowired
	ComplaintImp ci;

	public Complaint submitComplaint(Complaint c) {
		
	return	ci.submitComplaint(c);
	}

}
