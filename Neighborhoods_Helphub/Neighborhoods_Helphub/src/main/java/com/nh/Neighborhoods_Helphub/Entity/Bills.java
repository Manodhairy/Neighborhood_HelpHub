package com.nh.Neighborhoods_Helphub.Entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Bills {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
    @JoinColumn(name = "user_id")
    private users user;
	private String houseRent;
	private String waterBill;
	private String electricityBill;
	private String maintenanceCharges;
	private String dueDate;
	private String paidDate;
	private String status;
    private LocalDateTime createdAt = LocalDateTime.now();
    
    
    
    public Bills() {}
	public Bills(int id, users user, String houseRent, String waterBill, String electricityBill,
			String maintenanceCharges, String dueDate, String paidDate, String status, LocalDateTime createdAt) {
		super();
		this.id = id;
		this.user = user;
		this.houseRent = houseRent;
		this.waterBill = waterBill;
		this.electricityBill = electricityBill;
		this.maintenanceCharges = maintenanceCharges;
		this.dueDate = dueDate;
		this.paidDate = paidDate;
		this.status = status;
		this.createdAt = createdAt;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public users getUser() {
		return user;
	}
	public void setUser(users user) {
		this.user = user;
	}
	public String getHouseRent() {
		return houseRent;
	}
	public void setHouseRent(String houseRent) {
		this.houseRent = houseRent;
	}
	public String getWaterBill() {
		return waterBill;
	}
	public void setWaterBill(String waterBill) {
		this.waterBill = waterBill;
	}
	public String getElectricityBill() {
		return electricityBill;
	}
	public void setElectricityBill(String electricityBill) {
		this.electricityBill = electricityBill;
	}
	public String getMaintenanceCharges() {
		return maintenanceCharges;
	}
	public void setMaintenanceCharges(String maintenanceCharges) {
		this.maintenanceCharges = maintenanceCharges;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public String getPaidDate() {
		return paidDate;
	}
	public void setPaidDate(String paidDate) {
		this.paidDate = paidDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public LocalDateTime getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}
    
    
    
	
}
