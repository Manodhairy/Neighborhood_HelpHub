package com.nh.Neighborhoods_Helphub_mvc.Entity;




public class NeighbourData {
	
	
	private int id;
	
	
	private users user;
	
	private String workplace;
	private String experience;
	private String message;
	private String linkedin;
	private String instagram;
	
	
	public NeighbourData() {}
	public NeighbourData(int id, users user, String workplace, String experience, String message, String linkedin,
			String instagram) {
		super();
		this.id = id;
		this.user = user;
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
	public users getUser() {
		return user;
	}
	public void setUser(users user) {
		this.user = user;
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
