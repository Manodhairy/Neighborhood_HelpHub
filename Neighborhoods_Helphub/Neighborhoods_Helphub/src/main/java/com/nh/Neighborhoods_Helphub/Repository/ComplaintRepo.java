package com.nh.Neighborhoods_Helphub.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.nh.Neighborhoods_Helphub.DTO.ComplaintUserView;
import com.nh.Neighborhoods_Helphub.Entity.Complaint;
import com.nh.Neighborhoods_Helphub.Entity.users;

@Repository
public interface ComplaintRepo  extends JpaRepository<Complaint, Integer>{
	

	@Query("SELECT new com.nh.Neighborhoods_Helphub.DTO.ComplaintUserView(" +
		       "u.fullName, u.email, u.mobile_no, u.flat_no, c.complaintId, " +
		       "c.subject, c.message, c.complaintStatus, c.complaintDate) " +
		       "FROM Complaint c JOIN c.user u Where c.complaintStatus= :complaintStatus")
		List<ComplaintUserView> findUserAndComplaintDataAndComplaintStatus(@Param ("complaintStatus") String complaintStatus);

	Optional<Complaint> findByComplaintId(int d);

	

	List<Complaint> findByUserAndComplaintStatus(users user, String complaintStatus);

	


}
