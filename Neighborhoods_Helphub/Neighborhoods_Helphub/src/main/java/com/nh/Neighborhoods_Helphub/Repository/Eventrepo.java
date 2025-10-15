package com.nh.Neighborhoods_Helphub.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nh.Neighborhoods_Helphub.Entity.Eventregistration;

public interface Eventrepo extends JpaRepository<Eventregistration, Integer>{

	Eventregistration[] findByStatus(String status);

}
