package com.nh.Neighborhoods_Helphub.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nh.Neighborhoods_Helphub.Entity.Complaint;

@Repository
public interface ComplaintRepo  extends JpaRepository<Complaint, Integer>{

}
