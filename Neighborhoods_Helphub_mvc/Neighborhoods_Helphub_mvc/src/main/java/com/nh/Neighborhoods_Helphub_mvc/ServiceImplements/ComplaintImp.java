package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Complaint;

@Service
public class ComplaintImp {
	
	@Autowired
	RestTemplate rt;
	
	String baseUrl="http://localhost:8082/";

	public Complaint submitComplaint(Complaint c) {
	   return	rt.postForObject(baseUrl + "AddComplaint", c, Complaint.class);
		
	}

	

}
