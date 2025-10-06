package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.users;

@Service
public class AdminImp {

	@Autowired
	RestTemplate rt;
	
	
	String baseUrl="http://localhost:8082/";
	
	
	public users[] viewAllData() {
		return rt.getForObject(baseUrl+ "viewAllData", users[].class);
		
	}


	public void deleteData(int id) {
		rt.delete(baseUrl+"deleteData/"+id);
		
	}


	public users editUser(int id) {
	  return 	rt.getForObject(baseUrl + "selectUser/" + id,users.class);
		
	}


	public void saveMember(users u) {
	    	rt.put(baseUrl + "updateData", u);
		
	}


	public users save(users u) {
	   return	rt.postForObject(baseUrl +"addData", u, users.class);
		
	}

}
