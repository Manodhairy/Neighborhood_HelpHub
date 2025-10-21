package com.nh.Neighborhoods_Helphub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nh.Neighborhoods_Helphub_mvc.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub_mvc.Entity.Complaint;
import com.nh.Neighborhoods_Helphub_mvc.Service.ComplaintService;

@Controller
public class ComplaintController {
	
	@Autowired
	ComplaintService cs;   
	
	@PostMapping("/submitComplaint")
	public String submitComplaint(@ModelAttribute Complaint c, Model m) {
		
	    Complaint complaint = cs.submitComplaint(c);

	    if (complaint != null) {
	        m.addAttribute("sussMsg", "Complaint sent successfully!");
	       
	    } else {
	        m.addAttribute("errMsg", "Complaint not sent. Please try again.");
	       
	    }
	    return "UserWeb/Contact";
	}


	@GetMapping("/ViewComplaintPage")
	public String ViewComplaintPage(Model m) {
		ComplaintUserView[] list=	cs.ViewComplaintPage();
		 m.addAttribute("complaintsList",list);
		 
		 return "Admin/Complaint";
		
	}
	
}
