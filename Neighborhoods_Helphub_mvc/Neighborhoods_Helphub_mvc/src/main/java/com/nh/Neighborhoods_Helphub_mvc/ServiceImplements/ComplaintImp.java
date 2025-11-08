package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub_mvc.Entity.Complaint;

@Service
public class ComplaintImp {
	
	@Autowired
	RestTemplate restTemplate;
	
	String baseUrl="http://localhost:8082/";

	public Complaint submitComplaint(Complaint c, int userId) {
		
        		 
		
		
	   return	restTemplate.postForObject(baseUrl + "AddComplaint/" + userId, c, Complaint.class);
		
	}

	public ComplaintUserView[] ViewComplaintPage() {
		  return   restTemplate.getForObject(baseUrl + "ViewComplaint", ComplaintUserView[].class);
		
	}

	public void resolveMessage(Complaint c, int complaintId) {
		restTemplate.put(baseUrl + "resolveMessage/" + complaintId , c);
		
	}

	public Complaint[] ViewComplaintForUser(int userId) {
		 return restTemplate.getForObject(baseUrl + "ViewComplaintForUser/" + userId, Complaint[].class);
		
	}

	public void updateMessage(int id, Complaint c) {
		restTemplate.put(baseUrl + "updateMessage/" +id, c);
		
	}

	public void userResolveComplaint(int id) {
		restTemplate.put(baseUrl + "userResolveComplaint/" +id, Complaint.class);
		
	}

	

}
