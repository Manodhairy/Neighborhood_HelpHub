package com.nh.Neighborhoods_Helphub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.Complaint;
import com.nh.Neighborhoods_Helphub.Service.ComplaintService;

@RestController
public class ComplaintController {

	@Autowired
	ComplaintService cs;
	
	
	@PostMapping("/AddComplaint")
	public Complaint AddComplaint(@RequestBody Complaint c) {
		return cs.AddComplaint(c);
	}
}
