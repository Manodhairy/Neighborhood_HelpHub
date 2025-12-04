package com.nh.Neighborhoods_Helphub.Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.Bills;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Service.BillsService;

@RestController
public class BillsController {
	
	@Autowired
	BillsService billsService;
	
      @PostMapping("/AddBills")
      public Bills AddBills(@RequestBody Bills bills) {
    	 return  billsService.save(bills);
      }
      
      
      @GetMapping("/ViewBill/{id}")
      public Optional<Bills> ViewBill(@PathVariable users id) {
    	  
    	return  billsService.ViewBill(id);
    	  
      }
      
      
      @PutMapping("/PaymentDone/{id}")
      public Bills PaymentDone(@RequestBody Bills bill,@PathVariable users id) {
    	 return billsService.PaymentDone(bill,id);
      }

}
