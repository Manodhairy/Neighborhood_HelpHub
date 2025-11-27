package com.nh.Neighborhoods_Helphub_mvc.Entity;


public class Shop {
	
	    private int id;
	    private String shopName;
	    private String ownerName;
	    private String category;
	    private String address;
	    private String description;
	    private String contact;
	    private String imageUrl;
	    private String openTime;
	    private String closeTime;
	    
	    
	    
	    public Shop() {}
		public Shop(int id, String shopName, String ownerName, String category, String address, String description,
				String contact, String imageUrl, String openTime, String closeTime) {
			super();
			this.id = id;
			this.shopName = shopName;
			this.ownerName = ownerName;
			this.category = category;
			this.address = address;
			this.description = description;
			this.contact = contact;
			this.imageUrl = imageUrl;
			this.openTime = openTime;
			this.closeTime = closeTime;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getShopName() {
			return shopName;
		}
		public void setShopName(String shopName) {
			this.shopName = shopName;
		}
		public String getOwnerName() {
			return ownerName;
		}
		public void setOwnerName(String ownerName) {
			this.ownerName = ownerName;
		}
		public String getCategory() {
			return category;
		}
		public void setCategory(String category) {
			this.category = category;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getContact() {
			return contact;
		}
		public void setContact(String contact) {
			this.contact = contact;
		}
		public String getImageUrl() {
			return imageUrl;
		}
		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}
		public String getOpenTime() {
			return openTime;
		}
		public void setOpenTime(String openTime) {
			this.openTime = openTime;
		}
		public String getCloseTime() {
			return closeTime;
		}
		public void setCloseTime(String closeTime) {
			this.closeTime = closeTime;
		}
	    
	    
	    
	    
	    
	


}
