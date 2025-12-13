package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Admin;
import com.nh.Neighborhoods_Helphub_mvc.Entity.users;
import com.nh.Neighborhoods_Helphub_mvc.Service.LoginService;
import com.nh.Neighborhoods_Helphub_mvc.Service.ShopService;


@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	
	
	@Autowired
	ShopService shopService;
	
	@PostMapping("/adminLogin")
	public String AdminLogin(@ModelAttribute Admin a,Model m,HttpSession hs) {
		
		
		
		Admin admin =loginService.AdminLogin(a);
		if (admin != null) {
			
			hs.setAttribute("AdminName", admin.getAdminName());
			
            m.addAttribute("admin", admin);
            return "redirect:/ViewAllData";  
        } else {
           
            m.addAttribute("error", "Invalid username or password!");
            return "Login/LoginForm";
        }
       
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpSession hs) {
		hs.invalidate();
		return "Login/LoginForm";
		
	}
	
	
	@PostMapping("/UserLogin")
	public String UserLogin(@ModelAttribute users u, Model m, HttpSession hs) {
	    users user = loginService.userlogin(u);

	    if (user != null) {
	    	hs.setAttribute("userId",user.getId() );
	        hs.setAttribute("userName", user.getFullName());
	        String userName = (String) hs.getAttribute("userName");
	        m.addAttribute("UserName", userName);
	        return "UserWeb/HomePage";
	    } else {
	        m.addAttribute("error", "Invalid username or password!");
	        return "Login/LoginForm";
	    }
	}

	
	
	@GetMapping("/LogOutUser")
	public String logoutUser(HttpSession hs) {
		hs.invalidate();
		return "Login/LoginForm";
	}
	
	@PostMapping("/sendOtp")
	public String sendOtp(@RequestParam String email,Model m) {
		Integer count=loginService.sendOtp(email);
		
		if(count == 1) {
			
			 
			 try {	
				 m.addAttribute("success", "OTP sent successfully to your email!");
				 m.addAttribute("email",email);
				 int num = (int)(Math.random() * 900000) + 100000;
				String otp= String.valueOf(num);
                 m.addAttribute("otp",otp);
			       
				 String subject = "OTP Verification - Sunshine Heights";

			        String body = 
			                "Hi,\n\n" +
			                "Your OTP for password reset is: " + otp + "\n\n" +
			                "This OTP is valid for 10 minutes.\n\n" +
			                "Regards,\nSunshine Heights Team";

			                

			        shopService.sendEmail(email, subject, body);
			        
			        
			        

			        return "Login/VerifyEmail";
			    }catch(Exception e){
			    	e.printStackTrace();

			    	 return "Login/VerifyEmail";
			    }
			 
		}else {
			m.addAttribute("error", "Email not found!");
			 return "Login/VerifyEmail";

		}
		
		
	}
	
	@PostMapping("/VerifyOtp")
	public String VerifyOtp(@RequestParam String mailOtp,@RequestParam String otp,Model m,@RequestParam String email) {
		
		if(mailOtp.equals(otp)) {
			m.addAttribute("successOtp", "OTP verified successfully!");
			m.addAttribute("email",email);
	        return "Login/CreatePassword"; 
		}else {
	        m.addAttribute("errorOtp", "Invalid OTP, please try again!");
	        return "Login/VerifyEmail"; 
	    }
	}
	
	@PostMapping("/Updatepassword")
	public String Updatepassword(@RequestParam String email,@RequestParam String newPassword,@RequestParam String rePassword) {
		
			loginService.Updatepassword(email,newPassword);
			return "Login/LoginForm";
	}
	
	
}
