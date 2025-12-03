package com.nh.Neighborhoods_Helphub.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nh.Neighborhoods_Helphub.Entity.Bills;
import com.nh.Neighborhoods_Helphub.Entity.users;

@Repository
public interface BillsRepo extends JpaRepository<Bills, Integer>{

	Optional<Bills> findByUser(users id);

}
