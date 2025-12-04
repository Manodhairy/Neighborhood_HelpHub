package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	
	@PostMapping("/PaymentDone")
	public String PaymentDone(@RequestParam ("refNo") String refNo,HttpSession hs,RedirectAttributes r) {
		int id=   (int) hs.getAttribute("userId");
		boolean result =	billsService.PaymentDone(refNo,id);
		
		if (result) {
            r.addFlashAttribute("succ","Payment completed successfully!");
        } else {
        	 r.addFlashAttribute("error","Invalid Reference Number!");
        }
		
		return "redirect:/ViewBills";
		
	}
	
	
	

}
