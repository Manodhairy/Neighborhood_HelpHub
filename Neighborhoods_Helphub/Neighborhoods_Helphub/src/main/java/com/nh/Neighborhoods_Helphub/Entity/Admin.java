package com.nh.Neighborhoods_Helphub.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
public class Admin {

	@Id
	private int id;
	
    @NotBlank(message = "Admin name is required")
    @Size(min = 3, max = 40, message = "Name must be 3–40 characters")
    private String adminName;

	 @NotBlank(message = "Email is required")
	 @Email(message = "Enter a valid email address")
	 private String adminEmail;

	 @NotBlank(message = "Password is required")
	 @Size(min = 6, max = 16, message = "Password must be 6–16 characters")
	 private String password;
	
	public Admin() {}

	public Admin(int id, String adminName, String adminEmail, String password) {
		super();
		this.id = id;
		this.adminName = adminName;
		this.adminEmail = adminEmail;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
