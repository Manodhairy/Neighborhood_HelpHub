package com.nh.Neighborhoods_Helphub.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.nh.Neighborhoods_Helphub.DTO.NeighbourUserView;
import com.nh.Neighborhoods_Helphub.Entity.NeighbourData;
import com.nh.Neighborhoods_Helphub.Entity.users;

@Repository
public interface NeighbourRepo extends JpaRepository<NeighbourData, Integer> {

	@Query("Select new com.nh.Neighborhoods_Helphub.DTO.NeighbourUserView("+
			"u.fullName, u.email, u.mobile_no, u.flat_no,u.age,u.gender,u.occupation ,"+
			"n.id,n.workplace,n.experience,n.message,n.linkedin,n.instagram )"+
			"From NeighbourData n join n.user u ")
	List<NeighbourUserView> findNeighbourUserView();
	
	
	
	@Query("Select new com.nh.Neighborhoods_Helphub.DTO.NeighbourUserView("+
			"u.fullName, u.email, u.mobile_no, u.flat_no,u.age,u.gender,u.occupation ,"+
			"n.id,n.workplace,n.experience,n.message,n.linkedin,n.instagram )"+
			"From NeighbourData n join n.user u where n.user= :user")
	Optional<NeighbourUserView> findByUserId(@Param ("user") users id);

}
