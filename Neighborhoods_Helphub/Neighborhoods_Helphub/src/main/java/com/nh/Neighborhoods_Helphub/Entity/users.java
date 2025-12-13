package com.nh.Neighborhoods_Helphub.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
public class users {

	@Id
	private int id;
	@Column(name = "full_name")
	@NotBlank(message = "Full name is required")
	@Size(min = 3, max = 40, message = "Full name must be between 3 and 40 characters")
	private String fullName;

	@NotBlank(message = "Email is required")
	@Email(message = "Enter a valid email address")
	private String email;

	@NotBlank(message = "Password is required")
	@Size(min = 6, max = 16, message = "Password must be between 6 and 16 characters")
	private String password;

	@NotBlank(message = "Mobile number is required")
	@Pattern(regexp = "^[6-9][0-9]{9}$", message = "Enter a valid 10-digit mobile number")
	private String mobile_no;

	@NotBlank(message = "Flat number is required")
	@Pattern(regexp = "^[A-Za-z0-9- ]+$", message = "Flat number must contain letters, numbers, or '-'")
	private String flat_no;

	@NotBlank(message = "Age is required")
	@Pattern(regexp = "^[0-9]{1,3}$", message = "Age must be a valid number")
	private String age;

	@NotBlank(message = "Gender is required")
	private String gender;

	@NotBlank(message = "Relation to head is required")
	private String relation_to_head;

	@NotBlank(message = "Occupation is required")
	private String occupation;

	@NotBlank(message = "Aadhar number is required")
	@Pattern(regexp = "^[0-9]{12}$", message = "Aadhar must be a 12-digit number")
	private String adhar_no;

	private String member_status;
	private String date;
	
	
	public users() {}


	public users(int id, String fullName, String email, String password, String mobile_no, String flat_no, String age,
			String gender, String relation_to_head, String occupation, String adhar_no, String member_status,
			String date) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.email = email;
		this.password = password;
		this.mobile_no = mobile_no;
		this.flat_no = flat_no;
		this.age = age;
		this.gender = gender;
		this.relation_to_head = relation_to_head;
		this.occupation = occupation;
		this.adhar_no = adhar_no;
		this.member_status = member_status;
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getMobile_no() {
		return mobile_no;
	}


	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}


	public String getFlat_no() {
		return flat_no;
	}


	public void setFlat_no(String flat_no) {
		this.flat_no = flat_no;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getRelation_to_head() {
		return relation_to_head;
	}


	public void setRelation_to_head(String relation_to_head) {
		this.relation_to_head = relation_to_head;
	}


	public String getOccupation() {
		return occupation;
	}


	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}


	public String getAdhar_no() {
		return adhar_no;
	}


	public void setAdhar_no(String adhar_no) {
		this.adhar_no = adhar_no;
	}


	public String getMember_status() {
		return member_status;
	}


	public void setMember_status(String member_status) {
		this.member_status = member_status;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	


	
	
	
	
	
	

}
