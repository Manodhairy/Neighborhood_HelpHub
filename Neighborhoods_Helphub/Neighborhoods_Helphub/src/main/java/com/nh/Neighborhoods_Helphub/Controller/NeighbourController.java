package com.nh.Neighborhoods_Helphub.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub.Entity.NeighbourData;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Service.NeighbourService;

@RestController
public class NeighbourController {

	@Autowired
	NeighbourService neighbourService;
	
    
	@PostMapping("/AddNeighbourData/{id}")
	public NeighbourData AddNeighbourData(@RequestBody NeighbourData n,@PathVariable users id) {
		return neighbourService.AddNeighbourData(n,id);
	}
	
	
	@GetMapping("/ViewNeighbourData")
	public List<NeighbourUserView> ViewNeighbourData() {
		return neighbourService.ViewNeighbourData();
	}
}
