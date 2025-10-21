package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub.Entity.Complaint;
import com.nh.Neighborhoods_Helphub.Repository.ComplaintRepo;

@Service
public class ComplaintService {
	
	@Autowired
	ComplaintRepo cr;

	public Complaint AddComplaint(Complaint c) {
		return cr.save(c);
		
	}

	public List<ComplaintUserView> viewComplaint() {
		 return   cr.findUserAndComplaintData();
		
	}
	

}
