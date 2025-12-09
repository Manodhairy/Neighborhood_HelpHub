package com.nh.Neighborhoods_Helphub.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.Bills;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Service.BillsService;

@RestController
public class BillsController {
	
	@Autowired
	BillsService billsService;
	
      @PostMapping("/AddBills/{id}")
      public Bills AddBills(@RequestBody Bills bills ,@PathVariable int id) {
    	  
    	 return  billsService.save(bills,id);
      }
      
      
      @GetMapping("/ViewAllBill")
      public List<Bills> ViewAllBill() {
    	 return  billsService.findAll();
      }
      
      @GetMapping("/ViewBill/{id}")
      public Optional<Bills> ViewBill(@PathVariable users id) {
    	  
    	return  billsService.ViewBill(id);
    	  
      }
      
      
      @PutMapping("/PaymentDone/{id}")
      public Bills PaymentDone(@RequestBody Bills bill,@PathVariable users id) {
    	 return billsService.PaymentDone(bill,id);
      }

      @PutMapping("/UpdateBill")
      public void UpdateBill(@RequestBody Bills bill) {
    	  billsService.UpdateBill(bill);
      }
}
