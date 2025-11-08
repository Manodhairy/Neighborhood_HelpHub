package com.nh.Neighborhoods_Helphub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.Eventregistration;
import com.nh.Neighborhoods_Helphub.Service.EventServices;

@RestController
public class EventController {

	@Autowired
	EventServices eventServices;
	
	@PostMapping("/registerEvent")
	public Eventregistration eventdata(@RequestBody Eventregistration e) {
		
		return eventServices.save(e);
		
		
	}
	
	
	@GetMapping("/SearchData/{status}")
	public Eventregistration[] SearchData(@PathVariable String status) {
		return eventServices.FindByStatus(status);
	}
	
	
	@DeleteMapping("/rejectEvent/{eId}")
	public void rejectEvent(@PathVariable int eId) {
		eventServices.rejectEvent(eId);
	}
	
	@PutMapping("/approveData/{eId}")
	public Eventregistration approve(@PathVariable int eId) {
		return eventServices.approve(eId);
	}
}
