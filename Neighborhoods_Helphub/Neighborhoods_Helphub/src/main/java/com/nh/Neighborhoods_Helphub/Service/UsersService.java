package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Repository.UsersRepo;

@Service
public class UsersService {

	@Autowired
	UsersRepo usersRepo;

	public List<users> getPagedUsers(int page, int size) {
	    PageRequest pageable = PageRequest.of(page - 1, size);  

	    Page<users> pageResult = usersRepo.findAll(pageable);

	    return pageResult.getContent();
	}


	public void addData(users s) {
		usersRepo.save(s);
		
	}

	public void DeleteData(int id) {
		usersRepo.deleteById(id);
		
	}

	public Optional<users> selectData(int id) {
	  return	usersRepo.findById(id);
		
	}

	public Object update(users s) {
		Optional<users> existingUser = usersRepo.findById(s.getId());
	    
	    if (existingUser.isPresent()) {
	        return usersRepo.save(s); 
	        } else {
	        throw new RuntimeException("User not found with ID: " + s.getId());
	    }
		
	}

	public long totalMember() {
		long count=usersRepo.count();
		return count;
		
	}

	public long ActiveMember() {
		long count=usersRepo.countByMemberStatus("active");
		  return count;
		
	}

	public long inactivemember() {
		  long count=  usersRepo.countByMemberStatus("inactive");
		return count;
	}


	public List<users> viewAllDataforBills() {
		return usersRepo.findAll();
	}
}
