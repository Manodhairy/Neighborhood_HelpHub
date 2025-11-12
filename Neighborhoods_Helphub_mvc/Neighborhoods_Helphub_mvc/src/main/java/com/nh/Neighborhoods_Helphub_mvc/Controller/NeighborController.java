package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nh.Neighborhoods_Helphub_mvc.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub_mvc.Entity.NeighbourData;
import com.nh.Neighborhoods_Helphub_mvc.Service.NeighbourService;

@Controller
public class NeighborController {

	
	@Autowired
	NeighbourService neighbourService;
	
	@GetMapping("/ViewAllNeighbour")
	public String ViewAllNeighbour(Model m,HttpSession hs) {
		NeighbourUserView[] list=neighbourService.ViewAllNeighbour();
		m.addAttribute("NeighbourList",list);
		String userName=(String) hs.getAttribute("userName");
		 m.addAttribute("UserName", userName);
		
		return "UserWeb/Neighbourhood";
		
	}
	
	@GetMapping("/UserProfileData")
	public String UserProfile(HttpSession hs,Model m) {
		 int userId=   (int) hs.getAttribute("userId");
		 String userName=(String) hs.getAttribute("userName");
		 
		 NeighbourUserView list= neighbourService.UserProfile(userId);
		 m.addAttribute("userList",list);
		 m.addAttribute("UserName", userName);
		 return "UserWeb/UserProfile";
		 
	}
	
	@PostMapping("/updateProfileUpadateData")
	public String updateProfileUpadateData(@ModelAttribute NeighbourData  neighbourData,HttpSession hs) {
		int userId=   (int) hs.getAttribute("userId");
		NeighbourData list=	neighbourService.updateProfileUpadateData(neighbourData,userId);
		
		
			return "redirect:/UserProfileData";
		
		
		
	}
}
