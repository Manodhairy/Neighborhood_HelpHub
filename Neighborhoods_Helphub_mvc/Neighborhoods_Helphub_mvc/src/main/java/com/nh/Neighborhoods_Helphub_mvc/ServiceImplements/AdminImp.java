package com.nh.Neighborhoods_Helphub_mvc.ServiceImplements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nh.Neighborhoods_Helphub_mvc.Entity.users;

@Service
public class AdminImp {

	@Autowired
	RestTemplate restTemplate;
	
	
	String baseUrl="http://localhost:8082/";
	
	
	public users[] viewAllData(int page, int size) {
	    return restTemplate.getForObject(
	        baseUrl + "viewAllData?page=" + page + "&size=" + size,
	        users[].class
	    );
	}



	public void deleteData(int id) {
		restTemplate.delete(baseUrl+"deleteData/"+id);
		
	}


	public users editUser(int id) {
	  return 	restTemplate.getForObject(baseUrl + "selectUser/" + id,users.class);
		
	}


	public void saveMember(users u) {
		restTemplate.put(baseUrl + "updateData", u);
		
	}


	public users save(users u) {
	   return	restTemplate.postForObject(baseUrl +"addData", u, users.class);
		
	}


	public Long totalmember() {
		return  restTemplate.getForObject(baseUrl +"totalmember", Long.class);
		
	}


	public Long ActiveMember() {
		return restTemplate.getForObject(baseUrl + "activemember", Long.class);
		
	}


	public Long InactiveMember() {
		return restTemplate.getForObject(baseUrl + "inactivemember", Long.class);
		
	}

}
