package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub_mvc.Entity.NeighbourData;

@Service
public class NeighbourImp {

	@Autowired
	RestTemplate restTemplate;
	
	String baseUrl="http://localhost:8082/";
	
	public NeighbourUserView[] ViewAllNeighbour() {
		return restTemplate.getForObject(baseUrl + "ViewNeighbourData",NeighbourUserView[].class );
		
	}

	public NeighbourUserView UserProfile(int userId) {
		return restTemplate.getForObject(baseUrl + "ViewUserData/" + userId,NeighbourUserView.class);
	}

	public NeighbourData updateProfileUpadateData(NeighbourData neighbourData, int userId) {
		   return    restTemplate.postForObject(baseUrl + "AddNeighbourData/" + userId, neighbourData, NeighbourData.class);
		
	}

}
