package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub.Entity.NeighbourData;
import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Repository.NeighbourRepo;

@Service
public class NeighbourService {
	
	@Autowired
	NeighbourRepo neighbourRepo;
	
	@Autowired
	UsersService usersService;

	public NeighbourData AddNeighbourData(NeighbourData n, users id) {
		 n.setUser(id);
		return neighbourRepo.save(n);
		
	}

	public List<NeighbourUserView> ViewNeighbourData() {
		return   neighbourRepo.findNeighbourUserView();
		
	}

	public Optional<NeighbourUserView> ViewUserData(users id) {
		
		Optional<NeighbourUserView> data= neighbourRepo.findByUserId(id);
		
		if(data.isPresent()) {
			return data;
		}else {
			int id1=id.getId();
			Optional<users> user=usersService.selectData(id1);
			users u=user.get();
			
			NeighbourUserView n=new NeighbourUserView();
			n.setFullName(u.getFullName());
			n.setEmail(u.getEmail());
			n.setMobile_no(u.getMobile_no());
			n.setFlat_no(u.getFlat_no());
			n.setAge(u.getAge());
			n.setGender(u.getGender());
			n.setOccupation(u.getOccupation());
			
			Optional<NeighbourUserView> list=Optional.of(n);
			return list;
		}
		
	}

	

}
