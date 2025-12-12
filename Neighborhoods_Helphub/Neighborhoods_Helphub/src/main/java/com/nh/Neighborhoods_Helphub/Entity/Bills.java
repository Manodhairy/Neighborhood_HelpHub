package com.nh.Neighborhoods_Helphub.Entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotBlank;


@Entity
public class Bills {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
    @JoinColumn(name = "user_id")
    private users user;
	@NotBlank(message = "House Rent is required")
	private String houseRent;

	@NotBlank(message = "Water Bill is required")
	private String waterBill;

	@NotBlank(message = "Electricity Bill is required")
	private String electricityBill;

	@NotBlank(message = "Maintenance Charges are required")
	private String maintenanceCharges;

	private String dueDate;
	private LocalDateTime paidDate;
	private String status;
	private String refNo;
	private String refNo1;
	private String refNo2;
	private String refNo3;
    private LocalDateTime createdAt = LocalDateTime.now();
    
    
    
    public Bills() {}



	public Bills(int id, users user, String houseRent, String waterBill, String electricityBill,
			String maintenanceCharges, String dueDate, LocalDateTime paidDate, String status, String refNo,
			String refNo1, String refNo2, String refNo3, LocalDateTime createdAt) {
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
		this.refNo = refNo;
		this.refNo1 = refNo1;
		this.refNo2 = refNo2;
		this.refNo3 = refNo3;
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



	public LocalDateTime getPaidDate() {
		return paidDate;
	}



	public void setPaidDate(LocalDateTime paidDate) {
		this.paidDate = paidDate;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public String getRefNo() {
		return refNo;
	}



	public void setRefNo(String refNo) {
		this.refNo = refNo;
	}



	public String getRefNo1() {
		return refNo1;
	}



	public void setRefNo1(String refNo1) {
		this.refNo1 = refNo1;
	}



	public String getRefNo2() {
		return refNo2;
	}



	public void setRefNo2(String refNo2) {
		this.refNo2 = refNo2;
	}



	public String getRefNo3() {
		return refNo3;
	}



	public void setRefNo3(String refNo3) {
		this.refNo3 = refNo3;
	}



	public LocalDateTime getCreatedAt() {
		return createdAt;
	}



	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}



	
	
}
