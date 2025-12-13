package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	public String homedata(Model m, HttpSession hs) {
		
        String userName = (String) hs.getAttribute("userName");
        m.addAttribute("UserName", userName);
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
	
	
	@GetMapping("/BillsPage")
	public String BillsPage() {
		return "redirect:/ViewAllBill";
	}
	
	@GetMapping("/forgetPassword")
	public String forgetPassword() {
		return "Login/VerifyEmail";
	}
	
	@GetMapping("/LoginPage")
	public String LoginPage() {
		 return "Login/LoginForm";
	}
	
}

