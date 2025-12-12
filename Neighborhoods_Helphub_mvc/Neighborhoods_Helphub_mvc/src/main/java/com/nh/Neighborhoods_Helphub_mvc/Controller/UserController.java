package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nh.Neighborhoods_Helphub_mvc.Entity.users;
import com.nh.Neighborhoods_Helphub_mvc.Service.AdminService;

@Controller
public class UserController {

	@Autowired
	AdminService adminService;
	
	
	@GetMapping("/ViewAllData")
	public String viewAllData(Model m, HttpSession hs,
	                          @RequestParam(defaultValue = "1") int page,
	                          @RequestParam(defaultValue = "8") int size) {
 
		users[] list=adminService.viewAllData(page,size);
		 long totalMember= adminService.totalmember();
		long activeMember= adminService.ActiveMember();
		long inactivemmeber=adminService.InactiveMember();
		
		m.addAttribute("TotalMember",totalMember);
		m.addAttribute("ActiveMember",activeMember);
		m.addAttribute("InactiveMember",inactivemmeber);
		
		String adminName=(String) hs.getAttribute("AdminName");
		m.addAttribute("AdminName",adminName);
		m.addAttribute("user",list);
		
		int totalPages = (int) Math.ceil((double) totalMember / size);

		m.addAttribute("currentPage", page);
		m.addAttribute("totalPages", totalPages);
		m.addAttribute("pageSize", size);

		
		
		return "Admin/AdminHome";
	}
	
	@GetMapping("/deleteRecord")
	public String deletedata(@RequestParam ("id") int id) {
		adminService.deleteData(id);
	 return "redirect:/ViewAllData";
	}
	
	@GetMapping("/editUser")
	public String editUser(@RequestParam ("id") int id ,Model m) {
		users u=adminService.editUser(id);
		m.addAttribute("user",u);
		return "Admin/UpdatePage";
		
	}
	
	@PostMapping("/saveMember")
	public String saveMember(@ModelAttribute users u) {
		adminService.saveMember(u);
		return "redirect:/ViewAllData";

	}
	
	@PostMapping("/AddMember")
	public String AddMember(@ModelAttribute users u,Model m) {
		try {
	        users res = adminService.save(u); // save user
	        m.addAttribute("successMessage", " User added successfully!");
	    } catch (Exception e) {
	        m.addAttribute("errorMessage", " Failed to add user!");
	    }
		
		
		return "Admin/AddUser";
	}
	
	
	
}
