package com.nh.Neighborhoods_Helphub_mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub_mvc.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub_mvc.ServiceImplements.NeighbourImp;

@Service
public class NeighbourService {

	@Autowired
	NeighbourImp neighbourImp;
	
	
	
	public NeighbourUserView[] ViewAllNeighbour() {
		return neighbourImp.ViewAllNeighbour();
		
	}

}
