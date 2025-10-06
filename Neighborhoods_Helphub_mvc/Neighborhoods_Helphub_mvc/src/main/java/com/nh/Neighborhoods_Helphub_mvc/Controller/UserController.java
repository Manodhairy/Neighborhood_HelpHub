package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nh.Neighborhoods_Helphub_mvc.Entity.users;
import com.nh.Neighborhoods_Helphub_mvc.Service.AdminService;

@Controller
public class UserController {

	@Autowired
	AdminService as;
	
	
	@GetMapping("/ViewAllData")
	public String viewAllData(Model m,HttpSession hs) {
		users[] list=as.viewAllData();
		
		String adminName=(String) hs.getAttribute("AdminName");
		m.addAttribute("AdminName",adminName);
		m.addAttribute("user",list);
		return "Admin/AdminHome";
	}
	
	@GetMapping("/deleteRecord")
	public String deletedata(@RequestParam ("id") int id) {
		as.deleteData(id);
	 return "redirect:/ViewAllData";
	}
	
	@GetMapping("/editUser")
	public String editUser(@RequestParam ("id") int id ,Model m) {
		users u=as.editUser(id);
		m.addAttribute("user",u);
		return "Admin/UpdatePage";
		
	}
	
	@PostMapping("/saveMember")
	public String saveMember(@ModelAttribute users u) {
		as.saveMember(u);
		return "redirect:/ViewAllData";

	}
	
	@PostMapping("/AddMember")
	public String AddMember(@ModelAttribute users u,Model m) {
		try {
	        users res = as.save(u); // save user
	        m.addAttribute("successMessage", " User added successfully!");
	    } catch (Exception e) {
	        m.addAttribute("errorMessage", " Failed to add user!");
	    }
		
		
		return "Admin/AddUser";
	}
	
	
	
}
