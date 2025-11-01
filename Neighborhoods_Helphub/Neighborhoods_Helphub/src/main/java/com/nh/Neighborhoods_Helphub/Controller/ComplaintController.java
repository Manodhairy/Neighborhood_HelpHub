package com.nh.Neighborhoods_Helphub.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub.Entity.Complaint;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Service.ComplaintService;

@RestController
public class ComplaintController {

	@Autowired
	ComplaintService cs;
	
	
	@PostMapping("/AddComplaint/{id}")
	public Complaint AddComplaint(@RequestBody Complaint c,@PathVariable users id) {
		
				return cs.AddComplaint(c,id);
	}
	
	
	@GetMapping("/ViewComplaint")
	public List<ComplaintUserView> ViewComplaint() {
		return cs.viewComplaint();
	}
	
	
	
	@PutMapping("/resolveMessage/{complaintId}")
	public Complaint resolveMessage(@RequestBody Complaint c, @PathVariable("complaintId") int complaintId) {
		String resolveMessage=c.getResolveMessage();
	    return cs.resolveMessageUpdate(resolveMessage, complaintId);
	}
	
	@GetMapping("/ViewComplaintForUser/{id}")
	public List<Complaint> ViewComplaintForUser(@PathVariable ("id") users user) {
		 return  cs.ViewComplaintForUser(user);
	}

}
