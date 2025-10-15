package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.Eventregistration;

@Service
public class EventImp {
	
	@Autowired
	RestTemplate rt;
	
	String baseUrl="http://localhost:8082/";

	public Eventregistration AddEvenet(Eventregistration e) {
		return rt.postForObject(baseUrl + "registerEvent", e, Eventregistration.class);
	}

	public Eventregistration[] viewEvent(String status) {
	  return	rt.getForObject(baseUrl + "SearchData/" + status,Eventregistration[].class );
	}

	public void rejectEvent(int eId) {
           rt.delete(baseUrl + "rejectEvent/" + eId );		
	}

	public void approveEvent(int eId) {
		  rt.put(baseUrl+"approveData/"+ eId,null);		
	}

}
