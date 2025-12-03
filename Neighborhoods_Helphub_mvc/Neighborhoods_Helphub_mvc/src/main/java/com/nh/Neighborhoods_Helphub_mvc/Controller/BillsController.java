package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Bills;
import com.nh.Neighborhoods_Helphub_mvc.Service.BillsService;

@Controller
public class BillsController {

	
	@Autowired
	BillsService billsService;
	
	@GetMapping("/ViewBills")
	public String ViewBills(HttpSession hs,Model m) {
		int userid=  (int) hs.getAttribute("userId");
		Bills list=	billsService.ViewBills(userid);
		m.addAttribute("bill",list);
		return "UserWeb/Billing";
		
	}
}
