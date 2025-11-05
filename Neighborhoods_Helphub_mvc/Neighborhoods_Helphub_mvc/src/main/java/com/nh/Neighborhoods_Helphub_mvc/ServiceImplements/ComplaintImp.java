package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub_mvc.Entity.Complaint;

@Service
public class ComplaintImp {
	
	@Autowired
	RestTemplate rt;
	
	String baseUrl="http://localhost:8082/";

	public Complaint submitComplaint(Complaint c, int userId) {
		
        		 
		
		
	   return	rt.postForObject(baseUrl + "AddComplaint/" + userId, c, Complaint.class);
		
	}

	public ComplaintUserView[] ViewComplaintPage() {
		  return   rt.getForObject(baseUrl + "ViewComplaint", ComplaintUserView[].class);
		
	}

	public void resolveMessage(Complaint c, int complaintId) {
		      rt.put(baseUrl + "resolveMessage/" + complaintId , c);
		
	}

	public Complaint[] ViewComplaintForUser(int userId) {
		 return rt.getForObject(baseUrl + "ViewComplaintForUser/" + userId, Complaint[].class);
		
	}

	public void updateMessage(int id, Complaint c) {
		   rt.put(baseUrl + "updateMessage/" +id, c);
		
	}

	public void userResolveComplaint(int id) {
		  rt.put(baseUrl + "userResolveComplaint/" +id, Complaint.class);
		
	}

	

}
