package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nh.Neighborhoods_Helphub_mvc.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub_mvc.Service.NeighbourService;

@Controller
public class NeighborController {

	
	@Autowired
	NeighbourService ns;
	
	@GetMapping("/ViewAllNeighbour")
	public String ViewAllNeighbour(Model m,HttpSession hs) {
		NeighbourUserView[] list=ns.ViewAllNeighbour();
		m.addAttribute("NeighbourList",list);
		String userName=(String) hs.getAttribute("userName");
		 m.addAttribute("UserName", userName);
		
		return "UserWeb/Neighbourhood";
		
	}
}
