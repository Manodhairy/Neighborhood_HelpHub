package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Bills;
import com.nh.Neighborhoods_Helphub_mvc.Entity.users;
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
		
		 String userName=(String) hs.getAttribute("userName");
	     m.addAttribute("UserName", userName);
		return "UserWeb/Billing";
		
	}
	
	
	@PostMapping("/PaymentDone")
	public String PaymentDone(@RequestParam  String refNo,@RequestParam  String billType,HttpSession hs,RedirectAttributes r) {
		int id=   (int) hs.getAttribute("userId");
		boolean result =	billsService.PaymentDone(refNo,id,billType);
		
		if (result) {
            r.addFlashAttribute("succ","Payment completed successfully!");
        } else {
        	 r.addFlashAttribute("error","Invalid Reference Number!");
        }
		
		return "redirect:/ViewBills";
		
	}
	
	@GetMapping("/ViewAllBill")
	public String ViewAllBill(Model m) {
		Bills[] list=billsService.ViewAllBill();
		m.addAttribute("bills",list);
		users[] user=billsService.showUser();
		m.addAttribute("user",user);

		
		return "Admin/Bills";
	}
	
	@PostMapping("/UpdateBill")
	public String UpdateBill(@ModelAttribute Bills bills) {
		billsService.UpdateBill(bills);
		
		
		return "redirect:/ViewAllBill";
	}
	
	@PostMapping("/AddBill")
	public String AddBill(@ModelAttribute Bills bills,@RequestParam int id) {
		
		billsService.AddBill(bills,id);
		return "redirect:/ViewAllBill";
		
	}
	

}
