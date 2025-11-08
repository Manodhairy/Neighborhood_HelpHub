package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.DTO.NeighbourUserView;

@Service
public class NeighbourImp {

	@Autowired
	RestTemplate restTemplate;
	
	String baseUrl="http://localhost:8082/";
	
	public NeighbourUserView[] ViewAllNeighbour() {
		return restTemplate.getForObject(baseUrl + "ViewNeighbourData",NeighbourUserView[].class );
		
	}

}
