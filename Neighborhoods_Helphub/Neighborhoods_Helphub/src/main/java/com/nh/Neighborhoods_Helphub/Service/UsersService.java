package com.nh.Neighborhoods_Helphub.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Repository.UsersRepo;

@Service
public class UsersService {

	@Autowired
	UsersRepo ur;

	public List<users> viewAll() {
	 List<users> list=ur.findAll();	
	 return list;
	}

	public void addData(users s) {
		ur.save(s);
		
	}

	public void DeleteData(int id) {
		ur.deleteById(id);
		
	}

	public Optional<users> selectData(int id) {
	  return	ur.findById(id);
		
	}

	public Object update(users s) {
		Optional<users> existingUser = ur.findById(s.getId());
	    
	    if (existingUser.isPresent()) {
	        return ur.save(s); 
	        } else {
	        throw new RuntimeException("User not found with ID: " + s.getId());
	    }
		
	}

	public long totalMember() {
		long count=ur.count();
		return count;
		
	}

	public long ActiveMember() {
		long count=ur.countByMemberStatus("active");
		  return count;
		
	}

	public long inactivemember() {
		  long count=  ur.countByMemberStatus("inactive");
		return count;
	}
}
