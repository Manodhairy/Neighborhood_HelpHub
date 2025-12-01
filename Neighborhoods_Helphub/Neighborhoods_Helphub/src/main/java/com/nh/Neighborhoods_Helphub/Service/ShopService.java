package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.Shop;
import com.nh.Neighborhoods_Helphub.Repository.ShopRepo;

@Service
public class ShopService {
	
	@Autowired
	ShopRepo shopRepo;

	public List<Shop> ViewAllShop() {
		return shopRepo.findAll();
		
	}

	public Optional<Shop> findById(int id) {
		return shopRepo.findById(id);
		
	}

}
