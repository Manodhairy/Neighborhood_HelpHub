package com.nh.Neighborhoods_Helphub_mvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Eventregistration;
import com.nh.Neighborhoods_Helphub_mvc.Service.EventService;

@Controller
public class EventController {

	@Autowired
	EventService es;
	
	
    @PostMapping("/EventRegister")
    public String EventRegister(@ModelAttribute Eventregistration e,HttpSession hs,Model m) {
    	String userName=(String) hs.getAttribute("userName");
    	
    	e.setFullName(userName);
    	e.setStatus("pending");
    	es.AddEvent(e);
    	
    	    m.addAttribute("UserName", userName);
    	    m.addAttribute("reqMsg", "Request Sent Successfully!");
    	    return "redirect:/AllEvent";
    	

    	
    }
    
    @GetMapping("/AllEvent")
    public String AllEvent(Model m,HttpSession hs) {
    	  String status="approve";
    	Eventregistration[] list=es.viewEvent(status);
    	
    	String userName=(String) hs.getAttribute("userName");
    	m.addAttribute("UserName", userName);
    	m.addAttribute("Eventlist",list);
    	
    	return "UserWeb/Event";
    	
    }
    
    
    @GetMapping("/AdminEventInfo")
    public String AdminEventInfo(Model m,HttpSession hs) {
    	//pending data show
    	String status="pending";
    	Eventregistration[] list=es.viewEvent(status);
        m.addAttribute("eventList",list);
        String adminName=(String) hs.getAttribute("AdminName");
		m.addAttribute("AdminName",adminName);
		
		//approve data show
		String status1="approve";
		Eventregistration[] list1=es.viewEvent(status1);
		m.addAttribute("eventListApprove",list1);
    	
    	return "Admin/EventInfo";
    }
    
    
    @RequestMapping("/rejectEvent")
    public String deleteEvent(@RequestParam  int eId) {
    	es.rejectEvent(eId);
    	
    	return "redirect:/AdminEventInfo";
    }
    
    @GetMapping("/approveEvent")
    public String approveEvent(@RequestParam int eId) {
    	es.approveEvent(eId);
    	return "redirect:/AdminEventInfo";
    }
    
    
    
}
