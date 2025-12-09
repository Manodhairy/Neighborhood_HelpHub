package com.nh.Neighborhoods_Helphub.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.Bills;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Repository.BillsRepo;
import com.nh.Neighborhoods_Helphub.Repository.UsersRepo;

@Service
public class BillsService {

	@Autowired
	BillsRepo billRepo;
	
	@Autowired
	UsersRepo usersRepo;

	public Bills save(Bills bills, int id) {
		 Optional<users> user=usersRepo.findById(id);
		 
		 bills.setUser(user.get());
		
		return billRepo.save(bills);
		
	}

	public Optional<Bills> ViewBill(users id) {
		return billRepo.findByUser(id);		
	}

	

	public Bills PaymentDone(Bills bill, users id) {
		    Optional<Bills> billData=  billRepo.findByUser(id);
		    
		    if(billData.isPresent()) {
		    	Bills obj=billData.get();
		    	
		    	
		    	LocalDateTime paidDate=LocalDateTime.now();
		    	obj.setPaidDate(paidDate);
		    	
		    	String billInfo=bill.getRefNo();
		    	
		    	if(billInfo.length() == 16) {
		    		obj.setRefNo(billInfo);
		    		return  billRepo.save(obj);
		    	}else if(billInfo.length() == 22) {
		    		obj.setRefNo1(billInfo);
		    		 return billRepo.save(obj);
		    	}else if(billInfo.length() == 28) {
		    		obj.setRefNo2(billInfo);
		    		 return billRepo.save(obj);
		    	}else {
		    		obj.setRefNo3(billInfo);
		    		return billRepo.save(obj);
		    	}
		       
		    	
		    	
		    	
		    }
			return bill;
		    
		    
		
	}

	public List<Bills> findAll() {
		return billRepo.findAll();
		
	}

	public void UpdateBill(Bills bill) {
		Optional<Bills> billData= billRepo.findById(bill.getId());
		
		if(billData.isPresent()) {
			Bills data=billData.get();
			data.setHouseRent(bill.getHouseRent());
			data.setWaterBill(bill.getWaterBill());
			data.setElectricityBill(bill.getElectricityBill());
			data.setMaintenanceCharges(bill.getMaintenanceCharges());
			data.setStatus(bill.getStatus());
			
			billRepo.save(data);
			
			
		}
		
	}
}
