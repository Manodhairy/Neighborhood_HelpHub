package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Shop;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.ShopImp;

@Service
public class ShopService {

	@Autowired
	ShopImp shopImp;
	
	
	 @Autowired
	 private JavaMailSender mailSender;

	public Shop[] viewAllShop() {
		
		return shopImp.viewAllShop();
	}

	public Shop  findById(int shopId) {
	
		return shopImp.findById(shopId);
		
	}
	
	

	public void sendEmail(String toEmail, String subject, String body) {
		 SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(toEmail);
	        message.setSubject(subject);
	        message.setText(body);
	        mailSender.send(message);
		
	}
	
}
