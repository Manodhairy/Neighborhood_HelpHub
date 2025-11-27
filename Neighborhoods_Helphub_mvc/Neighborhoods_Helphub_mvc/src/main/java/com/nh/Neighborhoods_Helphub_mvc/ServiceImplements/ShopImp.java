package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Shop;

@Service
public class ShopImp {

	@Autowired
	RestTemplate  restTemplate;
	
	String baseUrl="http://localhost:8082/";

	public Shop[] viewAllShop() {
	  return	restTemplate.getForObject(baseUrl + "ViewAllShop", Shop[].class);
		
	}
	
}
