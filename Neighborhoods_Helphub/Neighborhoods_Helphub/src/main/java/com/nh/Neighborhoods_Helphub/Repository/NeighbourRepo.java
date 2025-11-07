package com.nh.Neighborhoods_Helphub.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nh.Neighborhoods_Helphub.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub.Entity.NeighbourData;

@Repository
public interface NeighbourRepo extends JpaRepository<NeighbourData, Integer> {

	@Query("Select new com.nh.Neighborhoods_Helphub.DTO.NeighbourUserView("+
			"u.fullName, u.email, u.mobile_no, u.flat_no,u.age,u.gender,u.occupation ,"+
			"n.id,n.workplace,n.experience,n.message,n.linkedin,n.instagram )"+
			"From NeighbourData n join n.user u ")
	List<NeighbourUserView> findNeighbourUserView();

}
