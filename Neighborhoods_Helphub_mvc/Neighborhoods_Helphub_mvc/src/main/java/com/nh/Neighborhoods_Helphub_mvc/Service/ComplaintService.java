package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub_mvc.Entity.Complaint;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.ComplaintImp;

@Service
public class ComplaintService {
	
	@Autowired
	ComplaintImp ci;

	public Complaint submitComplaint(Complaint c, int userId) {
		
	return	ci.submitComplaint(c,userId);
	}

	public ComplaintUserView[] ViewComplaintPage() {
		  return  ci.ViewComplaintPage();
		
	}

	public void resolveMessage(Complaint c, int complaintId) {
		    ci.resolveMessage(c,complaintId);
		
	}

	public Complaint[] ViewComplaintForUser(int userId) {
		return ci.ViewComplaintForUser(userId);
		
	}

	public void updateMessage(int id, String message) {
		   Complaint c=new Complaint();
		   c.setMessage(message);
		   ci.updateMessage(id,c);
		
	}

	public void userResolveComplaint(int id) {
		  ci.userResolveComplaint(id);
		
	}

}
