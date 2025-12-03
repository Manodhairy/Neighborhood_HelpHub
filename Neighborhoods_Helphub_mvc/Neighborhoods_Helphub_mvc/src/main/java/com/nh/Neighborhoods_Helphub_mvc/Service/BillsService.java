package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Bills;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.BillsImp;

@Service
public class BillsService {
	
	@Autowired
	BillsImp billsImp;

	public Bills ViewBills(int userid) {
		return billsImp.ViewBills(userid);
		
	}

	

}
