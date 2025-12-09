package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Bills;
import com.nh.Neighborhoods_Helphub_mvc.Entity.users;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.BillsImp;

@Service
public class BillsService {
	
	@Autowired
	BillsImp billsImp;

	public Bills ViewBills(int userid) {
		return billsImp.ViewBills(userid);
		
	}

	public boolean PaymentDone(String refNo, int id, String billType) {
		
		Bills c=new Bills();
		String ref=refNo+billType;
		c.setRefNo(ref);
		  
		
		return billsImp.PaymentDone(id,c);
	}

	public Bills[] ViewAllBill() {
		return billsImp.ViewAllBill();
	}

	public void UpdateBill(Bills bills) {
		billsImp.UpdateBill(bills);
	}

	public users[] showUser() {
		return billsImp.showUser();
		
	}

	public void AddBill(Bills bills, int id) {
		billsImp.AddBill(bills,id);
	}

	

	

}
