package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Eventregistration;

@Service
public class EventImp {
	
	@Autowired
	RestTemplate restTemplate;
	
	String baseUrl="http://localhost:8082/";

	public Eventregistration AddEvenet(Eventregistration e) {
		return restTemplate.postForObject(baseUrl + "registerEvent", e, Eventregistration.class);
	}

	public Eventregistration[] viewEvent(String status) {
	  return	restTemplate.getForObject(baseUrl + "SearchData/" + status,Eventregistration[].class );
	}

	public void rejectEvent(int eId) {
		restTemplate.delete(baseUrl + "rejectEvent/" + eId );		
	}

	public void approveEvent(int eId) {
		restTemplate.put(baseUrl+"approveData/"+ eId,null);		
	}

}
