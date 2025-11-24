package com.nh.Neighborhoods_Helphub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nh.Neighborhoods_Helphub_mvc.Entity.SecurityGuard;
import com.nh.Neighborhoods_Helphub_mvc.Entity.SecurityGuardHistory;
import com.nh.Neighborhoods_Helphub_mvc.Service.ComplaintService;
import com.nh.Neighborhoods_Helphub_mvc.Service.SecurityGuardService;

@Controller
public class SecurityGuardController {
	
	@Autowired
	ComplaintService complaintService;   
	
	@Autowired
	SecurityGuardService  securityGuardService;

	@GetMapping("/ViewAllSecurityGuard")
	public String ViewAllSecurityGuard(Model m) {
		 SecurityGuard[] list1= complaintService.ViewTheSecurityGuard();
	     m.addAttribute("guardsList",list1);
	     
	     SecurityGuardHistory[]  his= securityGuardService.ViewTheSecurityGuardHistory();
	     m.addAttribute("historyList",his);
	     
	     
		return "Admin/Security_guard";

	}
	
	@PostMapping("/AddSecurityGuard")
	public String addSecurityGuard(@ModelAttribute SecurityGuard securityGuard,
	                               RedirectAttributes redirectAttributes) {

	    SecurityGuard guard = securityGuardService.AddSecurityGuard(securityGuard);

	    if (guard != null) {
	        redirectAttributes.addFlashAttribute("successMessage", "Security Guard Added Successfully!");
	    } else {
	        redirectAttributes.addFlashAttribute("errorMessage", "Failed to Add Security Guard!");
	    }

	    return "redirect:/ViewAllSecurityGuard";
	}

	
	@RequestMapping("/DeleteGuard")
	public String DeleteGuard(@RequestParam ("id") int id) {
		securityGuardService.DeleteGuard(id);
		return "redirect:/ViewAllSecurityGuard";
		
	}
	
	@PostMapping("/UpdateGuard")
	public String UpdateGuard(@ModelAttribute SecurityGuard securityGuard) {
		securityGuardService.UpdateGuard(securityGuard);
		return "redirect:/ViewAllSecurityGuard";
	}
}
