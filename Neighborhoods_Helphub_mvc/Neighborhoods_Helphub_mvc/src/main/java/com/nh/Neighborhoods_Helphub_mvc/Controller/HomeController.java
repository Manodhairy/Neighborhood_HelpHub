package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {

	
	@GetMapping("/")
	private String demo() {
        return "Login/LoginForm";
	}
	
	@GetMapping("/adminHome")
	public String AdminHome() {
		return "redirect:/ViewAllData";
	}
	
	@GetMapping("/addNewMember")
	private String addNewMember() {
		return "Admin/AddUser";

	}
	
	@GetMapping("/HomeData")
	public String homedata( ) {
		
		return "UserWeb/HomePage";
	}
	
	
	@GetMapping("/EventInfo")
	private String eventData(){
				return "redirect:/AllEvent";
	}
	
	
	@GetMapping("/EventPage")
	public String EventInfo() {
		return "redirect:/AdminEventInfo";
	}
	
	
	@GetMapping("/contact")
	public String contact() {
		

		return "redirect:/ViewComplaintForUser";
	}
	
	
	
	
	@GetMapping("/ComplaintPage")
	public String ComplaintPage() {
		return "redirect:/ViewComplaintPage";
	}
	
	
	@GetMapping("/Neighbour")
	public String Neighbor() {
		return "redirect:/ViewAllNeighbour";
	}
	
	@GetMapping("/UserProfile")
	public String UserProfile() {
		return "redirect:/UserProfileData";
	}
	
	@GetMapping("/SecurityGuardPage")
	public String SecurityGuardPage() {
		return "redirect:/ViewAllSecurityGuard";
	}
	
	@GetMapping("/shops")
	public String shops() {
		
		return "redirect:/viewAllShop";
	}
	
	@GetMapping("/Billing")
	public String Billing() {
		return "redirect:/ViewBills";
	}
	
	
}
