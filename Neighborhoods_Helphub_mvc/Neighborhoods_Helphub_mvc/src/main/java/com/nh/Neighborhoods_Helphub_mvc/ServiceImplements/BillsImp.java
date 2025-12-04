package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Bills;

@Service
public class BillsImp {
	
	@Autowired
	RestTemplate restTemplate;
	
	String baseUrl="http://localhost:8082/";

	public Bills ViewBills(int userid) {
		return restTemplate.getForObject(baseUrl + "ViewBill/" + userid , Bills.class);
		
	}

	public boolean PaymentDone(int id,Bills obj) {
		
		try {
		restTemplate.put(baseUrl + "PaymentDone/"+ id, obj);
		return true;
		}catch(Exception e) {
			return false;
		}
		
		
	}

	
	
}
