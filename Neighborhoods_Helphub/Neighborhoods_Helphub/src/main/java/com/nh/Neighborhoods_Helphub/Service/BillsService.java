package com.nh.Neighborhoods_Helphub.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.Bills;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Repository.BillsRepo;

@Service
public class BillsService {

	@Autowired
	BillsRepo billRepo;

	public Bills save(Bills bills) {
		return billRepo.save(bills);
		
	}

	public Optional<Bills> ViewBill(users id) {
		return billRepo.findByUser(id);		
	}
}
