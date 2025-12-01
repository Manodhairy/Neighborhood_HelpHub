package com.nh.Neighborhoods_Helphub.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.Shop;
import com.nh.Neighborhoods_Helphub.Service.ShopService;

@RestController
public class ShopController {
	
	
	@Autowired
	ShopService shopService;
	
	@GetMapping("/ViewAllShop")
	public List<Shop> Shops() {
		return shopService.ViewAllShop();
		
		
	}
	
	@GetMapping("ShopData/{id}")
	public Optional<Shop> findById(@PathVariable int id) {
		return shopService.findById(id);
	}
}
