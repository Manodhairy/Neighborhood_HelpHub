package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Admin;
import com.nh.Neighborhoods_Helphub_mvc.Service.LoginService;


@Controller
public class LoginController {

	@Autowired
	LoginService ls;
	
	
	@PostMapping("/adminLogin")
	public String AdminLogin(@ModelAttribute Admin a,Model m,HttpSession hs) {
		
		
		
		Admin admin =ls.AdminLogin(a);
		if (admin != null) {
			
			hs.setAttribute("AdminName", admin.getAdminName());
			
			
			
            m.addAttribute("admin", admin);
            return "redirect:/ViewAllData";  
        } else {
           
            m.addAttribute("error", "Invalid username or password!");
            return "Login/LoginForm";
        }
       
	}
	
	
	
}
