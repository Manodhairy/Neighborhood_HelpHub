package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub.Entity.Complaint;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Repository.ComplaintRepo;

@Service
public class ComplaintService {
	
	@Autowired
	ComplaintRepo cr;

	public Complaint AddComplaint(Complaint c, users id) {
		
		 c.setUser(id);
		
		return cr.save(c);
		
	}

	public List<ComplaintUserView> viewComplaint() {
		String complaintStatus="Pending";
		 return   cr.findUserAndComplaintDataAndComplaintStatus(complaintStatus);
		
	}

	public Complaint resolveMessageUpdate(String resolveMessage, int d) {
		     Optional<Complaint>  list=cr.findByComplaintId(d);
		     
		     if(list.isPresent()) {
		    	 Complaint c=list.get();
		    	 c.setResolveMessage(resolveMessage);
		    	 
		    	return cr.save(c);
		     }else {
		    	 
		    	 throw new RuntimeException("User not found with ID: " + d);
		     }
		
	}

	
	
	 public List<Complaint> ViewComplaintForUser(users user) {
		 
		 String complaintStatus="Pending";
        return cr.findByUserAndComplaintStatus(user,complaintStatus);
		
	 }

	 
	 
	 
	 public Complaint updateMessage(String message, int complaintId) {
		  Optional<Complaint>  list=cr.findByComplaintId(complaintId);	
		  
		  if(list.isPresent()) {
			  Complaint c=list.get();
			  c.setMessage(message);
			  
			  return cr.save(c);
		  }else {
			  throw new RuntimeException("User not found with ID: " +complaintId );
		  }
	 }

	 public Complaint userResolveComplaint(int complaintId) {
		  Optional<Complaint>  list=cr.findByComplaintId(complaintId);	
		   if(list.isPresent()) {
			   Complaint c=list.get();
			   c.setComplaintStatus("Resolved");
			   
			  return cr.save(c);
		   }else {
			   throw new RuntimeException("User not found with ID: " +complaintId);
		   }
		 
	 }


}
