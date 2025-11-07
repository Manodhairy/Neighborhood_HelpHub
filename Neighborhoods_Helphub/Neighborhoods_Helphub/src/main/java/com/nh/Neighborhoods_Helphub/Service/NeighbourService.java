package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub.Entity.NeighbourData;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Repository.NeighbourRepo;

@Service
public class NeighbourService {
	
	@Autowired
	NeighbourRepo nr;

	public NeighbourData AddNeighbourData(NeighbourData n, users id) {
		 n.setUser(id);
		return nr.save(n);
		
	}

	public List<NeighbourUserView> ViewNeighbourData() {
		return   nr.findNeighbourUserView();
		
	}

}
