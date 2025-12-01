package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nh.Neighborhoods_Helphub_mvc.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub_mvc.Entity.OrderRequest;
import com.nh.Neighborhoods_Helphub_mvc.Entity.Shop;
import com.nh.Neighborhoods_Helphub_mvc.Service.NeighbourService;
import com.nh.Neighborhoods_Helphub_mvc.Service.ShopService;

@Controller
public class ShopController {
	
	@Autowired
	ShopService shopService;
	
	@Autowired
	NeighbourService neighbourService;
	
	
	

	@GetMapping("/viewAllShop")
	public String viewAllShop(Model m,HttpSession hs) {
		Shop[] list=shopService.viewAllShop();
		m.addAttribute("shopList", list);
		
		String userName = (String) hs.getAttribute("userName");
        m.addAttribute("UserName", userName);
        
        
        int userId=   (int) hs.getAttribute("userId");
        NeighbourUserView list1= neighbourService.UserProfile(userId);
		 m.addAttribute("userList",list1);
		return "UserWeb/Shops";
		
	}
	
	
	    @PostMapping("/placeOrder")
	    public String placeOrder(@ModelAttribute OrderRequest request) {
    
	    	
	    try {	
	        Shop shop = shopService.findById(request.getShopId());

	        // Email Subject
	        String subject = "🛍️ New Order from " + request.getFullName();

	        // Email Body
	        String body =
	                "New Order Received\n\n" +
	                "Shop: " + shop.getShopName() + "\n\n" +
	                "Customer Name: " + request.getFullName() + "\n" +
	                "Flat Number: " + request.getFlat_no() + "\n" +
	                "Mobile: " + request.getMobile_no() + "\n" +
	               
	                "Order Details:\n" +
	                request.getOrderDetails();

	        // Send email to shop email
	        shopService.sendEmail(shop.getEmail(), subject, body);

	        return "redirect:/viewAllShop?success=true";
	    }catch(Exception e){
	    	e.printStackTrace();

	        return "redirect:/viewAllShop?error=true";
	    }
}
	    }
