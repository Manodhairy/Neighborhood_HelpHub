package com.nh.Neighborhoods_Helphub.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SecurityGuard {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String guardName;
	private String contact;
	private String shift;
	private String assignedArea;
	private String Status;
	
	
	public SecurityGuard() {}
	public SecurityGuard(int id, String guardName, String contact, String shift, String assignedArea, String status) {
		super();
		this.id = id;
		this.guardName = guardName;
		this.contact = contact;
		this.shift = shift;
		this.assignedArea = assignedArea;
		Status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGuardName() {
		return guardName;
	}
	public void setGuardName(String guardName) {
		this.guardName = guardName;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getShift() {
		return shift;
	}
	public void setShift(String shift) {
		this.shift = shift;
	}
	public String getAssignedArea() {
		return assignedArea;
	}
	public void setAssignedArea(String assignedArea) {
		this.assignedArea = assignedArea;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
	
	

}
