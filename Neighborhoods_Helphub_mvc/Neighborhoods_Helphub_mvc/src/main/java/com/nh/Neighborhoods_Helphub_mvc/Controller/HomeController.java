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
	public String homedata( HttpSession hs,Model m) {
		String userName=(String) hs.getAttribute("userName");
		m.addAttribute("UserName",userName);
		return "UserWeb/HomePage";
	}
	
	
	@GetMapping("/EventInfo")
	private String eventData(HttpSession hs,Model m){
		String userName=(String) hs.getAttribute("userName");
		 m.addAttribute("UserName", userName);
		return "redirect:/AllEvent";
	}
	
	
	@GetMapping("/EventPage")
	public String EventInfo() {
		return "redirect:/AdminEventInfo";
	}
	
	
	@GetMapping("/contact")
	public String contact(HttpSession hs,Model m) {
		String userName=(String) hs.getAttribute("userName");
		 m.addAttribute("UserName", userName);
		 
		 
		 int userId=   (int) hs.getAttribute("userId");
		 
		 m.addAttribute("userId",userId);

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
}
