package com.nh.Neighborhoods_Helphub.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.nh.Neighborhoods_Helphub.Entity.users;

public interface UsersRepo extends JpaRepository<users, Integer> {

   

	@Query("SELECT COUNT(u) FROM users u WHERE u.member_status = :status")
	long countByMemberStatus(@Param("status") String status);

	users findByFullNameAndEmailAndPassword(String full_name, String email, String password);


}
