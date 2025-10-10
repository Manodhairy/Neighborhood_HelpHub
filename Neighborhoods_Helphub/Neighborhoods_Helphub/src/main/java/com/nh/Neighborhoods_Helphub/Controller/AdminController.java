package com.nh.Neighborhoods_Helphub.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nh.Neighborhoods_Helphub.Entity.users;
import com.nh.Neighborhoods_Helphub.Service.UsersService;

@RestController
public class AdminController {

	@Autowired
	UsersService us;
	
	@GetMapping("/viewAllData")
	public List<users> viewAllData(){
	  return	us.viewAll();
	  
	}
	
	@PostMapping("/addData")
     public void addData(@RequestBody users s) {
		us.addData(s);

	}
	
	@DeleteMapping("/deleteData/{id}")
	public void deleteData(@PathVariable int id) {
		us.DeleteData(id);
	}
	
	@GetMapping("/selectUser/{id}")
	public Optional<users> selectData(@PathVariable int id) {
		Optional<users> list=us.selectData(id);
		return list;
	}
	
	@PutMapping("/updateData")
	public Object updateData(@RequestBody users s) {
		return us.update(s);
	}
	
	@GetMapping("/totalmember")
	public  long totalmember() {
	
		return us.totalMember();
	}
	
	@GetMapping("/activemember")
	public long activemember() {
		return us.ActiveMember();
	}
	
	@GetMapping("/inactivemember")
	public long inactivemember() {
		return us.inactivemember();
	}
}
