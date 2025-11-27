package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Shop;
import com.nh.Neighborhoods_Helphub_mvc.Service.ShopService;

@Controller
public class ShopController {
	
	@Autowired
	ShopService shopService;

	@GetMapping("/viewAllShop")
	public String viewAllShop(Model m,HttpSession hs) {
		Shop[] list=shopService.viewAllShop();
		m.addAttribute("shopList", list);
		
		String userName = (String) hs.getAttribute("userName");
        m.addAttribute("UserName", userName);
		return "UserWeb/Shops";
		
	}
	
}
