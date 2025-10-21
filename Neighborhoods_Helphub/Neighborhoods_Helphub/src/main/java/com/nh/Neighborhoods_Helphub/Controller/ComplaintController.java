package com.nh.Neighborhoods_Helphub.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.DTO.ComplaintUserView;
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
	
	
	@GetMapping("/ViewComplaint")
	public List<ComplaintUserView> ViewComplaint() {
		return cs.viewComplaint();
	}
}
