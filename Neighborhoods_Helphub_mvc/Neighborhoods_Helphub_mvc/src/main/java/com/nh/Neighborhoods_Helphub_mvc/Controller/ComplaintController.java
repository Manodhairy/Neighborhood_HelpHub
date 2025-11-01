package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nh.Neighborhoods_Helphub_mvc.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub_mvc.Entity.Complaint;
import com.nh.Neighborhoods_Helphub_mvc.Service.ComplaintService;

@Controller
public class ComplaintController {
	
	@Autowired
	ComplaintService cs;   
	
	@PostMapping("/submitComplaint")
	public String submitComplaint(@ModelAttribute Complaint c, Model m,HttpSession hs,RedirectAttributes r) {
           int userId=   (int) hs.getAttribute("userId");
	    Complaint complaint = cs.submitComplaint(c,userId);
	    if (complaint != null) {
	    	String userName=(String) hs.getAttribute("userName");
	    	r.addFlashAttribute("UserName", userName);
	        r.addFlashAttribute("sussMsg", "Complaint sent successfully!");
	       
	    } else {
	        r.addFlashAttribute("errMsg", "Complaint not sent. Please try again.");
	       
	    }
	    return "redirect:/ViewComplaintForUser";
	}


	@GetMapping("/ViewComplaintPage")
	public String ViewComplaintPage(Model m) {
		ComplaintUserView[] list=	cs.ViewComplaintPage();
		 m.addAttribute("complaintsList",list);
		 
		 return "Admin/Complaint";
		
	}
	
	
	@PostMapping("/resolveComplaint")
	public String resolveComplaint(@RequestParam ("resolveMessage") String resolveMessage,@RequestParam ("complaintId") int complaintId) {
		Complaint c=new Complaint();
		   c.setResolveMessage(resolveMessage);
		   cs.resolveMessage(c,complaintId);   
		   
		   return "redirect:/ViewComplaintPage";
	}
	
	
	@GetMapping("/ViewComplaintForUser")
	public String ViewComplaintForUser(HttpSession hs,Model m) {
		 int userId=   (int) hs.getAttribute("userId");
		 
		 Complaint[]  list= cs.ViewComplaintForUser(userId);
		 m.addAttribute("complaintsList",list);
		 m.addAttribute("userId",userId);
		 return "UserWeb/Contact";
		
	}
	
	
	
	
	
}
