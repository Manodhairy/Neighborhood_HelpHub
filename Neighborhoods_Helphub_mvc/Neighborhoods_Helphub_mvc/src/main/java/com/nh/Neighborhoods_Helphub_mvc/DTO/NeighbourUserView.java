package com.nh.Neighborhoods_Helphub_mvc.DTO;

public class NeighbourUserView {

	
	private int id;
	private String fullName;
	private String email;
	private String mobile_no;
	private String flat_no;
	private String age;
	private String gender;
    private String occupation;
    private String workplace;
	private String experience;
	private String message;
	private String linkedin;
	private String instagram;
	
	public NeighbourUserView() {}

	public NeighbourUserView(String fullName, String email, String mobile_no, String flat_no,
            String age, String gender, String occupation, int id,
            String workplace, String experience, String message, 
            String linkedin, String instagram) {
			this.fullName = fullName;
			this.email = email;
			this.mobile_no = mobile_no;
			this.flat_no = flat_no;
			this.age = age;
			this.gender = gender;
			this.occupation = occupation;
			this.id = id;
			this.workplace = workplace;
			this.experience = experience;
			this.message = message;
			this.linkedin = linkedin;
			this.instagram = instagram;
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

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getWorkplace() {
		return workplace;
	}

	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public String getInstagram() {
		return instagram;
	}

	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}

	
	
	
	
}

	
	
	

