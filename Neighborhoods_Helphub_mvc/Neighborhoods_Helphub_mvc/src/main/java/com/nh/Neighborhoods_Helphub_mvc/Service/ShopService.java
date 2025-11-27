package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Shop;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.ShopImp;

@Service
public class ShopService {

	@Autowired
	ShopImp shopImp;

	public Shop[] viewAllShop() {
		
		return shopImp.viewAllShop();
	}
	
}
